// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_tenant_access_secrets_args_doc}
/// Arguments for listTenantAccessSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_tenant_access_secrets_args_doc}
class ListTenantAccessSecretsArgs {
  /// The identifier of the Access configuration.
  final pulumi.Input<String> accessName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListTenantAccessSecretsArgs].
  /// [accessName] The identifier of the Access configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const ListTenantAccessSecretsArgs({
    required this.accessName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessName': accessName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListTenantAccessSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListTenantAccessSecretsArgs(
      accessName: pulumi.Input.fromValue(map['accessName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
