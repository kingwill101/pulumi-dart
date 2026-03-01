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
  GetBuildServiceBuildArgs({
    required pulumi.Output<String> buildName,
    required pulumi.Output<String> buildServiceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      buildName = pulumi.Input.asInput<String>(buildName),
      buildServiceName = pulumi.Input.asInput<String>(buildServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      buildName: pulumi.Output.create<String>(map['buildName'] as String),
      buildServiceName: pulumi.Output.create<String>(map['buildServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

