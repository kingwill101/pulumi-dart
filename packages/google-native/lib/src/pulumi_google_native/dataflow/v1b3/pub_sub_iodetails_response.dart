// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a Pub/Sub connector used by the job.
class PubSubIODetailsResponse {
  /// Subscription used in the connection.
  final String subscription;

  /// Topic accessed in the connection.
  final String topic;

  PubSubIODetailsResponse({
    required this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subscription'] = subscription;
    map['topic'] = topic;
    return map;
  }

  factory PubSubIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return PubSubIODetailsResponse(
      subscription: map['subscription'] as String,
      topic: map['topic'] as String,
    );
  }
}
