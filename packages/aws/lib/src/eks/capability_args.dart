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
    required String capabilityName,
    required String clusterName,
    CapabilityConfiguration? configuration,
    required String deletePropagationPolicy,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
    CapabilityTimeouts? timeouts,
    required String type,
  }) : capabilityName = pulumi.Input.asInput<String>(capabilityName),
       clusterName = pulumi.Input.asInput<String>(clusterName),
       configuration = pulumi.Input.asOptionalInput<CapabilityConfiguration>(
         configuration,
       ),
       deletePropagationPolicy = pulumi.Input.asInput<String>(
         deletePropagationPolicy,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<CapabilityTimeouts>(timeouts),
       type = pulumi.Input.asInput<String>(type);

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
      capabilityName: map['capabilityName'] as String,
      clusterName: map['clusterName'] as String,
      configuration: map['configuration'] == null
          ? null
          : CapabilityConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>(),
            ),
      deletePropagationPolicy: map['deletePropagationPolicy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : CapabilityTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] as String,
    );
  }
}
