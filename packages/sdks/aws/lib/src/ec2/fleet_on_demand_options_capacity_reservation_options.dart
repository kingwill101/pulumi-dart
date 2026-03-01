// ignore_for_file: unused_element, unnecessary_cast


class FleetOnDemandOptionsCapacityReservationOptions {
  /// Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity. Valid values: `use-capacity-reservations-first`.
  final String? usageStrategy;

  /// Creates a new [FleetOnDemandOptionsCapacityReservationOptions].
  /// [usageStrategy] Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity. Valid values: `use-capacity-reservations-first`.
  FleetOnDemandOptionsCapacityReservationOptions({
    this.usageStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usageStrategy': ?usageStrategy,
    };
  }

  factory FleetOnDemandOptionsCapacityReservationOptions.fromMap(Map<String, dynamic> map) {
    return FleetOnDemandOptionsCapacityReservationOptions(
      usageStrategy: map['usageStrategy'] == null ? null : map['usageStrategy'] as String,
    );
  }
}

