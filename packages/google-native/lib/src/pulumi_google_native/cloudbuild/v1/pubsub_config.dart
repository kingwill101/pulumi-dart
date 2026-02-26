// ignore_for_file: unused_element, unnecessary_cast

import 'pubsub_config_state.dart';

/// PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.
class PubsubConfig {
  /// Service account that will make the push request.
  final String? serviceAccountEmail;

  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final PubsubConfigState? state;

  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.
  final String? topic;

  PubsubConfig({
    this.serviceAccountEmail,
    this.state,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory PubsubConfig.fromMap(Map<String, dynamic> map) {
    return PubsubConfig(
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      state: map['state'] == null
          ? null
          : PubsubConfigState.fromValue(map['state'] as String),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
