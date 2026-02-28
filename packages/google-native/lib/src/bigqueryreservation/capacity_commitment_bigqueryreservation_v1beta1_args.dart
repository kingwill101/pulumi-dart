// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_commitment_plan_bigqueryreservation_v1beta1.dart';
import 'capacity_commitment_renewal_plan_bigqueryreservation_v1beta1.dart';

/// {@template pulumi_bigqueryreservation_v1beta1_capacity_commitment_bigqueryreservation_v1beta1_args_doc}
/// The set of arguments for CapacityCommitment.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1beta1_capacity_commitment_bigqueryreservation_v1beta1_args_doc}
class CapacityCommitmentBigqueryreservationV1beta1Args {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  final pulumi.Input<String>? capacityCommitmentId;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  final pulumi.Input<bool>? enforceSingleAdminProjectPerOrg;
  final pulumi.Input<String>? location;

  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.
  final pulumi.Input<bool>? multiRegionAuxiliary;

  /// Capacity commitment commitment plan.
  final pulumi.Input<CapacityCommitmentPlanBigqueryreservationV1beta1>? plan;
  final pulumi.Input<String>? project;

  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
  final pulumi.Input<CapacityCommitmentRenewalPlanBigqueryreservationV1beta1>?
      renewalPlan;

  /// Number of slots in this commitment.
  final pulumi.Input<String>? slotCount;

  /// Creates a new [CapacityCommitmentBigqueryreservationV1beta1Args].
  /// [capacityCommitmentId] The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  /// [enforceSingleAdminProjectPerOrg] If true, fail the request if another project in the organization has a capacity commitment.
  /// [location] Optional.
  /// [multiRegionAuxiliary] Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.
  /// [plan] Capacity commitment commitment plan.
  /// [project] Optional.
  /// [renewalPlan] The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
  /// [slotCount] Number of slots in this commitment.
  CapacityCommitmentBigqueryreservationV1beta1Args({
    String? capacityCommitmentId,
    bool? enforceSingleAdminProjectPerOrg,
    String? location,
    bool? multiRegionAuxiliary,
    CapacityCommitmentPlanBigqueryreservationV1beta1? plan,
    String? project,
    CapacityCommitmentRenewalPlanBigqueryreservationV1beta1? renewalPlan,
    String? slotCount,
  })  : capacityCommitmentId =
            pulumi.Input.asOptionalInput<String>(capacityCommitmentId),
        enforceSingleAdminProjectPerOrg =
            pulumi.Input.asOptionalInput<bool>(enforceSingleAdminProjectPerOrg),
        location = pulumi.Input.asOptionalInput<String>(location),
        multiRegionAuxiliary =
            pulumi.Input.asOptionalInput<bool>(multiRegionAuxiliary),
        plan = pulumi.Input.asOptionalInput<
            CapacityCommitmentPlanBigqueryreservationV1beta1>(plan),
        project = pulumi.Input.asOptionalInput<String>(project),
        renewalPlan = pulumi.Input.asOptionalInput<
                CapacityCommitmentRenewalPlanBigqueryreservationV1beta1>(
            renewalPlan),
        slotCount = pulumi.Input.asOptionalInput<String>(slotCount);

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
      map['plan'] = pulumi.Input.mapOptionalInputValue<
          CapacityCommitmentPlanBigqueryreservationV1beta1,
          String>(planValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final renewalPlanValue = renewalPlan;
    if (renewalPlanValue != null) {
      map['renewalPlan'] = pulumi.Input.mapOptionalInputValue<
          CapacityCommitmentRenewalPlanBigqueryreservationV1beta1,
          String>(renewalPlanValue, (value) => value.value);
    }
    final slotCountValue = slotCount;
    if (slotCountValue != null) {
      map['slotCount'] = slotCountValue;
    }
    return map;
  }

  factory CapacityCommitmentBigqueryreservationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return CapacityCommitmentBigqueryreservationV1beta1Args(
      capacityCommitmentId: map['capacityCommitmentId'] == null
          ? null
          : map['capacityCommitmentId'] as String,
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
          : CapacityCommitmentPlanBigqueryreservationV1beta1.fromValue(
              map['plan'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      renewalPlan: map['renewalPlan'] == null
          ? null
          : CapacityCommitmentRenewalPlanBigqueryreservationV1beta1.fromValue(
              map['renewalPlan'] as String),
      slotCount: map['slotCount'] == null ? null : map['slotCount'] as String,
    );
  }
}
