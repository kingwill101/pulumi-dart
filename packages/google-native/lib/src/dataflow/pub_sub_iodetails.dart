// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a Pub/Sub connector used by the job.
class PubSubIODetails {
  /// Subscription used in the connection.
  final String? subscription;

  /// Topic accessed in the connection.
  final String? topic;

  /// Creates a new [PubSubIODetails].
  /// [subscription] Subscription used in the connection.
  /// [topic] Topic accessed in the connection.
  PubSubIODetails({
    this.subscription,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final subscriptionValue = subscription;
    if (subscriptionValue != null) {
      map['subscription'] = subscriptionValue;
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory PubSubIODetails.fromMap(Map<String, dynamic> map) {
    return PubSubIODetails(
      subscription:
          map['subscription'] == null ? null : map['subscription'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
