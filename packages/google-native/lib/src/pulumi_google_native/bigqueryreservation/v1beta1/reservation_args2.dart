// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Reservation.
class ReservationArgs2 {
  /// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
  final Input<String>? concurrency;

  /// If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  final Input<bool>? ignoreIdleSlots;
  final Input<String>? location;

  /// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
  final Input<bool>? multiRegionAuxiliary;

  /// The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final Input<String>? name;
  final Input<String>? project;

  /// The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final Input<String>? reservationId;

  /// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false. If the new reservation's slot capacity exceeds the project's slot capacity or if total slot capacity of the new reservation and its siblings exceeds the project's slot capacity, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU multi-regions, slot capacity constraints are checked separately for default and auxiliary regions. See multi_region_auxiliary flag for more details.
  final Input<String>? slotCapacity;

  ReservationArgs2({
    this.concurrency,
    this.ignoreIdleSlots,
    this.location,
    this.multiRegionAuxiliary,
    this.name,
    this.project,
    this.reservationId,
    this.slotCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final concurrencyValue = concurrency;
    if (concurrencyValue != null) {
      map['concurrency'] = concurrencyValue;
    }
    final ignoreIdleSlotsValue = ignoreIdleSlots;
    if (ignoreIdleSlotsValue != null) {
      map['ignoreIdleSlots'] = ignoreIdleSlotsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final multiRegionAuxiliaryValue = multiRegionAuxiliary;
    if (multiRegionAuxiliaryValue != null) {
      map['multiRegionAuxiliary'] = multiRegionAuxiliaryValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationIdValue = reservationId;
    if (reservationIdValue != null) {
      map['reservationId'] = reservationIdValue;
    }
    final slotCapacityValue = slotCapacity;
    if (slotCapacityValue != null) {
      map['slotCapacity'] = slotCapacityValue;
    }
    return map;
  }

  factory ReservationArgs2.fromMap(Map<String, dynamic> map) {
    return ReservationArgs2(
      concurrency: Input.asOptionalInput<String>(map['concurrency']),
      ignoreIdleSlots: Input.asOptionalInput<bool>(map['ignoreIdleSlots']),
      location: Input.asOptionalInput<String>(map['location']),
      multiRegionAuxiliary:
          Input.asOptionalInput<bool>(map['multiRegionAuxiliary']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      reservationId: Input.asOptionalInput<String>(map['reservationId']),
      slotCapacity: Input.asOptionalInput<String>(map['slotCapacity']),
    );
  }
}
