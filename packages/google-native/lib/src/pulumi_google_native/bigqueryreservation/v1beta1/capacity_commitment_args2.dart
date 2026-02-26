// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'capacity_commitment_plan2.dart';
import 'capacity_commitment_renewal_plan2.dart';

/// The set of arguments for CapacityCommitment.
class CapacityCommitmentArgs2 {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  final Input<String>? capacityCommitmentId;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  final Input<bool>? enforceSingleAdminProjectPerOrg;
  final Input<String>? location;

  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.
  final Input<bool>? multiRegionAuxiliary;

  /// Capacity commitment commitment plan.
  final Input<CapacityCommitmentPlan2>? plan;
  final Input<String>? project;

  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
  final Input<CapacityCommitmentRenewalPlan2>? renewalPlan;

  /// Number of slots in this commitment.
  final Input<String>? slotCount;

  CapacityCommitmentArgs2({
    this.capacityCommitmentId,
    this.enforceSingleAdminProjectPerOrg,
    this.location,
    this.multiRegionAuxiliary,
    this.plan,
    this.project,
    this.renewalPlan,
    this.slotCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityCommitmentIdValue = capacityCommitmentId;
    if (capacityCommitmentIdValue != null) {
      map['capacityCommitmentId'] = capacityCommitmentIdValue;
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
    final multiRegionAuxiliaryValue = multiRegionAuxiliary;
    if (multiRegionAuxiliaryValue != null) {
      map['multiRegionAuxiliary'] = multiRegionAuxiliaryValue;
    }
    final planValue = plan;
    if (planValue != null) {
      map['plan'] =
          Input.mapOptionalInputValue<CapacityCommitmentPlan2, String>(
              planValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final renewalPlanValue = renewalPlan;
    if (renewalPlanValue != null) {
      map['renewalPlan'] =
          Input.mapOptionalInputValue<CapacityCommitmentRenewalPlan2, String>(
              renewalPlanValue, (value) => value.value);
    }
    final slotCountValue = slotCount;
    if (slotCountValue != null) {
      map['slotCount'] = slotCountValue;
    }
    return map;
  }

  factory CapacityCommitmentArgs2.fromMap(Map<String, dynamic> map) {
    return CapacityCommitmentArgs2(
      capacityCommitmentId:
          Input.asOptionalInput<String>(map['capacityCommitmentId']),
      enforceSingleAdminProjectPerOrg:
          Input.asOptionalInput<bool>(map['enforceSingleAdminProjectPerOrg']),
      location: Input.asOptionalInput<String>(map['location']),
      multiRegionAuxiliary:
          Input.asOptionalInput<bool>(map['multiRegionAuxiliary']),
      plan: Input.asOptionalInput<CapacityCommitmentPlan2>(map['plan']),
      project: Input.asOptionalInput<String>(map['project']),
      renewalPlan: Input.asOptionalInput<CapacityCommitmentRenewalPlan2>(
          map['renewalPlan']),
      slotCount: Input.asOptionalInput<String>(map['slotCount']),
    );
  }
}
