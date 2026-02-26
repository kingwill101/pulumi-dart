// ignore_for_file: unused_element, unnecessary_cast

/// PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.
class PubsubConfigResponse {
  /// Service account that will make the push request.
  final String serviceAccountEmail;

  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final String state;

  /// Name of the subscription. Format is `projects/{project}/subscriptions/{subscription}`.
  final String subscription;

  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.
  final String topic;

  PubsubConfigResponse({
    required this.serviceAccountEmail,
    required this.state,
    required this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['state'] = state;
    map['subscription'] = subscription;
    map['topic'] = topic;
    return map;
  }

  factory PubsubConfigResponse.fromMap(Map<String, dynamic> map) {
    return PubsubConfigResponse(
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      state: map['state'] as String,
      subscription: map['subscription'] as String,
      topic: map['topic'] as String,
    );
  }
}
