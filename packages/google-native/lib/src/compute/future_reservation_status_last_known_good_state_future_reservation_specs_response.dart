// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_specific_skuproperties_response.dart';
import 'future_reservation_time_window_response.dart';
import 'share_settings_response.dart';

/// The properties of the last known good state for the Future Reservation.
class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse {
  /// The previous share settings of the Future Reservation.
  final ShareSettingsResponse shareSettings;

  /// The previous instance related properties of the Future Reservation.
  final FutureReservationSpecificSKUPropertiesResponse specificSkuProperties;

  /// The previous time window of the Future Reservation.
  final FutureReservationTimeWindowResponse timeWindow;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse].
  /// [shareSettings] The previous share settings of the Future Reservation.
  /// [specificSkuProperties] The previous instance related properties of the Future Reservation.
  /// [timeWindow] The previous time window of the Future Reservation.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse({
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

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse(
      shareSettings: ShareSettingsResponse.fromMap(
        (map['shareSettings'] as Map).cast<String, dynamic>(),
      ),
      specificSkuProperties:
          FutureReservationSpecificSKUPropertiesResponse.fromMap(
            (map['specificSkuProperties'] as Map).cast<String, dynamic>(),
          ),
      timeWindow: FutureReservationTimeWindowResponse.fromMap(
        (map['timeWindow'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
