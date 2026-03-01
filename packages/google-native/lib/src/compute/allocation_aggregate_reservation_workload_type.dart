/// The workload type of the instances that will target this reservation.
enum AllocationAggregateReservationWorkloadType {
  batch("BATCH"),
  serving("SERVING"),
  unspecified("UNSPECIFIED");

  const AllocationAggregateReservationWorkloadType(this.value);
  final String value;

  static AllocationAggregateReservationWorkloadType fromValue(String value) {
    for (final item in AllocationAggregateReservationWorkloadType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AllocationAggregateReservationWorkloadType value: $value',
    );
  }
}
