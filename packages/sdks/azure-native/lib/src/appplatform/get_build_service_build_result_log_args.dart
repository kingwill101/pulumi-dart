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
    required this.buildName,
    required this.buildResultName,
    required this.buildServiceName,
    required this.resourceGroupName,
    required this.serviceName,
  });

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
      buildName: (map['buildName'] as String).input(),
      buildResultName: (map['buildResultName'] as String).input(),
      buildServiceName: (map['buildServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

