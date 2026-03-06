// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_list_build_service_builder_deployments_args_doc}
/// Arguments for listBuildServiceBuilderDeployments.
/// {@endtemplate}
/// {@macro pulumi_appplatform_list_build_service_builder_deployments_args_doc}
class ListBuildServiceBuilderDeploymentsArgs {
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// The name of the builder resource.
  final pulumi.Input<String> builderName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListBuildServiceBuilderDeploymentsArgs].
  /// [buildServiceName] The name of the build service resource.
  /// [builderName] The name of the builder resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const ListBuildServiceBuilderDeploymentsArgs({
    required this.buildServiceName,
    required this.builderName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildServiceName': buildServiceName,
      'builderName': builderName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListBuildServiceBuilderDeploymentsArgs.fromMap(Map<String, dynamic> map) {
    return ListBuildServiceBuilderDeploymentsArgs(
      buildServiceName: pulumi.Input.fromValue(map['buildServiceName'] as String),
      builderName: pulumi.Input.fromValue(map['builderName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

