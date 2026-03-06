// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bridge_configuration.dart';
import 'lambda_configuration.dart';
import 'queue_configuration.dart';
import 'topic_configuration.dart';

/// Definition of NotificationConfiguration
class NotificationConfiguration {
  /// Enables delivery of events to Amazon EventBridge. Amazon S3 can send events to Amazon EventBridge whenever certain events happen in your bucket, see [Using EventBridge](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventBridge.html) in the *Amazon S3 User Guide*. Unlike other destinations, delivery of events to EventBridge can be either enabled or disabled for a bucket. If enabled, all events will be sent to EventBridge and you can use EventBridge rules to route events to additional targets. For more information, see [What Is Amazon EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html) in the *Amazon EventBridge User Guide*
  final pulumi.Input<EventBridgeConfiguration>? eventBridgeConfiguration;
  /// Describes the LAMlong functions to invoke and the events for which to invoke them.
  final pulumi.Input<List<LambdaConfiguration>>? lambdaConfigurations;
  /// The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  final pulumi.Input<List<QueueConfiguration>>? queueConfigurations;
  /// The topic to which notifications are sent and the events for which notifications are generated.
  final pulumi.Input<List<TopicConfiguration>>? topicConfigurations;

  /// Creates a new [NotificationConfiguration].
  /// [eventBridgeConfiguration] Enables delivery of events to Amazon EventBridge. Amazon S3 can send events to Amazon EventBridge whenever certain events happen in your bucket, see [Using EventBridge](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventBridge.html) in the *Amazon S3 User Guide*. Unlike other destinations, delivery of events to EventBridge can be either enabled or disabled for a bucket. If enabled, all events will be sent to EventBridge and you can use EventBridge rules to route events to additional targets. For more information, see [What Is Amazon EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html) in the *Amazon EventBridge User Guide*
  /// [lambdaConfigurations] Describes the LAMlong functions to invoke and the events for which to invoke them.
  /// [queueConfigurations] The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  /// [topicConfigurations] The topic to which notifications are sent and the events for which notifications are generated.
  const NotificationConfiguration({
    this.eventBridgeConfiguration,
    this.lambdaConfigurations,
    this.queueConfigurations,
    this.topicConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBridgeConfiguration': ?pulumi.Input.mapOptionalInputValue<EventBridgeConfiguration, Map<String, dynamic>>(eventBridgeConfiguration, (value) => value.toMap()),
      'lambdaConfigurations': ?pulumi.Input.mapOptionalInputValue<List<LambdaConfiguration>, List<Map<String, dynamic>>>(lambdaConfigurations, (value) => pulumi.Input.encodeList<LambdaConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queueConfigurations': ?pulumi.Input.mapOptionalInputValue<List<QueueConfiguration>, List<Map<String, dynamic>>>(queueConfigurations, (value) => pulumi.Input.encodeList<QueueConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topicConfigurations': ?pulumi.Input.mapOptionalInputValue<List<TopicConfiguration>, List<Map<String, dynamic>>>(topicConfigurations, (value) => pulumi.Input.encodeList<TopicConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return NotificationConfiguration(
      eventBridgeConfiguration: (() { final guardedValue = map['eventBridgeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventBridgeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaConfigurations: (() { final guardedValue = map['lambdaConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LambdaConfiguration>(guardedValue, (value) => LambdaConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queueConfigurations: (() { final guardedValue = map['queueConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueueConfiguration>(guardedValue, (value) => QueueConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      topicConfigurations: (() { final guardedValue = map['topicConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopicConfiguration>(guardedValue, (value) => TopicConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

