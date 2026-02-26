// ignore_for_file: unused_element, unnecessary_cast

import 'status_response2.dart';

/// Result data returned by getCapacityCommitment.
class GetCapacityCommitmentResult2 {
  /// The end of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  final String commitmentEndTime;

  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  final String commitmentStartTime;

  /// For FAILED commitment plan, provides the reason of failure.
  final StatusResponse2 failureStatus;

  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.
  final bool multiRegionAuxiliary;

  /// The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments/123` The commitment_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final String name;

  /// Capacity commitment commitment plan.
  final String plan;

  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
  final String renewalPlan;

  /// Number of slots in this commitment.
  final String slotCount;

  /// State of the commitment.
  final String state;

  GetCapacityCommitmentResult2({
    required this.commitmentEndTime,
    required this.commitmentStartTime,
    required this.failureStatus,
    required this.multiRegionAuxiliary,
    required this.name,
    required this.plan,
    required this.renewalPlan,
    required this.slotCount,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitmentEndTime'] = commitmentEndTime;
    map['commitmentStartTime'] = commitmentStartTime;
    map['failureStatus'] = failureStatus.toMap();
    map['multiRegionAuxiliary'] = multiRegionAuxiliary;
    map['name'] = name;
    map['plan'] = plan;
    map['renewalPlan'] = renewalPlan;
    map['slotCount'] = slotCount;
    map['state'] = state;
    return map;
  }

  factory GetCapacityCommitmentResult2.fromMap(Map<String, dynamic> map) {
    return GetCapacityCommitmentResult2(
      commitmentEndTime: map['commitmentEndTime'] as String,
      commitmentStartTime: map['commitmentStartTime'] as String,
      failureStatus: StatusResponse2.fromMap(
          (map['failureStatus'] as Map).cast<String, dynamic>()),
      multiRegionAuxiliary: map['multiRegionAuxiliary'] as bool,
      name: map['name'] as String,
      plan: map['plan'] as String,
      renewalPlan: map['renewalPlan'] as String,
      slotCount: map['slotCount'] as String,
      state: map['state'] as String,
    );
  }
}
