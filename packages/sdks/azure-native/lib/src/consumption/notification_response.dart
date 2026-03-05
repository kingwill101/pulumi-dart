// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The notification associated with a budget.
class NotificationResponse {
  /// Email addresses to send the budget notification to when the threshold is exceeded. Must have at least one contact email or contact group specified at the Subscription or Resource Group scopes. All other scopes must have at least one contact email specified.
  final pulumi.Input<List<String>> contactEmails;
  /// Action groups to send the budget notification to when the threshold is exceeded. Must be provided as a fully qualified Azure resource id. Only supported at Subscription or Resource Group scopes.
  final pulumi.Input<List<String>>? contactGroups;
  /// Contact roles to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>>? contactRoles;
  /// The notification is enabled or not.
  final pulumi.Input<bool> enabled;
  /// Language in which the recipient will receive the notification
  final pulumi.Input<String>? locale;
  /// The comparison operator.
  final pulumi.Input<String> operator;
  /// Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
  final pulumi.Input<double> threshold;
  /// The type of threshold
  final pulumi.Input<String>? thresholdType;

  /// Creates a new [NotificationResponse].
  /// [contactEmails] Email addresses to send the budget notification to when the threshold is exceeded. Must have at least one contact email or contact group specified at the Subscription or Resource Group scopes. All other scopes must have at least one contact email specified.
  /// [contactGroups] Action groups to send the budget notification to when the threshold is exceeded. Must be provided as a fully qualified Azure resource id. Only supported at Subscription or Resource Group scopes.
  /// [contactRoles] Contact roles to send the budget notification to when the threshold is exceeded.
  /// [enabled] The notification is enabled or not.
  /// [locale] Language in which the recipient will receive the notification
  /// [operator] The comparison operator.
  /// [threshold] Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
  /// [thresholdType] The type of threshold
  NotificationResponse({
    required this.contactEmails,
    this.contactGroups,
    this.contactRoles,
    required this.enabled,
    this.locale,
    required this.operator,
    required this.threshold,
    this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactEmails': contactEmails,
      'contactGroups': ?contactGroups,
      'contactRoles': ?contactRoles,
      'enabled': enabled,
      'locale': ?locale,
      'operator': operator,
      'threshold': threshold,
      'thresholdType': ?thresholdType,
    };
  }

  factory NotificationResponse.fromMap(Map<String, dynamic> map) {
    return NotificationResponse(
      contactEmails: pulumi.Input.fromValue((map['contactEmails'] as List).cast<String>()),
      contactGroups: (() { final guardedValue = map['contactGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      contactRoles: (() { final guardedValue = map['contactRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      thresholdType: (() { final guardedValue = map['thresholdType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

