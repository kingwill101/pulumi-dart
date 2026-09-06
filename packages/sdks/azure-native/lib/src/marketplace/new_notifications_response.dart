// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_notification_details_response.dart';

/// New plans notification details
class NewNotificationsResponse {
  /// Gets offer display name
  final pulumi.Input<String?>? displayName;
  /// Gets or sets the icon url
  final pulumi.Input<String?>? icon;
  /// Gets a value indicating whether future plans is enabled.
  final pulumi.Input<bool?>? isFuturePlansEnabled;
  /// Gets or sets the notification message id
  final pulumi.Input<double?>? messageCode;
  /// Gets offer id
  final pulumi.Input<String?>? offerId;
  /// Gets or sets removed plans notifications
  final pulumi.Input<List<PlanNotificationDetailsResponse>?>? plans;

  /// Creates a new [NewNotificationsResponse].
  /// [displayName] Gets offer display name
  /// [icon] Gets or sets the icon url
  /// [isFuturePlansEnabled] Gets a value indicating whether future plans is enabled.
  /// [messageCode] Gets or sets the notification message id
  /// [offerId] Gets offer id
  /// [plans] Gets or sets removed plans notifications
  const NewNotificationsResponse({
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
      'plans': ?pulumi.Input.mapOptionalInputValue<List<PlanNotificationDetailsResponse>, List<Map<String, dynamic>>>(plans, (value) => pulumi.Input.encodeList<PlanNotificationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NewNotificationsResponse.fromMap(Map<String, dynamic> map) {
    return NewNotificationsResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isFuturePlansEnabled: (() { final guardedValue = map['isFuturePlansEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messageCode: (() { final guardedValue = map['messageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      offerId: (() { final guardedValue = map['offerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plans: (() { final guardedValue = map['plans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanNotificationDetailsResponse>(guardedValue, (value) => PlanNotificationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
