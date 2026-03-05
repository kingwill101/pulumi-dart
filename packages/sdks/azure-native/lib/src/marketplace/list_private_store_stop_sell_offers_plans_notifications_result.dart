// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stop_sell_offers_plans_notifications_list_properties_response.dart';

/// Result data returned by listPrivateStoreStopSellOffersPlansNotifications.
class ListPrivateStoreStopSellOffersPlansNotificationsResult {
  final List<StopSellOffersPlansNotificationsListPropertiesResponse>? stopSellNotifications;

  /// Creates a new [ListPrivateStoreStopSellOffersPlansNotificationsResult].
  /// [stopSellNotifications] Optional.
  ListPrivateStoreStopSellOffersPlansNotificationsResult({
    this.stopSellNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stopSellNotifications': ?(() { final guardedValue = stopSellNotifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<StopSellOffersPlansNotificationsListPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListPrivateStoreStopSellOffersPlansNotificationsResult.fromMap(Map<String, dynamic> map) {
    return ListPrivateStoreStopSellOffersPlansNotificationsResult(
      stopSellNotifications: (() { final guardedValue = map['stopSellNotifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StopSellOffersPlansNotificationsListPropertiesResponse>(guardedValue, (value) => StopSellOffersPlansNotificationsListPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

