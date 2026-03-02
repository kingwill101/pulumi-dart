// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_zone_rebalancing_policy_response.dart';
import 'resilient_vmcreation_policy_response.dart';
import 'resilient_vmdeletion_policy_response.dart';

/// Describes an resiliency policy - AutomaticZoneRebalancingPolicy, ResilientVMCreationPolicy and/or ResilientVMDeletionPolicy.
class ResiliencyPolicyResponse {
  /// The configuration parameters used while performing automatic AZ balancing.
  final pulumi.Input<AutomaticZoneRebalancingPolicyResponse>? automaticZoneRebalancingPolicy;
  /// The configuration parameters used while performing resilient VM creation.
  final pulumi.Input<ResilientVMCreationPolicyResponse>? resilientVMCreationPolicy;
  /// The configuration parameters used while performing resilient VM deletion.
  final pulumi.Input<ResilientVMDeletionPolicyResponse>? resilientVMDeletionPolicy;

  /// Creates a new [ResiliencyPolicyResponse].
  /// [automaticZoneRebalancingPolicy] The configuration parameters used while performing automatic AZ balancing.
  /// [resilientVMCreationPolicy] The configuration parameters used while performing resilient VM creation.
  /// [resilientVMDeletionPolicy] The configuration parameters used while performing resilient VM deletion.
  ResiliencyPolicyResponse({
    this.automaticZoneRebalancingPolicy,
    this.resilientVMCreationPolicy,
    this.resilientVMDeletionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticZoneRebalancingPolicy': ?pulumi.Input.mapOptionalInputValue<AutomaticZoneRebalancingPolicyResponse, Map<String, dynamic>>(automaticZoneRebalancingPolicy, (value) => value.toMap()),
      'resilientVMCreationPolicy': ?pulumi.Input.mapOptionalInputValue<ResilientVMCreationPolicyResponse, Map<String, dynamic>>(resilientVMCreationPolicy, (value) => value.toMap()),
      'resilientVMDeletionPolicy': ?pulumi.Input.mapOptionalInputValue<ResilientVMDeletionPolicyResponse, Map<String, dynamic>>(resilientVMDeletionPolicy, (value) => value.toMap()),
    };
  }

  factory ResiliencyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResiliencyPolicyResponse(
      automaticZoneRebalancingPolicy: map['automaticZoneRebalancingPolicy'] == null ? null : (AutomaticZoneRebalancingPolicyResponse.fromMap((map['automaticZoneRebalancingPolicy'] as Map).cast<String, dynamic>())).input(),
      resilientVMCreationPolicy: map['resilientVMCreationPolicy'] == null ? null : (ResilientVMCreationPolicyResponse.fromMap((map['resilientVMCreationPolicy'] as Map).cast<String, dynamic>())).input(),
      resilientVMDeletionPolicy: map['resilientVMDeletionPolicy'] == null ? null : (ResilientVMDeletionPolicyResponse.fromMap((map['resilientVMDeletionPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

