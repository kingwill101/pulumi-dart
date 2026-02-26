// ignore_for_file: unused_element, unnecessary_cast

class FleetOnDemandOptionsCapacityReservationOptions {
  /// Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity. Valid values: `use-capacity-reservations-first`.
  final String? usageStrategy;

  FleetOnDemandOptionsCapacityReservationOptions({
    this.usageStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final usageStrategyValue = usageStrategy;
    if (usageStrategyValue != null) {
      map['usageStrategy'] = usageStrategyValue;
    }
    return map;
  }

  factory FleetOnDemandOptionsCapacityReservationOptions.fromMap(
      Map<String, dynamic> map) {
    return FleetOnDemandOptionsCapacityReservationOptions(
      usageStrategy:
          map['usageStrategy'] == null ? null : map['usageStrategy'] as String,
    );
  }
}
