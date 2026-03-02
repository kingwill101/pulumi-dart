// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The notification associated with a budget.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
class NotificationResponse {
  /// Email addresses to send the notification to when the threshold is breached. Must have at least one contact email or contact group specified at the Subscription or Resource Group scopes. All other scopes must have at least one contact email specified.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  final pulumi.Input<List<String>> contactEmails;
  /// Subscription or Resource Group scopes only. Action groups to send the notification to when the threshold is exceeded. Must be provided as a fully qualified Azure resource id.
  ///
  /// Supported for CategoryType(s): Cost.
  final pulumi.Input<List<String>>? contactGroups;
  /// Subscription or Resource Group scopes only. Contact roles to send the notification to when the threshold is breached.
  ///
  /// Supported for CategoryType(s): Cost.
  final pulumi.Input<List<String>>? contactRoles;
  /// The notification is enabled or not.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  final pulumi.Input<bool> enabled;
  /// Frequency of a notification. Represents how long the notification will be silent after triggering an alert for a threshold breach. If not specified, the frequency will be set by default based on the timeGrain (Weekly when timeGrain: Last7Days, Monthly when timeGrain: Last30Days).
  ///
  /// Supported for CategoryType(s): ReservationUtilization.
  final pulumi.Input<String>? frequency;
  /// Language in which the recipient will receive the notification,
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  final pulumi.Input<String>? locale;
  /// The comparison operator.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Supported operators for **CategoryType: Cost**
  /// - GreaterThan
  /// - GreaterThanOrEqualTo
  ///
  /// Supported operators for **CategoryType: ReservationUtilization**
  /// - LessThan
  final pulumi.Input<String> operator;
  /// Threshold value associated with a notification. It is always percent with a maximum of 2 decimal places.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// **CategoryType: Cost** - Must be between 0 and 1000. Notification is sent when the cost exceeded the threshold.
  ///
  /// **CategoryType: ReservationUtilization** - Must be between 0 and 100. Notification is sent when a reservation has a utilization percentage below the threshold.
  final pulumi.Input<double> threshold;
  /// The type of threshold.
  ///
  /// Supported for CategoryType(s): Cost.
  final pulumi.Input<String>? thresholdType;

  /// Creates a new [NotificationResponse].
  /// [contactEmails] Email addresses to send the notification to when the threshold is breached. Must have at least one contact email or contact group specified at the Subscription or Resource Group scopes. All other scopes must have at least one contact email specified.
  /// [contactGroups] Subscription or Resource Group scopes only. Action groups to send the notification to when the threshold is exceeded. Must be provided as a fully qualified Azure resource id.
  /// [contactRoles] Subscription or Resource Group scopes only. Contact roles to send the notification to when the threshold is breached.
  /// [enabled] The notification is enabled or not.
  /// [frequency] Frequency of a notification. Represents how long the notification will be silent after triggering an alert for a threshold breach. If not specified, the frequency will be set by default based on the timeGrain (Weekly when timeGrain: Last7Days, Monthly when timeGrain: Last30Days).
  /// [locale] Language in which the recipient will receive the notification,
  /// [operator] The comparison operator.
  /// [threshold] Threshold value associated with a notification. It is always percent with a maximum of 2 decimal places.
  /// [thresholdType] The type of threshold.
  NotificationResponse({
    required this.contactEmails,
    this.contactGroups,
    this.contactRoles,
    required this.enabled,
    this.frequency,
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
      'frequency': ?frequency,
      'locale': ?locale,
      'operator': operator,
      'threshold': threshold,
      'thresholdType': ?thresholdType,
    };
  }

  factory NotificationResponse.fromMap(Map<String, dynamic> map) {
    return NotificationResponse(
      contactEmails: ((map['contactEmails'] as List).cast<String>()).input(),
      contactGroups: map['contactGroups'] == null ? null : ((map['contactGroups']! as List).cast<String>()).input(),
      contactRoles: map['contactRoles'] == null ? null : ((map['contactRoles']! as List).cast<String>()).input(),
      enabled: (map['enabled'] as bool).input(),
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      locale: map['locale'] == null ? null : (map['locale']! as String).input(),
      operator: (map['operator'] as String).input(),
      threshold: (map['threshold'] as double).input(),
      thresholdType: map['thresholdType'] == null ? null : (map['thresholdType']! as String).input(),
    );
  }
}

