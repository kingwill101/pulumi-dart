// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'capacity_commitment_edition.dart';
import 'capacity_commitment_plan.dart';
import 'capacity_commitment_renewal_plan.dart';

/// The set of arguments for CapacityCommitment.
class CapacityCommitmentArgs {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  final Input<String>? capacityCommitmentId;

  /// Edition of the capacity commitment.
  final Input<CapacityCommitmentEdition>? edition;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  final Input<bool>? enforceSingleAdminProjectPerOrg;
  final Input<String>? location;

  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  final Input<bool>? multiRegionAuxiliary;

  /// Capacity commitment commitment plan.
  final Input<CapacityCommitmentPlan>? plan;
  final Input<String>? project;

  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  final Input<CapacityCommitmentRenewalPlan>? renewalPlan;

  /// Number of slots in this commitment.
  final Input<String>? slotCount;

  CapacityCommitmentArgs({
    this.capacityCommitmentId,
    this.edition,
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
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] =
          Input.mapOptionalInputValue<CapacityCommitmentEdition, String>(
              editionValue, (value) => value.value);
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
      map['plan'] = Input.mapOptionalInputValue<CapacityCommitmentPlan, String>(
          planValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final renewalPlanValue = renewalPlan;
    if (renewalPlanValue != null) {
      map['renewalPlan'] =
          Input.mapOptionalInputValue<CapacityCommitmentRenewalPlan, String>(
              renewalPlanValue, (value) => value.value);
    }
    final slotCountValue = slotCount;
    if (slotCountValue != null) {
      map['slotCount'] = slotCountValue;
    }
    return map;
  }

  factory CapacityCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return CapacityCommitmentArgs(
      capacityCommitmentId:
          Input.asOptionalInput<String>(map['capacityCommitmentId']),
      edition: Input.asOptionalInput<CapacityCommitmentEdition>(map['edition']),
      enforceSingleAdminProjectPerOrg:
          Input.asOptionalInput<bool>(map['enforceSingleAdminProjectPerOrg']),
      location: Input.asOptionalInput<String>(map['location']),
      multiRegionAuxiliary:
          Input.asOptionalInput<bool>(map['multiRegionAuxiliary']),
      plan: Input.asOptionalInput<CapacityCommitmentPlan>(map['plan']),
      project: Input.asOptionalInput<String>(map['project']),
      renewalPlan: Input.asOptionalInput<CapacityCommitmentRenewalPlan>(
          map['renewalPlan']),
      slotCount: Input.asOptionalInput<String>(map['slotCount']),
    );
  }
}
