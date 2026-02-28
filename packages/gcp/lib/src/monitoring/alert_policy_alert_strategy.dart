// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_alert_strategy_notification_channel_strategy.dart';
import 'alert_policy_alert_strategy_notification_rate_limit.dart';

class AlertPolicyAlertStrategy {
  /// If an alert policy that was active has no data for this long, any open incidents will close.
  final String? autoClose;
  /// Control over how the notification channels in `notification_channels`
  /// are notified when this alert fires, on a per-channel basis.
  /// Structure is documented below.
  final List<AlertPolicyAlertStrategyNotificationChannelStrategy>? notificationChannelStrategies;
  /// Control when notifications will be sent out.
  /// Each value may be one of: `NOTIFICATION_PROMPT_UNSPECIFIED`, `OPENED`, `CLOSED`.
  final List<String>? notificationPrompts;
  /// Required for alert policies with a LogMatch condition.
  /// This limit is not implemented for alert policies that are not log-based.
  /// Structure is documented below.
  final AlertPolicyAlertStrategyNotificationRateLimit? notificationRateLimit;

  /// Creates a new [AlertPolicyAlertStrategy].
  /// [autoClose] If an alert policy that was active has no data for this long, any open incidents will close.
  /// [notificationChannelStrategies] Control over how the notification channels in `notification_channels`
  /// [notificationPrompts] Control when notifications will be sent out.
  /// [notificationRateLimit] Required for alert policies with a LogMatch condition.
  AlertPolicyAlertStrategy({
    this.autoClose,
    this.notificationChannelStrategies,
    this.notificationPrompts,
    this.notificationRateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoClose': ?autoClose,
      'notificationChannelStrategies': ?notificationChannelStrategies == null ? null : pulumi.Input.encodeList<AlertPolicyAlertStrategyNotificationChannelStrategy, Map<String, dynamic>>(notificationChannelStrategies!, (value) => value.toMap()),
      'notificationPrompts': ?notificationPrompts,
      'notificationRateLimit': ?notificationRateLimit == null ? null : notificationRateLimit!.toMap(),
    };
  }

  factory AlertPolicyAlertStrategy.fromMap(Map<String, dynamic> map) {
    return AlertPolicyAlertStrategy(
      autoClose: map['autoClose'] == null ? null : map['autoClose'] as String,
      notificationChannelStrategies: map['notificationChannelStrategies'] == null ? null : pulumi.Input.decodeList<AlertPolicyAlertStrategyNotificationChannelStrategy>(map['notificationChannelStrategies'], (value) => AlertPolicyAlertStrategyNotificationChannelStrategy.fromMap((value as Map).cast<String, dynamic>())),
      notificationPrompts: map['notificationPrompts'] == null ? null : (map['notificationPrompts'] as List).cast<String>(),
      notificationRateLimit: map['notificationRateLimit'] == null ? null : AlertPolicyAlertStrategyNotificationRateLimit.fromMap((map['notificationRateLimit'] as Map).cast<String, dynamic>()),
    );
  }
}

