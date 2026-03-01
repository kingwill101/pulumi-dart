/// Planning state before being submitted for evaluation
enum FutureReservationPlanningStatus {
  draft("DRAFT"),
  planningStatusUnspecified("PLANNING_STATUS_UNSPECIFIED"),
  submitted("SUBMITTED");

  const FutureReservationPlanningStatus(this.value);
  final String value;

  static FutureReservationPlanningStatus fromValue(String value) {
    for (final item in FutureReservationPlanningStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FutureReservationPlanningStatus value: $value',
    );
  }
}
