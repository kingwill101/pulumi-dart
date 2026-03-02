// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_zone_rebalancing_policy.dart';
import 'resilient_vmcreation_policy.dart';
import 'resilient_vmdeletion_policy.dart';

/// Describes an resiliency policy - AutomaticZoneRebalancingPolicy, ResilientVMCreationPolicy and/or ResilientVMDeletionPolicy.
class ResiliencyPolicy {
  /// The configuration parameters used while performing automatic AZ balancing.
  final pulumi.Input<AutomaticZoneRebalancingPolicy>? automaticZoneRebalancingPolicy;
  /// The configuration parameters used while performing resilient VM creation.
  final pulumi.Input<ResilientVMCreationPolicy>? resilientVMCreationPolicy;
  /// The configuration parameters used while performing resilient VM deletion.
  final pulumi.Input<ResilientVMDeletionPolicy>? resilientVMDeletionPolicy;

  /// Creates a new [ResiliencyPolicy].
  /// [automaticZoneRebalancingPolicy] The configuration parameters used while performing automatic AZ balancing.
  /// [resilientVMCreationPolicy] The configuration parameters used while performing resilient VM creation.
  /// [resilientVMDeletionPolicy] The configuration parameters used while performing resilient VM deletion.
  ResiliencyPolicy({
    this.automaticZoneRebalancingPolicy,
    this.resilientVMCreationPolicy,
    this.resilientVMDeletionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticZoneRebalancingPolicy': ?pulumi.Input.mapOptionalInputValue<AutomaticZoneRebalancingPolicy, Map<String, dynamic>>(automaticZoneRebalancingPolicy, (value) => value.toMap()),
      'resilientVMCreationPolicy': ?pulumi.Input.mapOptionalInputValue<ResilientVMCreationPolicy, Map<String, dynamic>>(resilientVMCreationPolicy, (value) => value.toMap()),
      'resilientVMDeletionPolicy': ?pulumi.Input.mapOptionalInputValue<ResilientVMDeletionPolicy, Map<String, dynamic>>(resilientVMDeletionPolicy, (value) => value.toMap()),
    };
  }

  factory ResiliencyPolicy.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicy(
      automaticZoneRebalancingPolicy: map['automaticZoneRebalancingPolicy'] == null ? null : (AutomaticZoneRebalancingPolicy.fromMap((map['automaticZoneRebalancingPolicy'] as Map).cast<String, dynamic>())).input(),
      resilientVMCreationPolicy: map['resilientVMCreationPolicy'] == null ? null : (ResilientVMCreationPolicy.fromMap((map['resilientVMCreationPolicy'] as Map).cast<String, dynamic>())).input(),
      resilientVMDeletionPolicy: map['resilientVMDeletionPolicy'] == null ? null : (ResilientVMDeletionPolicy.fromMap((map['resilientVMDeletionPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

