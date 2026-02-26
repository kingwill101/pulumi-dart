// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_specific_skuproperties_response2.dart';
import 'future_reservation_time_window_response2.dart';
import 'share_settings_response2.dart';

/// The properties of the last known good state for the Future Reservation.
class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse2 {
  /// The previous share settings of the Future Reservation.
  final ShareSettingsResponse2 shareSettings;

  /// The previous instance related properties of the Future Reservation.
  final FutureReservationSpecificSKUPropertiesResponse2 specificSkuProperties;

  /// The previous time window of the Future Reservation.
  final FutureReservationTimeWindowResponse2 timeWindow;

  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse2({
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

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse2.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse2(
      shareSettings: ShareSettingsResponse2.fromMap(
          (map['shareSettings'] as Map).cast<String, dynamic>()),
      specificSkuProperties:
          FutureReservationSpecificSKUPropertiesResponse2.fromMap(
              (map['specificSkuProperties'] as Map).cast<String, dynamic>()),
      timeWindow: FutureReservationTimeWindowResponse2.fromMap(
          (map['timeWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
