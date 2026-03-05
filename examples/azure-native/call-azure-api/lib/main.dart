import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/authorization.dart' as authorization;
import 'package:pulumi_azure_native/containerregistry.dart'
    as containerregistry;
import 'package:pulumi_azure_native/resources.dart' as resources;

Future<String> getRoleIdByName(String roleName, {String? scope}) async {
  final clientConfig = await authorization.getClientConfig();
  final tokenResult = await authorization.getClientToken(
    authorization.GetClientTokenArgs(),
  );

  final effectiveScope =
      scope ?? '/subscriptions/${clientConfig.subscriptionId}';
  final uri = Uri.https(
    'management.azure.com',
    '$effectiveScope/providers/Microsoft.Authorization/roleDefinitions',
    <String, String>{
      'api-version': '2022-04-01',
      r'$filter': "roleName eq '$roleName'",
    },
  );

  final response = await http.get(
    uri,
    headers: <String, String>{'Authorization': 'Bearer ${tokenResult.token}'},
  );

  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw Exception(
      'Failed to list role definitions (status ${response.statusCode}): ${response.body}',
    );
  }

  final decoded = jsonDecode(response.body);
  if (decoded is! Map<String, dynamic>) {
    throw Exception('Unexpected response payload for role definitions');
  }

  final values = decoded['value'];
  if (values is! List) {
    throw Exception('Role definitions response did not contain a list');
  }

  final matchingRoles = values.whereType<Map<String, dynamic>>().toList();
  if (matchingRoles.isEmpty) {
    throw Exception('Role "$roleName" not found at scope "$effectiveScope"');
  }
  if (matchingRoles.length > 1) {
    throw Exception(
      'Too many roles "$roleName" at scope "$effectiveScope": ${matchingRoles.length}',
    );
  }

  final roleId = matchingRoles.first['id'];
  if (roleId is! String || roleId.isEmpty) {
    throw Exception('Role "$roleName" response missing an id');
  }
  return roleId;
}

class AzureNativeCallAzureApiStack extends pulumi.Stack {
  AzureNativeCallAzureApiStack() : super() {
    final resourceGroup = resources.ResourceGroup('registryrg');

    final registry = containerregistry.Registry(
      'registry',
      args: containerregistry.RegistryArgs(
        resourceGroupName: resourceGroup.name,
        sku: containerregistry.Sku(name: 'Basic'.output()).output(),
        adminUserEnabled: true.output(),
      ),
    );

    final currentPrincipalId = pulumi
        .output(authorization.getClientConfig())
        .apply<String>((config) => config.objectId);

    final acrPullRoleId = registry.id.apply<String>(
      (scope) => getRoleIdByName('AcrPull', scope: scope),
    );

    final grantPull = authorization.RoleAssignment(
      'access-from-cluster',
      args: authorization.RoleAssignmentArgs(
        principalId: currentPrincipalId,
        principalType: authorization
            .PrincipalType
            .valueServicePrincipal
            .wireValue
            .output(),
        roleDefinitionId: acrPullRoleId,
        scope: registry.id,
      ),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'registryId': registry.id,
      'roleAssignmentId': grantPull.id,
    });
  }
}
