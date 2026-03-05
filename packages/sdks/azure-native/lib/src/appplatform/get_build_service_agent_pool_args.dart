// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_build_service_agent_pool_args_doc}
/// Arguments for getBuildServiceAgentPool.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_build_service_agent_pool_args_doc}
class GetBuildServiceAgentPoolArgs {
  /// The name of the build service agent pool resource.
  final pulumi.Input<String> agentPoolName;
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetBuildServiceAgentPoolArgs].
  /// [agentPoolName] The name of the build service agent pool resource.
  /// [buildServiceName] The name of the build service resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetBuildServiceAgentPoolArgs({
    required this.agentPoolName,
    required this.buildServiceName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': agentPoolName,
      'buildServiceName': buildServiceName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetBuildServiceAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildServiceAgentPoolArgs(
      agentPoolName: pulumi.Input.fromValue(map['agentPoolName'] as String),
      buildServiceName: pulumi.Input.fromValue(map['buildServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

