// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'autoscale.dart';
import 'reservation_edition.dart';

/// The set of arguments for Reservation.
class ReservationArgs {
  /// The configuration parameters for the auto scaling feature.
  final Input<Autoscale>? autoscale;

  /// Job concurrency target which sets a soft upper bound on the number of jobs that can run concurrently in this reservation. This is a soft target due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency target will be automatically computed by the system. NOTE: this field is exposed as `target_job_concurrency` in the Information Schema, DDL and BQ CLI.
  final Input<String>? concurrency;

  /// Edition of the reservation.
  final Input<ReservationEdition>? edition;

  /// If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  final Input<bool>? ignoreIdleSlots;
  final Input<String>? location;

  /// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  final Input<bool>? multiRegionAuxiliary;

  /// The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final Input<String>? name;
  final Input<String>? project;

  /// The reservation ID. It must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final Input<String>? reservationId;

  /// Baseline slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false, or autoscaling is enabled. If edition is EDITION_UNSPECIFIED and total slot_capacity of the reservation and its siblings exceeds the total slot_count of all capacity commitments, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. If edition is any value but EDITION_UNSPECIFIED, then the above requirement is not needed. The total slot_capacity of the reservation and its siblings may exceed the total slot_count of capacity commitments. In that case, the exceeding slots will be charged with the autoscale SKU. You can increase the number of baseline slots in a reservation every few minutes. If you want to decrease your baseline slots, you are limited to once an hour if you have recently changed your baseline slot capacity and your baseline slots exceed your committed slots. Otherwise, you can decrease your baseline slots every few minutes.
  final Input<String>? slotCapacity;

  ReservationArgs({
    this.autoscale,
    this.concurrency,
    this.edition,
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
    final autoscaleValue = autoscale;
    if (autoscaleValue != null) {
      map['autoscale'] =
          Input.mapOptionalInputValue<Autoscale, Map<String, dynamic>>(
              autoscaleValue, (value) => value.toMap());
    }
    final concurrencyValue = concurrency;
    if (concurrencyValue != null) {
      map['concurrency'] = concurrencyValue;
    }
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = Input.mapOptionalInputValue<ReservationEdition, String>(
          editionValue, (value) => value.value);
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

  factory ReservationArgs.fromMap(Map<String, dynamic> map) {
    return ReservationArgs(
      autoscale: Input.asOptionalInput<Autoscale>(map['autoscale']),
      concurrency: Input.asOptionalInput<String>(map['concurrency']),
      edition: Input.asOptionalInput<ReservationEdition>(map['edition']),
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
