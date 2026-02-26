// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'notification_channel_strategy.dart';
import 'notification_rate_limit.dart';

/// Control over how the notification channels in notification_channels are notified when this alert fires.
class AlertStrategy {
  /// If an alert policy that was active has no data for this long, any open incidents will close
  final String? autoClose;

  /// Control how notifications will be sent out, on a per-channel basis.
  final List<NotificationChannelStrategy>? notificationChannelStrategy;

  /// Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.
  final NotificationRateLimit? notificationRateLimit;

  AlertStrategy({
    this.autoClose,
    this.notificationChannelStrategy,
    this.notificationRateLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoCloseValue = autoClose;
    if (autoCloseValue != null) {
      map['autoClose'] = autoCloseValue;
    }
    final notificationChannelStrategyValue = notificationChannelStrategy;
    if (notificationChannelStrategyValue != null) {
      map['notificationChannelStrategy'] =
          Input.encodeList<NotificationChannelStrategy, Map<String, dynamic>>(
              notificationChannelStrategyValue, (value) => value.toMap());
    }
    final notificationRateLimitValue = notificationRateLimit;
    if (notificationRateLimitValue != null) {
      map['notificationRateLimit'] = notificationRateLimitValue.toMap();
    }
    return map;
  }

  factory AlertStrategy.fromMap(Map<String, dynamic> map) {
    return AlertStrategy(
      autoClose: map['autoClose'] == null ? null : map['autoClose'] as String,
      notificationChannelStrategy: map['notificationChannelStrategy'] == null
          ? null
          : Input.decodeList<NotificationChannelStrategy>(
              map['notificationChannelStrategy'],
              (value) => NotificationChannelStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      notificationRateLimit: map['notificationRateLimit'] == null
          ? null
          : NotificationRateLimit.fromMap(
              (map['notificationRateLimit'] as Map).cast<String, dynamic>()),
    );
  }
}
