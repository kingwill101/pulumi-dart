// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_build_service_build_args_doc}
/// Arguments for getBuildServiceBuild.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_build_service_build_args_doc}
class GetBuildServiceBuildArgs {
  /// The name of the build resource.
  final pulumi.Input<String> buildName;
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetBuildServiceBuildArgs].
  /// [buildName] The name of the build resource.
  /// [buildServiceName] The name of the build service resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const GetBuildServiceBuildArgs({
    required this.buildName,
    required this.buildServiceName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': buildName,
      'buildServiceName': buildServiceName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetBuildServiceBuildArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildServiceBuildArgs(
      buildName: pulumi.Input.fromValue(map['buildName'] as String),
      buildServiceName: pulumi.Input.fromValue(map['buildServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
