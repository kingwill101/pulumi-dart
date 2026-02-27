// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_commitment_plan_bigqueryreservation_v1beta1.dart';
import 'capacity_commitment_renewal_plan_bigqueryreservation_v1beta1.dart';

/// The set of arguments for CapacityCommitment.
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

  CapacityCommitmentBigqueryreservationV1beta1Args({
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
      capacityCommitmentId:
          pulumi.Input.asOptionalInput<String>(map['capacityCommitmentId']),
      enforceSingleAdminProjectPerOrg: pulumi.Input.asOptionalInput<bool>(
          map['enforceSingleAdminProjectPerOrg']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      multiRegionAuxiliary:
          pulumi.Input.asOptionalInput<bool>(map['multiRegionAuxiliary']),
      plan: pulumi.Input.asOptionalInput<
          CapacityCommitmentPlanBigqueryreservationV1beta1>(map['plan']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      renewalPlan: pulumi.Input.asOptionalInput<
              CapacityCommitmentRenewalPlanBigqueryreservationV1beta1>(
          map['renewalPlan']),
      slotCount: pulumi.Input.asOptionalInput<String>(map['slotCount']),
    );
  }
}
