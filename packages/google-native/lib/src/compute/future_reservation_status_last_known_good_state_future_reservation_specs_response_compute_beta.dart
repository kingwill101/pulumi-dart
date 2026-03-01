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

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta].
  /// [shareSettings] The previous share settings of the Future Reservation.
  /// [specificSkuProperties] The previous instance related properties of the Future Reservation.
  /// [timeWindow] The previous time window of the Future Reservation.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta({
    required this.shareSettings,
    required this.specificSkuProperties,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareSettings': shareSettings.toMap(),
      'specificSkuProperties': specificSkuProperties.toMap(),
      'timeWindow': timeWindow.toMap(),
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta(
      shareSettings: ShareSettingsResponseComputeBeta.fromMap(
        (map['shareSettings'] as Map).cast<String, dynamic>(),
      ),
      specificSkuProperties:
          FutureReservationSpecificSKUPropertiesResponseComputeBeta.fromMap(
            (map['specificSkuProperties'] as Map).cast<String, dynamic>(),
          ),
      timeWindow: FutureReservationTimeWindowResponseComputeBeta.fromMap(
        (map['timeWindow'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
