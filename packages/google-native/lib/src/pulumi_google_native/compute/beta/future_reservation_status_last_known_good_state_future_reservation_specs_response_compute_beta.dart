// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_specific_skuproperties_response_compute_beta.dart';
import 'future_reservation_time_window_response_compute_beta.dart';
import 'share_settings_response_compute_beta.dart';

/// The properties of the last known good state for the Future Reservation.
class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta {
  /// The previous share settings of the Future Reservation.
  final ShareSettingsResponseComputeBeta shareSettings;

  /// The previous instance related properties of the Future Reservation.
  final FutureReservationSpecificSKUPropertiesResponseComputeBeta
      specificSkuProperties;

  /// The previous time window of the Future Reservation.
  final FutureReservationTimeWindowResponseComputeBeta timeWindow;

  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta({
    required this.shareSettings,
    required this.specificSkuProperties,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['shareSettings'] = shareSettings.toMap();
    map['specificSkuProperties'] = specificSkuProperties.toMap();
    map['timeWindow'] = timeWindow.toMap();
    return map;
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta(
      shareSettings: ShareSettingsResponseComputeBeta.fromMap(
          (map['shareSettings'] as Map).cast<String, dynamic>()),
      specificSkuProperties:
          FutureReservationSpecificSKUPropertiesResponseComputeBeta.fromMap(
              (map['specificSkuProperties'] as Map).cast<String, dynamic>()),
      timeWindow: FutureReservationTimeWindowResponseComputeBeta.fromMap(
          (map['timeWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
