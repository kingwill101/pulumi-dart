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
      'stopSellNotifications': ?stopSellNotifications == null ? null : pulumi.Input.encodeList<StopSellOffersPlansNotificationsListPropertiesResponse, Map<String, dynamic>>(stopSellNotifications!, (value) => value.toMap()),
    };
  }

  factory ListPrivateStoreStopSellOffersPlansNotificationsResult.fromMap(Map<String, dynamic> map) {
    return ListPrivateStoreStopSellOffersPlansNotificationsResult(
      stopSellNotifications: map['stopSellNotifications'] == null ? null : pulumi.Input.decodeList<StopSellOffersPlansNotificationsListPropertiesResponse>(map['stopSellNotifications']!, (value) => StopSellOffersPlansNotificationsListPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

