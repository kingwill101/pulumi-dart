// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getReservation.
class GetReservationResult2 {
  /// Maximum number of queries that are allowed to run concurrently in this reservation. This is a soft limit due to asynchronous nature of the system and various optimizations for small queries. Default value is 0 which means that concurrency will be automatically set based on the reservation size.
  final String concurrency;

  /// Creation time of the reservation.
  final String creationTime;

  /// If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  final bool ignoreIdleSlots;

  /// Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
  final bool multiRegionAuxiliary;

  /// The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. The reservation_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final String name;

  /// Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false. If the new reservation's slot capacity exceeds the project's slot capacity or if total slot capacity of the new reservation and its siblings exceeds the project's slot capacity, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU multi-regions, slot capacity constraints are checked separately for default and auxiliary regions. See multi_region_auxiliary flag for more details.
  final String slotCapacity;

  /// Last update time of the reservation.
  final String updateTime;

  GetReservationResult2({
    required this.concurrency,
    required this.creationTime,
    required this.ignoreIdleSlots,
    required this.multiRegionAuxiliary,
    required this.name,
    required this.slotCapacity,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['concurrency'] = concurrency;
    map['creationTime'] = creationTime;
    map['ignoreIdleSlots'] = ignoreIdleSlots;
    map['multiRegionAuxiliary'] = multiRegionAuxiliary;
    map['name'] = name;
    map['slotCapacity'] = slotCapacity;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetReservationResult2.fromMap(Map<String, dynamic> map) {
    return GetReservationResult2(
      concurrency: map['concurrency'] as String,
      creationTime: map['creationTime'] as String,
      ignoreIdleSlots: map['ignoreIdleSlots'] as bool,
      multiRegionAuxiliary: map['multiRegionAuxiliary'] as bool,
      name: map['name'] as String,
      slotCapacity: map['slotCapacity'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
