// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bridge_configuration.dart';
import 'lambda_configuration.dart';
import 'queue_configuration.dart';
import 'topic_configuration.dart';

/// Definition of NotificationConfiguration
class NotificationConfiguration {
  /// Enables delivery of events to Amazon EventBridge. Amazon S3 can send events to Amazon EventBridge whenever certain events happen in your bucket, see [Using EventBridge](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventBridge.html) in the *Amazon S3 User Guide*. Unlike other destinations, delivery of events to EventBridge can be either enabled or disabled for a bucket. If enabled, all events will be sent to EventBridge and you can use EventBridge rules to route events to additional targets. For more information, see [What Is Amazon EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html) in the *Amazon EventBridge User Guide*
  final EventBridgeConfiguration? eventBridgeConfiguration;
  /// Describes the LAMlong functions to invoke and the events for which to invoke them.
  final List<LambdaConfiguration>? lambdaConfigurations;
  /// The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  final List<QueueConfiguration>? queueConfigurations;
  /// The topic to which notifications are sent and the events for which notifications are generated.
  final List<TopicConfiguration>? topicConfigurations;

  /// Creates a new [NotificationConfiguration].
  /// [eventBridgeConfiguration] Enables delivery of events to Amazon EventBridge. Amazon S3 can send events to Amazon EventBridge whenever certain events happen in your bucket, see [Using EventBridge](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventBridge.html) in the *Amazon S3 User Guide*. Unlike other destinations, delivery of events to EventBridge can be either enabled or disabled for a bucket. If enabled, all events will be sent to EventBridge and you can use EventBridge rules to route events to additional targets. For more information, see [What Is Amazon EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html) in the *Amazon EventBridge User Guide*
  /// [lambdaConfigurations] Describes the LAMlong functions to invoke and the events for which to invoke them.
  /// [queueConfigurations] The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  /// [topicConfigurations] The topic to which notifications are sent and the events for which notifications are generated.
  NotificationConfiguration({
    this.eventBridgeConfiguration,
    this.lambdaConfigurations,
    this.queueConfigurations,
    this.topicConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBridgeConfiguration': ?eventBridgeConfiguration == null ? null : eventBridgeConfiguration!.toMap(),
      'lambdaConfigurations': ?lambdaConfigurations == null ? null : pulumi.Input.encodeList<LambdaConfiguration, Map<String, dynamic>>(lambdaConfigurations!, (value) => value.toMap()),
      'queueConfigurations': ?queueConfigurations == null ? null : pulumi.Input.encodeList<QueueConfiguration, Map<String, dynamic>>(queueConfigurations!, (value) => value.toMap()),
      'topicConfigurations': ?topicConfigurations == null ? null : pulumi.Input.encodeList<TopicConfiguration, Map<String, dynamic>>(topicConfigurations!, (value) => value.toMap()),
    };
  }

  factory NotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return NotificationConfiguration(
      eventBridgeConfiguration: map['eventBridgeConfiguration'] == null ? null : EventBridgeConfiguration.fromMap((map['eventBridgeConfiguration'] as Map).cast<String, dynamic>()),
      lambdaConfigurations: map['lambdaConfigurations'] == null ? null : pulumi.Input.decodeList<LambdaConfiguration>(map['lambdaConfigurations'], (value) => LambdaConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      queueConfigurations: map['queueConfigurations'] == null ? null : pulumi.Input.decodeList<QueueConfiguration>(map['queueConfigurations'], (value) => QueueConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      topicConfigurations: map['topicConfigurations'] == null ? null : pulumi.Input.decodeList<TopicConfiguration>(map['topicConfigurations'], (value) => TopicConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

