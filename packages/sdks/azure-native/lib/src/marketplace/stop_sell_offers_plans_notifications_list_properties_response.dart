// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_notification_details_response.dart';

/// List of stop sell offers and plans notifications.
class StopSellOffersPlansNotificationsListPropertiesResponse {
  /// The offer display name
  final pulumi.Input<String> displayName;
  /// The icon url
  final pulumi.Input<String> icon;
  /// A value indicating whether entire offer is in stop sell or only few of its plans
  final pulumi.Input<bool> isEntire;
  /// The notification message code
  final pulumi.Input<double> messageCode;
  /// The offer id
  final pulumi.Input<String> offerId;
  /// The list of removed plans notifications
  final pulumi.Input<List<PlanNotificationDetailsResponse>> plans;
  /// True if the offer has public plans
  final pulumi.Input<bool> publicContext;
  /// The subscriptions related to private plans
  final pulumi.Input<List<String>> subscriptionsIds;

  /// Creates a new [StopSellOffersPlansNotificationsListPropertiesResponse].
  /// [displayName] The offer display name
  /// [icon] The icon url
  /// [isEntire] A value indicating whether entire offer is in stop sell or only few of its plans
  /// [messageCode] The notification message code
  /// [offerId] The offer id
  /// [plans] The list of removed plans notifications
  /// [publicContext] True if the offer has public plans
  /// [subscriptionsIds] The subscriptions related to private plans
  const StopSellOffersPlansNotificationsListPropertiesResponse({
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
      'plans': pulumi.Input.mapInputValue<List<PlanNotificationDetailsResponse>, List<Map<String, dynamic>>>(plans, (value) => pulumi.Input.encodeList<PlanNotificationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicContext': publicContext,
      'subscriptionsIds': subscriptionsIds,
    };
  }

  factory StopSellOffersPlansNotificationsListPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StopSellOffersPlansNotificationsListPropertiesResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      icon: pulumi.Input.fromValue(map['icon'] as String),
      isEntire: pulumi.Input.fromValue(map['isEntire'] as bool),
      messageCode: pulumi.Input.fromValue(map['messageCode'] as double),
      offerId: pulumi.Input.fromValue(map['offerId'] as String),
      plans: pulumi.Input.fromValue(pulumi.Input.decodeList<PlanNotificationDetailsResponse>(map['plans']!, (value) => PlanNotificationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      publicContext: pulumi.Input.fromValue(map['publicContext'] as bool),
      subscriptionsIds: pulumi.Input.fromValue((map['subscriptionsIds'] as List).cast<String>()),
    );
  }
}

