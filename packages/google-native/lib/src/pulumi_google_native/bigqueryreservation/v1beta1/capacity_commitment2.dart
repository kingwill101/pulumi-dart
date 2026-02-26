import 'package:pulumi/pulumi.dart';
import 'capacity_commitment_args2.dart';
import 'status_response2.dart';

/// Creates a new capacity commitment resource.
/// Auto-naming is currently not supported for this resource.
class CapacityCommitment2 extends CustomResource {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  late final Output<String?> capacityCommitmentId;

  /// The end of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final Output<String> commitmentEndTime;

  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final Output<String> commitmentStartTime;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  late final Output<bool?> enforceSingleAdminProjectPerOrg;

  /// For FAILED commitment plan, provides the reason of failure.
  late final Output<StatusResponse2> failureStatus;
  late final Output<String> location;

  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.
  late final Output<bool> multiRegionAuxiliary;

  /// The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments/123` The commitment_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  late final Output<String> name;

  /// Capacity commitment commitment plan.
  late final Output<String> plan;
  late final Output<String> project;

  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
  late final Output<String> renewalPlan;

  /// Number of slots in this commitment.
  late final Output<String> slotCount;

  /// State of the commitment.
  late final Output<String> state;

  CapacityCommitment2(
    String name, {
    CapacityCommitmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigqueryreservation/v1beta1:CapacityCommitment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacityCommitmentId = Output.createUnknown<String?>();
    this.commitmentEndTime = Output.createUnknown<String>();
    this.commitmentStartTime = Output.createUnknown<String>();
    this.enforceSingleAdminProjectPerOrg = Output.createUnknown<bool?>();
    this.failureStatus = Output.createUnknown<StatusResponse2>();
    this.location = Output.createUnknown<String>();
    this.multiRegionAuxiliary = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.plan = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.renewalPlan = Output.createUnknown<String>();
    this.slotCount = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
