// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_commitment_edition.dart';
import 'capacity_commitment_plan.dart';
import 'capacity_commitment_renewal_plan.dart';

/// {@template pulumi_bigqueryreservation_v1_capacity_commitment_args_doc}
/// The set of arguments for CapacityCommitment.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1_capacity_commitment_args_doc}
class CapacityCommitmentArgs {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  final pulumi.Input<String>? capacityCommitmentId;

  /// Edition of the capacity commitment.
  final pulumi.Input<CapacityCommitmentEdition>? edition;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  final pulumi.Input<bool>? enforceSingleAdminProjectPerOrg;
  final pulumi.Input<String>? location;

  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  final pulumi.Input<bool>? multiRegionAuxiliary;

  /// Capacity commitment commitment plan.
  final pulumi.Input<CapacityCommitmentPlan>? plan;
  final pulumi.Input<String>? project;

  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  final pulumi.Input<CapacityCommitmentRenewalPlan>? renewalPlan;

  /// Number of slots in this commitment.
  final pulumi.Input<String>? slotCount;

  /// Creates a new [CapacityCommitmentArgs].
  /// [capacityCommitmentId] The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  /// [edition] Edition of the capacity commitment.
  /// [enforceSingleAdminProjectPerOrg] If true, fail the request if another project in the organization has a capacity commitment.
  /// [location] Optional.
  /// [multiRegionAuxiliary] Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  /// [plan] Capacity commitment commitment plan.
  /// [project] Optional.
  /// [renewalPlan] The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  /// [slotCount] Number of slots in this commitment.
  CapacityCommitmentArgs({
    String? capacityCommitmentId,
    CapacityCommitmentEdition? edition,
    bool? enforceSingleAdminProjectPerOrg,
    String? location,
    bool? multiRegionAuxiliary,
    CapacityCommitmentPlan? plan,
    String? project,
    CapacityCommitmentRenewalPlan? renewalPlan,
    String? slotCount,
  })  : capacityCommitmentId =
            pulumi.Input.asOptionalInput<String>(capacityCommitmentId),
        edition =
            pulumi.Input.asOptionalInput<CapacityCommitmentEdition>(edition),
        enforceSingleAdminProjectPerOrg =
            pulumi.Input.asOptionalInput<bool>(enforceSingleAdminProjectPerOrg),
        location = pulumi.Input.asOptionalInput<String>(location),
        multiRegionAuxiliary =
            pulumi.Input.asOptionalInput<bool>(multiRegionAuxiliary),
        plan = pulumi.Input.asOptionalInput<CapacityCommitmentPlan>(plan),
        project = pulumi.Input.asOptionalInput<String>(project),
        renewalPlan =
            pulumi.Input.asOptionalInput<CapacityCommitmentRenewalPlan>(
                renewalPlan),
        slotCount = pulumi.Input.asOptionalInput<String>(slotCount);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityCommitmentIdValue = capacityCommitmentId;
    if (capacityCommitmentIdValue != null) {
      map['capacityCommitmentId'] = capacityCommitmentIdValue;
    }
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] =
          pulumi.Input.mapOptionalInputValue<CapacityCommitmentEdition, String>(
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
      map['plan'] =
          pulumi.Input.mapOptionalInputValue<CapacityCommitmentPlan, String>(
              planValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final renewalPlanValue = renewalPlan;
    if (renewalPlanValue != null) {
      map['renewalPlan'] = pulumi.Input.mapOptionalInputValue<
          CapacityCommitmentRenewalPlan,
          String>(renewalPlanValue, (value) => value.value);
    }
    final slotCountValue = slotCount;
    if (slotCountValue != null) {
      map['slotCount'] = slotCountValue;
    }
    return map;
  }

  factory CapacityCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return CapacityCommitmentArgs(
      capacityCommitmentId: map['capacityCommitmentId'] == null
          ? null
          : map['capacityCommitmentId'] as String,
      edition: map['edition'] == null
          ? null
          : CapacityCommitmentEdition.fromValue(map['edition'] as String),
      enforceSingleAdminProjectPerOrg:
          map['enforceSingleAdminProjectPerOrg'] == null
              ? null
              : map['enforceSingleAdminProjectPerOrg'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      multiRegionAuxiliary: map['multiRegionAuxiliary'] == null
          ? null
          : map['multiRegionAuxiliary'] as bool,
      plan: map['plan'] == null
          ? null
          : CapacityCommitmentPlan.fromValue(map['plan'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      renewalPlan: map['renewalPlan'] == null
          ? null
          : CapacityCommitmentRenewalPlan.fromValue(
              map['renewalPlan'] as String),
      slotCount: map['slotCount'] == null ? null : map['slotCount'] as String,
    );
  }
}
