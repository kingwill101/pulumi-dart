// ignore_for_file: unused_element, unnecessary_cast

class TriggerPubsubConfig {
  /// Service account that will make the push request.
  final String? serviceAccountEmail;

  /// (Output)
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final String? state;

  /// (Output)
  /// Output only. Name of the subscription.
  final String? subscription;

  /// The name of the topic from which this subscription is receiving messages.
  final String topic;

  TriggerPubsubConfig({
    this.serviceAccountEmail,
    this.state,
    this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final subscriptionValue = subscription;
    if (subscriptionValue != null) {
      map['subscription'] = subscriptionValue;
    }
    map['topic'] = topic;
    return map;
  }

  factory TriggerPubsubConfig.fromMap(Map<String, dynamic> map) {
    return TriggerPubsubConfig(
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      subscription:
          map['subscription'] == null ? null : map['subscription'] as String,
      topic: map['topic'] as String,
    );
  }
}
