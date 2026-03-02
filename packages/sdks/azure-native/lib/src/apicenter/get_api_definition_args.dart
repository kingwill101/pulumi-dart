// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apicenter_get_api_definition_args_doc}
/// Arguments for getApiDefinition.
/// {@endtemplate}
/// {@macro pulumi_apicenter_get_api_definition_args_doc}
class GetApiDefinitionArgs {
  /// The name of the API.
  final pulumi.Input<String> apiName;
  /// The name of the API definition.
  final pulumi.Input<String> definitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// The name of the API version.
  final pulumi.Input<String> versionName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetApiDefinitionArgs].
  /// [apiName] The name of the API.
  /// [definitionName] The name of the API definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [versionName] The name of the API version.
  /// [workspaceName] The name of the workspace.
  GetApiDefinitionArgs({
    required this.apiName,
    required this.definitionName,
    required this.resourceGroupName,
    required this.serviceName,
    required this.versionName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'definitionName': definitionName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'versionName': versionName,
      'workspaceName': workspaceName,
    };
  }

  factory GetApiDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetApiDefinitionArgs(
      apiName: (map['apiName'] as String).input(),
      definitionName: (map['definitionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      versionName: (map['versionName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

