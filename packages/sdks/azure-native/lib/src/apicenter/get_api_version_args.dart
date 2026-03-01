// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apicenter_get_api_version_args_doc}
/// Arguments for getApiVersion.
/// {@endtemplate}
/// {@macro pulumi_apicenter_get_api_version_args_doc}
class GetApiVersionArgs {
  /// The name of the API.
  final pulumi.Input<String> apiName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// The name of the API version.
  final pulumi.Input<String> versionName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetApiVersionArgs].
  /// [apiName] The name of the API.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [versionName] The name of the API version.
  /// [workspaceName] The name of the workspace.
  GetApiVersionArgs({
    required pulumi.Output<String> apiName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> versionName,
    required pulumi.Output<String> workspaceName,
  }) :
      apiName = pulumi.Input.asInput<String>(apiName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      versionName = pulumi.Input.asInput<String>(versionName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'versionName': versionName,
      'workspaceName': workspaceName,
    };
  }

  factory GetApiVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionArgs(
      apiName: pulumi.Output.create<String>(map['apiName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      versionName: pulumi.Output.create<String>(map['versionName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

