// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_resiliency_policy_configuration.dart';

/// {@template pulumi_app_dapr_component_resiliency_policy_args_doc}
/// The set of arguments for DaprComponentResiliencyPolicy.
/// {@endtemplate}
/// {@macro pulumi_app_dapr_component_resiliency_policy_args_doc}
class DaprComponentResiliencyPolicyArgs {
  /// Name of the Dapr Component.
  final pulumi.Input<String> componentName;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The optional inbound component resiliency policy configuration
  final pulumi.Input<DaprComponentResiliencyPolicyConfiguration>? inboundPolicy;
  /// Name of the Dapr Component Resiliency Policy.
  final pulumi.Input<String>? name;
  /// The optional outbound component resiliency policy configuration
  final pulumi.Input<DaprComponentResiliencyPolicyConfiguration>? outboundPolicy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DaprComponentResiliencyPolicyArgs].
  /// [componentName] Name of the Dapr Component.
  /// [environmentName] Name of the Managed Environment.
  /// [inboundPolicy] The optional inbound component resiliency policy configuration
  /// [name] Name of the Dapr Component Resiliency Policy.
  /// [outboundPolicy] The optional outbound component resiliency policy configuration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DaprComponentResiliencyPolicyArgs({
    required pulumi.Output<String> componentName,
    required pulumi.Output<String> environmentName,
    pulumi.Output<DaprComponentResiliencyPolicyConfiguration>? inboundPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<DaprComponentResiliencyPolicyConfiguration>? outboundPolicy,
    required pulumi.Output<String> resourceGroupName,
  }) :
      componentName = pulumi.Input.asInput<String>(componentName),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      inboundPolicy = pulumi.Input.asOptionalInput<DaprComponentResiliencyPolicyConfiguration>(inboundPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundPolicy = pulumi.Input.asOptionalInput<DaprComponentResiliencyPolicyConfiguration>(outboundPolicy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'environmentName': environmentName,
      'inboundPolicy': ?pulumi.Input.mapOptionalInputValue<DaprComponentResiliencyPolicyConfiguration, Map<String, dynamic>>(inboundPolicy, (value) => value.toMap()),
      'name': ?name,
      'outboundPolicy': ?pulumi.Input.mapOptionalInputValue<DaprComponentResiliencyPolicyConfiguration, Map<String, dynamic>>(outboundPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DaprComponentResiliencyPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyArgs(
      componentName: pulumi.Output.create<String>(map['componentName'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      inboundPolicy: map['inboundPolicy'] == null ? null : pulumi.Output.create<DaprComponentResiliencyPolicyConfiguration>(DaprComponentResiliencyPolicyConfiguration.fromMap((map['inboundPolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundPolicy: map['outboundPolicy'] == null ? null : pulumi.Output.create<DaprComponentResiliencyPolicyConfiguration>(DaprComponentResiliencyPolicyConfiguration.fromMap((map['outboundPolicy'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

