// ignore_for_file: unused_element, unnecessary_cast

import 'export_config_desired_state.dart';
import 'pub_sub_config.dart';

/// Configuration for a Pub/Sub Lite subscription that writes messages to a destination. User subscriber clients must not connect to this subscription.
class ExportConfig {
  /// Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  final String? deadLetterTopic;

  /// The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  final ExportConfigDesiredState? desiredState;

  /// Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  final PubSubConfig? pubsubConfig;

  /// Creates a new [ExportConfig].
  /// [deadLetterTopic] Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported to the destination. For example, the message can not be published to the Pub/Sub service because it does not satisfy the constraints documented at https://cloud.google.com/pubsub/docs/publisher. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}. Must be within the same project and location as the subscription. The topic may be changed or removed.
  /// [desiredState] The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will result in an error.
  /// [pubsubConfig] Messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a Pub/Sub topic.
  ExportConfig({
    this.deadLetterTopic,
    this.desiredState,
    this.pubsubConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deadLetterTopicValue = deadLetterTopic;
    if (deadLetterTopicValue != null) {
      map['deadLetterTopic'] = deadLetterTopicValue;
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue.value;
    }
    final pubsubConfigValue = pubsubConfig;
    if (pubsubConfigValue != null) {
      map['pubsubConfig'] = pubsubConfigValue.toMap();
    }
    return map;
  }

  factory ExportConfig.fromMap(Map<String, dynamic> map) {
    return ExportConfig(
      deadLetterTopic: map['deadLetterTopic'] == null
          ? null
          : map['deadLetterTopic'] as String,
      desiredState: map['desiredState'] == null
          ? null
          : ExportConfigDesiredState.fromValue(map['desiredState'] as String),
      pubsubConfig: map['pubsubConfig'] == null
          ? null
          : PubSubConfig.fromMap(
              (map['pubsubConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
