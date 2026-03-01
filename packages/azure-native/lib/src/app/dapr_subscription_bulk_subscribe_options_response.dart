// ignore_for_file: unused_element, unnecessary_cast


/// Dapr PubSub Bulk Subscription Options.
class DaprSubscriptionBulkSubscribeOptionsResponse {
  /// Enable bulk subscription
  final bool? enabled;
  /// Maximum duration in milliseconds to wait before a bulk message is sent to the app.
  final int? maxAwaitDurationMs;
  /// Maximum number of messages to deliver in a bulk message.
  final int? maxMessagesCount;

  /// Creates a new [DaprSubscriptionBulkSubscribeOptionsResponse].
  /// [enabled] Enable bulk subscription
  /// [maxAwaitDurationMs] Maximum duration in milliseconds to wait before a bulk message is sent to the app.
  /// [maxMessagesCount] Maximum number of messages to deliver in a bulk message.
  DaprSubscriptionBulkSubscribeOptionsResponse({
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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxAwaitDurationMs: map['maxAwaitDurationMs'] == null ? null : map['maxAwaitDurationMs'] as int,
      maxMessagesCount: map['maxMessagesCount'] == null ? null : map['maxMessagesCount'] as int,
    );
  }
}

