// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_queue_dlq_policy.dart';

/// Input properties used for looking up and filtering ServiceQueue resources.
class ServiceQueueState {
  /// (Available since v1.223.2) The time when the queue was created.
  final pulumi.Input<int>? createTime;
  /// The period after which all messages sent to the queue are consumed. Default value: `0`. Valid values: `0` to `604800`. Unit: seconds.
  final pulumi.Input<int>? delaySeconds;
  /// The dead-letter queue policy. See `dlq_policy` below.
  final pulumi.Input<ServiceQueueDlqPolicy>? dlqPolicy;
  /// Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  final pulumi.Input<bool>? loggingEnabled;
  /// The maximum length of the message that is sent to the queue. Valid values: `1024` to `65536`. Unit: bytes. Default value: `65536`.
  final pulumi.Input<int>? maximumMessageSize;
  /// The maximum duration for which a message is retained in the queue. After the specified retention period ends, the message is deleted regardless of whether the message is received. Valid values: `60` to `604800`. Unit: seconds. Default value: `345600`.
  final pulumi.Input<int>? messageRetentionPeriod;
  /// The maximum duration for which long polling requests are held after the ReceiveMessage operation is called. Valid values: `0` to `30`. Unit: seconds. Default value: `0`.
  final pulumi.Input<int>? pollingWaitSeconds;
  /// The name of the queue.
  final pulumi.Input<String>? queueName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The duration for which a message stays in the Inactive state after the message is received from the queue. Valid values: `1` to `43200`. Unit: seconds. Default value: `30`.
  final pulumi.Input<int>? visibilityTimeout;

  /// Creates a new [ServiceQueueState].
  /// [createTime] (Available since v1.223.2) The time when the queue was created.
  /// [delaySeconds] The period after which all messages sent to the queue are consumed. Default value: `0`. Valid values: `0` to `604800`. Unit: seconds.
  /// [dlqPolicy] The dead-letter queue policy. See `dlq_policy` below.
  /// [loggingEnabled] Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  /// [maximumMessageSize] The maximum length of the message that is sent to the queue. Valid values: `1024` to `65536`. Unit: bytes. Default value: `65536`.
  /// [messageRetentionPeriod] The maximum duration for which a message is retained in the queue. After the specified retention period ends, the message is deleted regardless of whether the message is received. Valid values: `60` to `604800`. Unit: seconds. Default value: `345600`.
  /// [pollingWaitSeconds] The maximum duration for which long polling requests are held after the ReceiveMessage operation is called. Valid values: `0` to `30`. Unit: seconds. Default value: `0`.
  /// [queueName] The name of the queue.
  /// [tags] A mapping of tags to assign to the resource.
  /// [visibilityTimeout] The duration for which a message stays in the Inactive state after the message is received from the queue. Valid values: `1` to `43200`. Unit: seconds. Default value: `30`.
  ServiceQueueState({
    this.createTime,
    this.delaySeconds,
    this.dlqPolicy,
    this.loggingEnabled,
    this.maximumMessageSize,
    this.messageRetentionPeriod,
    this.pollingWaitSeconds,
    this.queueName,
    this.tags,
    this.visibilityTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'delaySeconds': ?delaySeconds,
      'dlqPolicy': ?pulumi.Input.mapOptionalInputValue<ServiceQueueDlqPolicy, Map<String, dynamic>>(dlqPolicy, (value) => value.toMap()),
      'loggingEnabled': ?loggingEnabled,
      'maximumMessageSize': ?maximumMessageSize,
      'messageRetentionPeriod': ?messageRetentionPeriod,
      'pollingWaitSeconds': ?pollingWaitSeconds,
      'queueName': ?queueName,
      'tags': ?tags,
      'visibilityTimeout': ?visibilityTimeout,
    };
  }

  factory ServiceQueueState.fromMap(Map<String, dynamic> map) {
    return ServiceQueueState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      delaySeconds: (() { final guardedValue = map['delaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dlqPolicy: (() { final guardedValue = map['dlqPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceQueueDlqPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingEnabled: (() { final guardedValue = map['loggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maximumMessageSize: (() { final guardedValue = map['maximumMessageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      messageRetentionPeriod: (() { final guardedValue = map['messageRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pollingWaitSeconds: (() { final guardedValue = map['pollingWaitSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      visibilityTimeout: (() { final guardedValue = map['visibilityTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

