// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration.dart';
import 'capability_timeouts.dart';

/// Input properties used for looking up and filtering Capability resources.
class CapabilityState {
  /// ARN of the capability.
  final pulumi.Input<String>? arn;
  /// Name of the capability. Must be unique within the cluster.
  final pulumi.Input<String>? capabilityName;
  /// Name of the EKS cluster.
  final pulumi.Input<String>? clusterName;
  /// Configuration for the capability. See `configuration` below.
  final pulumi.Input<CapabilityConfiguration>? configuration;
  /// Delete propagation policy for the capability. Valid values: `RETAIN`.
  final pulumi.Input<String>? deletePropagationPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role to associate with the capability.
  final pulumi.Input<String>? roleArn;
  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CapabilityTimeouts>? timeouts;
  /// Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  final pulumi.Input<String>? type;
  /// Version of the capability.
  final pulumi.Input<String>? version;

  /// Creates a new [CapabilityState].
  /// [arn] ARN of the capability.
  /// [capabilityName] Name of the capability. Must be unique within the cluster.
  /// [clusterName] Name of the EKS cluster.
  /// [configuration] Configuration for the capability. See `configuration` below.
  /// [deletePropagationPolicy] Delete propagation policy for the capability. Valid values: `RETAIN`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role to associate with the capability.
  /// [tags] Key-value map of resource tags.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [type] Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  /// [version] Version of the capability.
  CapabilityState({
    this.arn,
    this.capabilityName,
    this.clusterName,
    this.configuration,
    this.deletePropagationPolicy,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capabilityName': ?capabilityName,
      'clusterName': ?clusterName,
      'configuration': ?pulumi.Input.mapOptionalInputValue<CapabilityConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'deletePropagationPolicy': ?deletePropagationPolicy,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapabilityTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'version': ?version,
    };
  }

  factory CapabilityState.fromMap(Map<String, dynamic> map) {
    return CapabilityState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      capabilityName: map['capabilityName'] == null ? null : (map['capabilityName'] as String).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      configuration: map['configuration'] == null ? null : (CapabilityConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      deletePropagationPolicy: map['deletePropagationPolicy'] == null ? null : (map['deletePropagationPolicy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (CapabilityTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

