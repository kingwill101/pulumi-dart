// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_build_service_builder_args_doc}
/// Arguments for getBuildServiceBuilder.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_build_service_builder_args_doc}
class GetBuildServiceBuilderArgs {
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// The name of the builder resource.
  final pulumi.Input<String> builderName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetBuildServiceBuilderArgs].
  /// [buildServiceName] The name of the build service resource.
  /// [builderName] The name of the builder resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetBuildServiceBuilderArgs({
    required pulumi.Output<String> buildServiceName,
    required pulumi.Output<String> builderName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      buildServiceName = pulumi.Input.asInput<String>(buildServiceName),
      builderName = pulumi.Input.asInput<String>(builderName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildServiceName': buildServiceName,
      'builderName': builderName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetBuildServiceBuilderArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildServiceBuilderArgs(
      buildServiceName: pulumi.Output.create<String>(map['buildServiceName'] as String),
      builderName: pulumi.Output.create<String>(map['builderName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

