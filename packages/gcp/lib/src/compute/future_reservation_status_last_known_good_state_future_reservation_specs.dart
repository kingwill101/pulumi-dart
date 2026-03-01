// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_status_last_known_good_state_future_reservation_specs_share_settings.dart';
import 'future_reservation_status_last_known_good_state_future_reservation_specs_specific_sku_properties.dart';
import 'future_reservation_status_last_known_good_state_future_reservation_specs_time_window.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecs {
  /// Settings for sharing the future reservation
  /// Structure is documented below.
  final FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings?
  shareSettings;

  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  final FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties?
  specificSkuProperties;

  /// Time window for this Future Reservation.
  /// Structure is documented below.
  final FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow?
  timeWindow;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecs].
  /// [shareSettings] Settings for sharing the future reservation
  /// [specificSkuProperties] Future Reservation configuration to indicate instance properties and total count.
  /// [timeWindow] Time window for this Future Reservation.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecs({
    this.shareSettings,
    this.specificSkuProperties,
    this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareSettings': ?shareSettings == null ? null : shareSettings!.toMap(),
      'specificSkuProperties': ?specificSkuProperties == null
          ? null
          : specificSkuProperties!.toMap(),
      'timeWindow': ?timeWindow == null ? null : timeWindow!.toMap(),
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecs.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecs(
      shareSettings: map['shareSettings'] == null
          ? null
          : FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings.fromMap(
              (map['shareSettings'] as Map).cast<String, dynamic>(),
            ),
      specificSkuProperties: map['specificSkuProperties'] == null
          ? null
          : FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties.fromMap(
              (map['specificSkuProperties'] as Map).cast<String, dynamic>(),
            ),
      timeWindow: map['timeWindow'] == null
          ? null
          : FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow.fromMap(
              (map['timeWindow'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
