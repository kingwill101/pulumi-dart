// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_build_service_build_result_log_args_doc}
/// Arguments for getBuildServiceBuildResultLog.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_build_service_build_result_log_args_doc}
class GetBuildServiceBuildResultLogArgs {
  /// The name of the build resource.
  final pulumi.Input<String> buildName;
  /// The name of the build result resource.
  final pulumi.Input<String> buildResultName;
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetBuildServiceBuildResultLogArgs].
  /// [buildName] The name of the build resource.
  /// [buildResultName] The name of the build result resource.
  /// [buildServiceName] The name of the build service resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetBuildServiceBuildResultLogArgs({
    required pulumi.Output<String> buildName,
    required pulumi.Output<String> buildResultName,
    required pulumi.Output<String> buildServiceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      buildName = pulumi.Input.asInput<String>(buildName),
      buildResultName = pulumi.Input.asInput<String>(buildResultName),
      buildServiceName = pulumi.Input.asInput<String>(buildServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': buildName,
      'buildResultName': buildResultName,
      'buildServiceName': buildServiceName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetBuildServiceBuildResultLogArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildServiceBuildResultLogArgs(
      buildName: pulumi.Output.create<String>(map['buildName'] as String),
      buildResultName: pulumi.Output.create<String>(map['buildResultName'] as String),
      buildServiceName: pulumi.Output.create<String>(map['buildServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

