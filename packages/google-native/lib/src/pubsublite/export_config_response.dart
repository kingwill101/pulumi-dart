// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub_config_response.dart';

/// Configuration for a Pub/Sub Lite subscription that writes messages to a destination. User subscriber clients must not connect to this subscription.
class ExportConfigResponse {
  /// The current state of the export, which may be different to the desired state due to errors. This field is output only.
  final String currentState;

  /// Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  final String deadLetterTopic;

  /// The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  final String desiredState;

  /// Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  final PubSubConfigResponse pubsubConfig;

  /// Creates a new [ExportConfigResponse].
  /// [currentState] The current state of the export, which may be different to the desired state due to errors. This field is output only.
  /// [deadLetterTopic] Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  /// [desiredState] The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  /// [pubsubConfig] Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  ExportConfigResponse({
    required this.currentState,
    required this.deadLetterTopic,
    required this.desiredState,
    required this.pubsubConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentState'] = currentState;
    map['deadLetterTopic'] = deadLetterTopic;
    map['desiredState'] = desiredState;
    map['pubsubConfig'] = pubsubConfig.toMap();
    return map;
  }

  factory ExportConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExportConfigResponse(
      currentState: map['currentState'] as String,
      deadLetterTopic: map['deadLetterTopic'] as String,
      desiredState: map['desiredState'] as String,
      pubsubConfig: PubSubConfigResponse.fromMap(
          (map['pubsubConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
