// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'notification_channel_strategy_response.dart';
import 'notification_rate_limit_response.dart';

/// Control over how the notification channels in notification_channels are notified when this alert fires.
class AlertStrategyResponse {
  /// If an alert policy that was active has no data for this long, any open incidents will close
  final String autoClose;

  /// Control how notifications will be sent out, on a per-channel basis.
  final List<NotificationChannelStrategyResponse> notificationChannelStrategy;

  /// Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.
  final NotificationRateLimitResponse notificationRateLimit;

  AlertStrategyResponse({
    required this.autoClose,
    required this.notificationChannelStrategy,
    required this.notificationRateLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoClose'] = autoClose;
    map['notificationChannelStrategy'] = Input.encodeList<
            NotificationChannelStrategyResponse, Map<String, dynamic>>(
        notificationChannelStrategy, (value) => value.toMap());
    map['notificationRateLimit'] = notificationRateLimit.toMap();
    return map;
  }

  factory AlertStrategyResponse.fromMap(Map<String, dynamic> map) {
    return AlertStrategyResponse(
      autoClose: map['autoClose'] as String,
      notificationChannelStrategy:
          Input.decodeList<NotificationChannelStrategyResponse>(
              map['notificationChannelStrategy'],
              (value) => NotificationChannelStrategyResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      notificationRateLimit: NotificationRateLimitResponse.fromMap(
          (map['notificationRateLimit'] as Map).cast<String, dynamic>()),
    );
  }
}
