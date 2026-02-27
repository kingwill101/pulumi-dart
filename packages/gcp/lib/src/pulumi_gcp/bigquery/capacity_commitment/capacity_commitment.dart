import 'package:pulumi/pulumi.dart';
import 'capacity_commitment_args.dart';

/// Capacity commitment is a way to purchase compute capacity for BigQuery jobs (in the form of slots) with some committed period of usage. Annual commitments renew by default. Commitments can be removed after their commitment end time passes.
///
/// In order to remove annual commitment, its plan needs to be changed to monthly or flex first.
///
///
/// To get more information about CapacityCommitment, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/projects.locations.capacityCommitments)
/// * How-to Guides
/// * [Introduction to Reservations](https://cloud.google.com/bigquery/docs/reservations-intro)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Capacity Commitment Docs
///
///
///
///
/// ## Import
///
/// CapacityCommitment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/capacityCommitments/{{capacity_commitment_id}}`
///
/// * `{{project}}/{{location}}/{{capacity_commitment_id}}`
///
/// * `{{location}}/{{capacity_commitment_id}}`
///
/// When using the `pulumi import` command, CapacityCommitment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/capacityCommitment:CapacityCommitment default projects/{{project}}/locations/{{location}}/capacityCommitments/{{capacity_commitment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/capacityCommitment:CapacityCommitment default {{project}}/{{location}}/{{capacity_commitment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/capacityCommitment:CapacityCommitment default {{location}}/{{capacity_commitment_id}}
/// ```
class CapacityCommitment extends CustomResource {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
  /// empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
  /// cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split
  /// or merged.
  late final Output<String?> capacityCommitmentId;

  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final Output<String> commitmentEndTime;

  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  late final Output<String> commitmentStartTime;

  /// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  late final Output<String?> edition;

  /// If true, fail the request if another project in the organization has a capacity commitment.
  late final Output<String?> enforceSingleAdminProjectPerOrg;

  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  late final Output<String?> location;

  /// The resource name of the capacity commitment, e.g., projects/myproject/locations/US/capacityCommitments/123
  late final Output<String> name;

  /// Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  late final Output<String> plan;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  late final Output<String?> renewalPlan;

  /// Number of slots in this commitment.
  late final Output<int> slotCount;

  /// State of the commitment
  late final Output<String> state;

  CapacityCommitment(
    String name, {
    CapacityCommitmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/capacityCommitment:CapacityCommitment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacityCommitmentId = registerOutput<String?>('capacityCommitmentId');
    this.commitmentEndTime = registerOutput<String>('commitmentEndTime');
    this.commitmentStartTime = registerOutput<String>('commitmentStartTime');
    this.edition = registerOutput<String?>('edition');
    this.enforceSingleAdminProjectPerOrg =
        registerOutput<String?>('enforceSingleAdminProjectPerOrg');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<String>('plan');
    this.project = registerOutput<String>('project');
    this.renewalPlan = registerOutput<String?>('renewalPlan');
    this.slotCount = registerOutput<int>('slotCount');
    this.state = registerOutput<String>('state');
  }
}
