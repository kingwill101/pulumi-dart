// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr PubSub Bulk Subscription Options.
class DaprSubscriptionBulkSubscribeOptionsResponse {
  /// Enable bulk subscription
  final pulumi.Input<bool>? enabled;
  /// Maximum duration in milliseconds to wait before a bulk message is sent to the app.
  final pulumi.Input<int>? maxAwaitDurationMs;
  /// Maximum number of messages to deliver in a bulk message.
  final pulumi.Input<int>? maxMessagesCount;

  /// Creates a new [DaprSubscriptionBulkSubscribeOptionsResponse].
  /// [enabled] Enable bulk subscription
  /// [maxAwaitDurationMs] Maximum duration in milliseconds to wait before a bulk message is sent to the app.
  /// [maxMessagesCount] Maximum number of messages to deliver in a bulk message.
  const DaprSubscriptionBulkSubscribeOptionsResponse({
    this.enabled,
    this.maxAwaitDurationMs,
    this.maxMessagesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxAwaitDurationMs': ?maxAwaitDurationMs,
      'maxMessagesCount': ?maxMessagesCount,
    };
  }

  factory DaprSubscriptionBulkSubscribeOptionsResponse.fromMap(Map<String, dynamic> map) {
    return DaprSubscriptionBulkSubscribeOptionsResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxAwaitDurationMs: (() { final guardedValue = map['maxAwaitDurationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxMessagesCount: (() { final guardedValue = map['maxMessagesCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
