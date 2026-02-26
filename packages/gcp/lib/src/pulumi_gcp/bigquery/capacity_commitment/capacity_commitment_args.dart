// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CapacityCommitment.
class CapacityCommitmentArgs {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
  /// empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
  /// cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split
  /// or merged.
  final Input<String>? capacityCommitmentId;

  /// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  final Input<String>? edition;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  final Input<String>? enforceSingleAdminProjectPerOrg;

  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  final Input<String>? location;

  /// Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  final Input<String> plan;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  final Input<String>? renewalPlan;

  /// Number of slots in this commitment.
  final Input<int> slotCount;

  CapacityCommitmentArgs({
    this.capacityCommitmentId,
    this.edition,
    this.enforceSingleAdminProjectPerOrg,
    this.location,
    required this.plan,
    this.project,
    this.renewalPlan,
    required this.slotCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityCommitmentIdValue = capacityCommitmentId;
    if (capacityCommitmentIdValue != null) {
      map['capacityCommitmentId'] = capacityCommitmentIdValue;
    }
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = editionValue;
    }
    final enforceSingleAdminProjectPerOrgValue =
        enforceSingleAdminProjectPerOrg;
    if (enforceSingleAdminProjectPerOrgValue != null) {
      map['enforceSingleAdminProjectPerOrg'] =
          enforceSingleAdminProjectPerOrgValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['plan'] = plan;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final renewalPlanValue = renewalPlan;
    if (renewalPlanValue != null) {
      map['renewalPlan'] = renewalPlanValue;
    }
    map['slotCount'] = slotCount;
    return map;
  }

  factory CapacityCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return CapacityCommitmentArgs(
      capacityCommitmentId:
          Input.asOptionalInput<String>(map['capacityCommitmentId']),
      edition: Input.asOptionalInput<String>(map['edition']),
      enforceSingleAdminProjectPerOrg:
          Input.asOptionalInput<String>(map['enforceSingleAdminProjectPerOrg']),
      location: Input.asOptionalInput<String>(map['location']),
      plan: Input.asInput<String>(map['plan']),
      project: Input.asOptionalInput<String>(map['project']),
      renewalPlan: Input.asOptionalInput<String>(map['renewalPlan']),
      slotCount: Input.asInput<int>(map['slotCount']),
    );
  }
}
