// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_service_agent_pool_properties.dart';

/// {@template pulumi_appplatform_build_service_agent_pool_args_doc}
/// The set of arguments for BuildServiceAgentPool.
/// {@endtemplate}
/// {@macro pulumi_appplatform_build_service_agent_pool_args_doc}
class BuildServiceAgentPoolArgs {
  /// The name of the build service agent pool resource.
  final pulumi.Input<String>? agentPoolName;

  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;

  /// build service agent pool properties
  final pulumi.Input<BuildServiceAgentPoolProperties>? properties;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [BuildServiceAgentPoolArgs].
  /// [agentPoolName] The name of the build service agent pool resource.
  /// [buildServiceName] The name of the build service resource.
  /// [properties] build service agent pool properties
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  BuildServiceAgentPoolArgs({
    this.agentPoolName,
    required this.buildServiceName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': ?agentPoolName,
      'buildServiceName': buildServiceName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            BuildServiceAgentPoolProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory BuildServiceAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return BuildServiceAgentPoolArgs(
      agentPoolName: (() {
        final guardedValue = map['agentPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      buildServiceName: pulumi.Input.fromValue(
        map['buildServiceName'] as String,
      ),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BuildServiceAgentPoolProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
