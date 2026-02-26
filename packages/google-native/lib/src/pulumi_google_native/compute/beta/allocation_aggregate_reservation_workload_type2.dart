/// The workload type of the instances that will target this reservation.
enum AllocationAggregateReservationWorkloadType2 {
  batch("BATCH"),
  serving("SERVING"),
  unspecified("UNSPECIFIED");

  const AllocationAggregateReservationWorkloadType2(this.value);
  final String value;

  static AllocationAggregateReservationWorkloadType2 fromValue(String value) {
    for (final item in AllocationAggregateReservationWorkloadType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AllocationAggregateReservationWorkloadType2 value: $value');
  }
}
