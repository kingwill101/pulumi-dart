// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_notification_details_response.dart';

/// New plans notification details
class NewNotificationsResponse {
  /// Gets offer display name
  final String? displayName;
  /// Gets or sets the icon url
  final String? icon;
  /// Gets a value indicating whether future plans is enabled.
  final bool? isFuturePlansEnabled;
  /// Gets or sets the notification message id
  final double? messageCode;
  /// Gets offer id
  final String? offerId;
  /// Gets or sets removed plans notifications
  final List<PlanNotificationDetailsResponse>? plans;

  /// Creates a new [NewNotificationsResponse].
  /// [displayName] Gets offer display name
  /// [icon] Gets or sets the icon url
  /// [isFuturePlansEnabled] Gets a value indicating whether future plans is enabled.
  /// [messageCode] Gets or sets the notification message id
  /// [offerId] Gets offer id
  /// [plans] Gets or sets removed plans notifications
  NewNotificationsResponse({
    this.displayName,
    this.icon,
    this.isFuturePlansEnabled,
    this.messageCode,
    this.offerId,
    this.plans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'icon': ?icon,
      'isFuturePlansEnabled': ?isFuturePlansEnabled,
      'messageCode': ?messageCode,
      'offerId': ?offerId,
      'plans': ?plans == null ? null : pulumi.Input.encodeList<PlanNotificationDetailsResponse, Map<String, dynamic>>(plans!, (value) => value.toMap()),
    };
  }

  factory NewNotificationsResponse.fromMap(Map<String, dynamic> map) {
    return NewNotificationsResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      icon: map['icon'] == null ? null : map['icon'] as String,
      isFuturePlansEnabled: map['isFuturePlansEnabled'] == null ? null : map['isFuturePlansEnabled'] as bool,
      messageCode: map['messageCode'] == null ? null : map['messageCode'] as double,
      offerId: map['offerId'] == null ? null : map['offerId'] as String,
      plans: map['plans'] == null ? null : pulumi.Input.decodeList<PlanNotificationDetailsResponse>(map['plans'], (value) => PlanNotificationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

