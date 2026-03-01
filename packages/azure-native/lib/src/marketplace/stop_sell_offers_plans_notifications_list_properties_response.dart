// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_notification_details_response.dart';

/// List of stop sell offers and plans notifications.
class StopSellOffersPlansNotificationsListPropertiesResponse {
  /// The offer display name
  final String displayName;
  /// The icon url
  final String icon;
  /// A value indicating whether entire offer is in stop sell or only few of its plans
  final bool isEntire;
  /// The notification message code
  final double messageCode;
  /// The offer id
  final String offerId;
  /// The list of removed plans notifications
  final List<PlanNotificationDetailsResponse> plans;
  /// True if the offer has public plans
  final bool publicContext;
  /// The subscriptions related to private plans
  final List<String> subscriptionsIds;

  /// Creates a new [StopSellOffersPlansNotificationsListPropertiesResponse].
  /// [displayName] The offer display name
  /// [icon] The icon url
  /// [isEntire] A value indicating whether entire offer is in stop sell or only few of its plans
  /// [messageCode] The notification message code
  /// [offerId] The offer id
  /// [plans] The list of removed plans notifications
  /// [publicContext] True if the offer has public plans
  /// [subscriptionsIds] The subscriptions related to private plans
  StopSellOffersPlansNotificationsListPropertiesResponse({
    required this.displayName,
    required this.icon,
    required this.isEntire,
    required this.messageCode,
    required this.offerId,
    required this.plans,
    required this.publicContext,
    required this.subscriptionsIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'icon': icon,
      'isEntire': isEntire,
      'messageCode': messageCode,
      'offerId': offerId,
      'plans': pulumi.Input.encodeList<PlanNotificationDetailsResponse, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'publicContext': publicContext,
      'subscriptionsIds': subscriptionsIds,
    };
  }

  factory StopSellOffersPlansNotificationsListPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StopSellOffersPlansNotificationsListPropertiesResponse(
      displayName: map['displayName'] as String,
      icon: map['icon'] as String,
      isEntire: map['isEntire'] as bool,
      messageCode: map['messageCode'] as double,
      offerId: map['offerId'] as String,
      plans: pulumi.Input.decodeList<PlanNotificationDetailsResponse>(map['plans'], (value) => PlanNotificationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicContext: map['publicContext'] as bool,
      subscriptionsIds: (map['subscriptionsIds'] as List).cast<String>(),
    );
  }
}

