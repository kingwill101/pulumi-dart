// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration.dart';
import 'capability_timeouts.dart';

/// {@template pulumi_eks_capability_capability_args_doc}
/// The set of arguments for Capability.
/// {@endtemplate}
/// {@macro pulumi_eks_capability_capability_args_doc}
class CapabilityArgs {
  /// Name of the capability. Must be unique within the cluster.
  final pulumi.Input<String> capabilityName;

  /// Name of the EKS cluster.
  final pulumi.Input<String> clusterName;

  /// Configuration for the capability. See `configuration` below.
  final pulumi.Input<CapabilityConfiguration>? configuration;

  /// Delete propagation policy for the capability. Valid values: `RETAIN`.
  final pulumi.Input<String> deletePropagationPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the IAM role to associate with the capability.
  final pulumi.Input<String> roleArn;

  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CapabilityTimeouts>? timeouts;

  /// Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  final pulumi.Input<String> type;

  /// Creates a new [CapabilityArgs].
  /// [capabilityName] Name of the capability. Must be unique within the cluster.
  /// [clusterName] Name of the EKS cluster.
  /// [configuration] Configuration for the capability. See `configuration` below.
  /// [deletePropagationPolicy] Delete propagation policy for the capability. Valid values: `RETAIN`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role to associate with the capability.
  /// [tags] Key-value map of resource tags.
  /// [timeouts] Optional.
  /// [type] Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  CapabilityArgs({
    required this.capabilityName,
    required this.clusterName,
    this.configuration,
    required this.deletePropagationPolicy,
    this.region,
    required this.roleArn,
    this.tags,
    this.timeouts,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityName': capabilityName,
      'clusterName': clusterName,
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            CapabilityConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'deletePropagationPolicy': deletePropagationPolicy,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            CapabilityTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'type': type,
    };
  }

  factory CapabilityArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityArgs(
      capabilityName: pulumi.Input.fromValue(map['capabilityName'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapabilityConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deletePropagationPolicy: pulumi.Input.fromValue(
        map['deletePropagationPolicy'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapabilityTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
