import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_bigqueryreservation_v1beta1_args.dart';

/// Creates a new reservation resource.
class ReservationBigqueryreservationV1beta1 extends pulumi.CustomResource {
  /// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
  late final pulumi.Output<String> concurrency;

  /// Creation time of the reservation.
  late final pulumi.Output<String> creationTime;

  /// If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  late final pulumi.Output<bool> ignoreIdleSlots;
  late final pulumi.Output<String> location;

  /// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
  late final pulumi.Output<bool> multiRegionAuxiliary;

  /// The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  late final pulumi.Output<String?> reservationId;

  /// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false. If the new reservation's slot capacity exceeds the project's slot capacity or if total slot capacity of the new reservation and its siblings exceeds the project's slot capacity, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU multi-regions, slot capacity constraints are checked separately for default and auxiliary regions. See multi_region_auxiliary flag for more details.
  late final pulumi.Output<String> slotCapacity;

  /// Last update time of the reservation.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ReservationBigqueryreservationV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservationBigqueryreservationV1beta1]. {@macro pulumi_bigqueryreservation_v1beta1_reservation_bigqueryreservation_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservationBigqueryreservationV1beta1(
    String name, {
    ReservationBigqueryreservationV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:bigqueryreservation/v1beta1:Reservation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.concurrency = registerOutput<String>('concurrency');
    this.creationTime = registerOutput<String>('creationTime');
    this.ignoreIdleSlots = registerOutput<bool>('ignoreIdleSlots');
    this.location = registerOutput<String>('location');
    this.multiRegionAuxiliary = registerOutput<bool>('multiRegionAuxiliary');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reservationId = registerOutput<String?>('reservationId');
    this.slotCapacity = registerOutput<String>('slotCapacity');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
