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
  final pulumi.Input<DaprComponentResiliencyPolicyConfiguration>?
  outboundPolicy;

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
    required this.componentName,
    required this.environmentName,
    this.inboundPolicy,
    this.name,
    this.outboundPolicy,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'environmentName': environmentName,
      'inboundPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DaprComponentResiliencyPolicyConfiguration,
            Map<String, dynamic>
          >(inboundPolicy, (value) => value.toMap()),
      'name': ?name,
      'outboundPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DaprComponentResiliencyPolicyConfiguration,
            Map<String, dynamic>
          >(outboundPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DaprComponentResiliencyPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyArgs(
      componentName: pulumi.Input.fromValue(map['componentName'] as String),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      inboundPolicy: (() {
        final guardedValue = map['inboundPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DaprComponentResiliencyPolicyConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outboundPolicy: (() {
        final guardedValue = map['outboundPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DaprComponentResiliencyPolicyConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
