// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../capability_configuration/capability_configuration.dart';
import '../capability_timeouts/capability_timeouts.dart';

/// The set of arguments for Capability.
class CapabilityArgs {
  /// Name of the capability. Must be unique within the cluster.
  final Input<String> capabilityName;

  /// Name of the EKS cluster.
  final Input<String> clusterName;

  /// Configuration for the capability. See <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> below.
  final Input<CapabilityConfiguration>? configuration;

  /// Delete propagation policy for the capability. Valid values: `RETAIN`.
  final Input<String> deletePropagationPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM role to associate with the capability.
  final Input<String> roleArn;

  /// Key-value map of resource tags.
  final Input<Map<String, String>>? tags;
  final Input<CapabilityTimeouts>? timeouts;

  /// Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  final Input<String> type;

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
      map['configuration'] = Input.mapOptionalInputValue<
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
      map['timeouts'] =
          Input.mapOptionalInputValue<CapabilityTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory CapabilityArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityArgs(
      capabilityName: Input.asInput<String>(map['capabilityName']),
      clusterName: Input.asInput<String>(map['clusterName']),
      configuration:
          Input.asOptionalInput<CapabilityConfiguration>(map['configuration']),
      deletePropagationPolicy:
          Input.asInput<String>(map['deletePropagationPolicy']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<CapabilityTimeouts>(map['timeouts']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
