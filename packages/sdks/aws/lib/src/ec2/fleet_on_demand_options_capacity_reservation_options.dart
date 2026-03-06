// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetOnDemandOptionsCapacityReservationOptions {
  /// Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity. Valid values: `use-capacity-reservations-first`.
  final pulumi.Input<String>? usageStrategy;

  /// Creates a new [FleetOnDemandOptionsCapacityReservationOptions].
  /// [usageStrategy] Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity. Valid values: `use-capacity-reservations-first`.
  const FleetOnDemandOptionsCapacityReservationOptions({
    this.usageStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usageStrategy': ?usageStrategy,
    };
  }

  factory FleetOnDemandOptionsCapacityReservationOptions.fromMap(Map<String, dynamic> map) {
    return FleetOnDemandOptionsCapacityReservationOptions(
      usageStrategy: (() { final guardedValue = map['usageStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

