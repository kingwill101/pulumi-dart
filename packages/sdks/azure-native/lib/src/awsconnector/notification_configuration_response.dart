// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bridge_configuration_response.dart';
import 'lambda_configuration_response.dart';
import 'queue_configuration_response.dart';
import 'topic_configuration_response.dart';

/// Definition of NotificationConfiguration
class NotificationConfigurationResponse {
  /// Enables delivery of events to Amazon EventBridge. Amazon S3 can send events to Amazon EventBridge whenever certain events happen in your bucket, see [Using EventBridge](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventBridge.html) in the *Amazon S3 User Guide*. Unlike other destinations, delivery of events to EventBridge can be either enabled or disabled for a bucket. If enabled, all events will be sent to EventBridge and you can use EventBridge rules to route events to additional targets. For more information, see [What Is Amazon EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html) in the *Amazon EventBridge User Guide*
  final pulumi.Input<EventBridgeConfigurationResponse>?
  eventBridgeConfiguration;

  /// Describes the LAMlong functions to invoke and the events for which to invoke them.
  final pulumi.Input<List<LambdaConfigurationResponse>>? lambdaConfigurations;

  /// The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  final pulumi.Input<List<QueueConfigurationResponse>>? queueConfigurations;

  /// The topic to which notifications are sent and the events for which notifications are generated.
  final pulumi.Input<List<TopicConfigurationResponse>>? topicConfigurations;

  /// Creates a new [NotificationConfigurationResponse].
  /// [eventBridgeConfiguration] Enables delivery of events to Amazon EventBridge. Amazon S3 can send events to Amazon EventBridge whenever certain events happen in your bucket, see [Using EventBridge](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventBridge.html) in the *Amazon S3 User Guide*. Unlike other destinations, delivery of events to EventBridge can be either enabled or disabled for a bucket. If enabled, all events will be sent to EventBridge and you can use EventBridge rules to route events to additional targets. For more information, see [What Is Amazon EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html) in the *Amazon EventBridge User Guide*
  /// [lambdaConfigurations] Describes the LAMlong functions to invoke and the events for which to invoke them.
  /// [queueConfigurations] The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  /// [topicConfigurations] The topic to which notifications are sent and the events for which notifications are generated.
  NotificationConfigurationResponse({
    this.eventBridgeConfiguration,
    this.lambdaConfigurations,
    this.queueConfigurations,
    this.topicConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBridgeConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            EventBridgeConfigurationResponse,
            Map<String, dynamic>
          >(eventBridgeConfiguration, (value) => value.toMap()),
      'lambdaConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<LambdaConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            lambdaConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  LambdaConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queueConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<QueueConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            queueConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  QueueConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'topicConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            topicConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  TopicConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NotificationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NotificationConfigurationResponse(
      eventBridgeConfiguration: (() {
        final guardedValue = map['eventBridgeConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventBridgeConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      lambdaConfigurations: (() {
        final guardedValue = map['lambdaConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LambdaConfigurationResponse>(
            guardedValue,
            (value) => LambdaConfigurationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      queueConfigurations: (() {
        final guardedValue = map['queueConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<QueueConfigurationResponse>(
            guardedValue,
            (value) => QueueConfigurationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      topicConfigurations: (() {
        final guardedValue = map['topicConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TopicConfigurationResponse>(
            guardedValue,
            (value) => TopicConfigurationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
