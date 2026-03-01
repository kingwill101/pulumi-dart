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
    required pulumi.Output<String> apiName,
    required pulumi.Output<String> definitionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> versionName,
    required pulumi.Output<String> workspaceName,
  }) :
      apiName = pulumi.Input.asInput<String>(apiName),
      definitionName = pulumi.Input.asInput<String>(definitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      versionName = pulumi.Input.asInput<String>(versionName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      apiName: pulumi.Output.create<String>(map['apiName'] as String),
      definitionName: pulumi.Output.create<String>(map['definitionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      versionName: pulumi.Output.create<String>(map['versionName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

