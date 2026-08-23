// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations {
  /// ARN of the Capacity Reservation resource group in which to run instances. Can only be set when `reservationPreference` is `RESERVATIONS_ONLY`.
  final pulumi.Input<String>? reservationGroupArn;
  /// Preference for when Capacity Reservations should be used. Valid values are `RESERVATIONS_ONLY`, `RESERVATIONS_FIRST`, and `RESERVATIONS_EXCLUDED`. `instanceRequirements` must be provided when set to `RESERVATIONS_ONLY` or `RESERVATIONS_FIRST`.
  final pulumi.Input<String>? reservationPreference;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations].
  /// [reservationGroupArn] ARN of the Capacity Reservation resource group in which to run instances. Can only be set when `reservationPreference` is `RESERVATIONS_ONLY`.
  /// [reservationPreference] Preference for when Capacity Reservations should be used. Valid values are `RESERVATIONS_ONLY`, `RESERVATIONS_FIRST`, and `RESERVATIONS_EXCLUDED`. `instanceRequirements` must be provided when set to `RESERVATIONS_ONLY` or `RESERVATIONS_FIRST`.
  const CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations({
    this.reservationGroupArn,
    this.reservationPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reservationGroupArn': ?reservationGroupArn,
      'reservationPreference': ?reservationPreference,
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateCapacityReservations(
      reservationGroupArn: (() { final guardedValue = map['reservationGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationPreference: (() { final guardedValue = map['reservationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
