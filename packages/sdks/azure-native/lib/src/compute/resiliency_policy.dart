// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_zone_rebalancing_policy.dart';
import 'resilient_vmcreation_policy.dart';
import 'resilient_vmdeletion_policy.dart';

/// Describes an resiliency policy - AutomaticZoneRebalancingPolicy, ResilientVMCreationPolicy, ResilientVMDeletionPolicy and OperationRecoverySettings (version &gt; 2025-11-01).
class ResiliencyPolicy {
  /// The configuration parameters used while performing automatic AZ balancing.
  final pulumi.Input<AutomaticZoneRebalancingPolicy?>? automaticZoneRebalancingPolicy;
  /// The configuration parameters used while performing resilient VM creation.
  final pulumi.Input<ResilientVMCreationPolicy?>? resilientVMCreationPolicy;
  /// The configuration parameters used while performing resilient VM deletion.
  final pulumi.Input<ResilientVMDeletionPolicy?>? resilientVMDeletionPolicy;

  /// Creates a new [ResiliencyPolicy].
  /// [automaticZoneRebalancingPolicy] The configuration parameters used while performing automatic AZ balancing.
  /// [resilientVMCreationPolicy] The configuration parameters used while performing resilient VM creation.
  /// [resilientVMDeletionPolicy] The configuration parameters used while performing resilient VM deletion.
  const ResiliencyPolicy({
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
      automaticZoneRebalancingPolicy: (() { final guardedValue = map['automaticZoneRebalancingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticZoneRebalancingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resilientVMCreationPolicy: (() { final guardedValue = map['resilientVMCreationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResilientVMCreationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resilientVMDeletionPolicy: (() { final guardedValue = map['resilientVMDeletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResilientVMDeletionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
