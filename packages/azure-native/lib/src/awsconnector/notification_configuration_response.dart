// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bridge_configuration_response.dart';
import 'lambda_configuration_response.dart';
import 'queue_configuration_response.dart';
import 'topic_configuration_response.dart';

/// Definition of NotificationConfiguration
class NotificationConfigurationResponse {
  /// Enables delivery of events to Amazon EventBridge. Amazon S3 can send events to Amazon EventBridge whenever certain events happen in your bucket, see [Using EventBridge](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventBridge.html) in the *Amazon S3 User Guide*. Unlike other destinations, delivery of events to EventBridge can be either enabled or disabled for a bucket. If enabled, all events will be sent to EventBridge and you can use EventBridge rules to route events to additional targets. For more information, see [What Is Amazon EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html) in the *Amazon EventBridge User Guide*
  final EventBridgeConfigurationResponse? eventBridgeConfiguration;
  /// Describes the LAMlong functions to invoke and the events for which to invoke them.
  final List<LambdaConfigurationResponse>? lambdaConfigurations;
  /// The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  final List<QueueConfigurationResponse>? queueConfigurations;
  /// The topic to which notifications are sent and the events for which notifications are generated.
  final List<TopicConfigurationResponse>? topicConfigurations;

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
      'eventBridgeConfiguration': ?eventBridgeConfiguration == null ? null : eventBridgeConfiguration!.toMap(),
      'lambdaConfigurations': ?lambdaConfigurations == null ? null : pulumi.Input.encodeList<LambdaConfigurationResponse, Map<String, dynamic>>(lambdaConfigurations!, (value) => value.toMap()),
      'queueConfigurations': ?queueConfigurations == null ? null : pulumi.Input.encodeList<QueueConfigurationResponse, Map<String, dynamic>>(queueConfigurations!, (value) => value.toMap()),
      'topicConfigurations': ?topicConfigurations == null ? null : pulumi.Input.encodeList<TopicConfigurationResponse, Map<String, dynamic>>(topicConfigurations!, (value) => value.toMap()),
    };
  }

  factory NotificationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NotificationConfigurationResponse(
      eventBridgeConfiguration: map['eventBridgeConfiguration'] == null ? null : EventBridgeConfigurationResponse.fromMap((map['eventBridgeConfiguration'] as Map).cast<String, dynamic>()),
      lambdaConfigurations: map['lambdaConfigurations'] == null ? null : pulumi.Input.decodeList<LambdaConfigurationResponse>(map['lambdaConfigurations'], (value) => LambdaConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      queueConfigurations: map['queueConfigurations'] == null ? null : pulumi.Input.decodeList<QueueConfigurationResponse>(map['queueConfigurations'], (value) => QueueConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      topicConfigurations: map['topicConfigurations'] == null ? null : pulumi.Input.decodeList<TopicConfigurationResponse>(map['topicConfigurations'], (value) => TopicConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

