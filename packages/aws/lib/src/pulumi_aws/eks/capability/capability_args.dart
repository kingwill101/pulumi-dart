// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../capability_configuration/capability_configuration.dart';
import '../capability_timeouts/capability_timeouts.dart';

/// The set of arguments for Capability.
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
    final map = <String, dynamic>{};
    map['capabilityName'] = capabilityName;
    map['clusterName'] = clusterName;
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          CapabilityConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    map['deletePropagationPolicy'] = deletePropagationPolicy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<CapabilityTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory CapabilityArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityArgs(
      capabilityName: pulumi.Input.asInput<String>(map['capabilityName']),
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      configuration: pulumi.Input.asOptionalInput<CapabilityConfiguration>(
          map['configuration']),
      deletePropagationPolicy:
          pulumi.Input.asInput<String>(map['deletePropagationPolicy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<CapabilityTimeouts>(map['timeouts']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
