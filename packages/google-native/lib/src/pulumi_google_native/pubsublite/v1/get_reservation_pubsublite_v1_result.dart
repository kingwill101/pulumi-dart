// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getReservation.
class GetReservationPubsubliteV1Result {
  /// The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  final String name;

  /// The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.
  final String throughputCapacity;

  GetReservationPubsubliteV1Result({
    required this.name,
    required this.throughputCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['throughputCapacity'] = throughputCapacity;
    return map;
  }

  factory GetReservationPubsubliteV1Result.fromMap(Map<String, dynamic> map) {
    return GetReservationPubsubliteV1Result(
      name: map['name'] as String,
      throughputCapacity: map['throughputCapacity'] as String,
    );
  }
}
