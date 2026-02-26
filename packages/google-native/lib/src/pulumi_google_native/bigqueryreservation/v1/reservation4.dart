import 'package:pulumi/pulumi.dart';
import 'autoscale_response.dart';
import 'reservation_args.dart';

/// Creates a new reservation resource.
class Reservation4 extends CustomResource {
  /// The configuration parameters for the auto scaling feature.
  late final Output<AutoscaleResponse> autoscale;

  /// Job concurrency target which sets a soft upper bound on the number of jobs that can run concurrently in this reservation. This is a soft target due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency target will be automatically computed by the system. NOTE: this field is exposed as `target_job_concurrency` in the Information Schema, DDL and BQ CLI.
  late final Output<String> concurrency;

  /// Creation time of the reservation.
  late final Output<String> creationTime;

  /// Edition of the reservation.
  late final Output<String> edition;

  /// If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  late final Output<bool> ignoreIdleSlots;
  late final Output<String> location;

  /// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  late final Output<bool> multiRegionAuxiliary;

  /// The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  late final Output<String> name;
  late final Output<String> project;

  /// The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  late final Output<String?> reservationId;

  /// Baseline slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false, or autoscaling is enabled. If edition is EDITION_UNSPECIFIED and total slot_capacity of the reservation and its siblings exceeds the total slot_count of all capacity commitments, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. If edition is any value but EDITION_UNSPECIFIED, then the above requirement is not needed. The total slot_capacity of the reservation and its siblings may exceed the total slot_count of capacity commitments. In that case, the exceeding slots will be charged with the autoscale SKU. You can increase the number of baseline slots in a reservation every few minutes. If you want to decrease your baseline slots, you are limited to once an hour if you have recently changed your baseline slot capacity and your baseline slots exceed your committed slots. Otherwise, you can decrease your baseline slots every few minutes.
  late final Output<String> slotCapacity;

  /// Last update time of the reservation.
  late final Output<String> updateTime;

  Reservation4(
    String name, {
    ReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigqueryreservation/v1:Reservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscale = Output.createUnknown<AutoscaleResponse>();
    this.concurrency = Output.createUnknown<String>();
    this.creationTime = Output.createUnknown<String>();
    this.edition = Output.createUnknown<String>();
    this.ignoreIdleSlots = Output.createUnknown<bool>();
    this.location = Output.createUnknown<String>();
    this.multiRegionAuxiliary = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reservationId = Output.createUnknown<String?>();
    this.slotCapacity = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
