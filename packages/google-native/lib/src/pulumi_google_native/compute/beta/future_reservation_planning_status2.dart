/// Planning state before being submitted for evaluation
enum FutureReservationPlanningStatus2 {
  draft("DRAFT"),
  planningStatusUnspecified("PLANNING_STATUS_UNSPECIFIED"),
  submitted("SUBMITTED");

  const FutureReservationPlanningStatus2(this.value);
  final String value;

  static FutureReservationPlanningStatus2 fromValue(String value) {
    for (final item in FutureReservationPlanningStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown FutureReservationPlanningStatus2 value: $value');
  }
}
