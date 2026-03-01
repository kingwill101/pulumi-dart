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
    pulumi.Output<int>? createTime,
    pulumi.Output<int>? delaySeconds,
    pulumi.Output<ServiceQueueDlqPolicy>? dlqPolicy,
    pulumi.Output<bool>? loggingEnabled,
    pulumi.Output<int>? maximumMessageSize,
    pulumi.Output<int>? messageRetentionPeriod,
    pulumi.Output<int>? pollingWaitSeconds,
    pulumi.Output<String>? queueName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? visibilityTimeout,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      delaySeconds = pulumi.Input.asOptionalInput<int>(delaySeconds),
      dlqPolicy = pulumi.Input.asOptionalInput<ServiceQueueDlqPolicy>(dlqPolicy),
      loggingEnabled = pulumi.Input.asOptionalInput<bool>(loggingEnabled),
      maximumMessageSize = pulumi.Input.asOptionalInput<int>(maximumMessageSize),
      messageRetentionPeriod = pulumi.Input.asOptionalInput<int>(messageRetentionPeriod),
      pollingWaitSeconds = pulumi.Input.asOptionalInput<int>(pollingWaitSeconds),
      queueName = pulumi.Input.asOptionalInput<String>(queueName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      visibilityTimeout = pulumi.Input.asOptionalInput<int>(visibilityTimeout);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      delaySeconds: map['delaySeconds'] == null ? null : pulumi.Output.create<int>(map['delaySeconds'] as int),
      dlqPolicy: map['dlqPolicy'] == null ? null : pulumi.Output.create<ServiceQueueDlqPolicy>(ServiceQueueDlqPolicy.fromMap((map['dlqPolicy'] as Map).cast<String, dynamic>())),
      loggingEnabled: map['loggingEnabled'] == null ? null : pulumi.Output.create<bool>(map['loggingEnabled'] as bool),
      maximumMessageSize: map['maximumMessageSize'] == null ? null : pulumi.Output.create<int>(map['maximumMessageSize'] as int),
      messageRetentionPeriod: map['messageRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['messageRetentionPeriod'] as int),
      pollingWaitSeconds: map['pollingWaitSeconds'] == null ? null : pulumi.Output.create<int>(map['pollingWaitSeconds'] as int),
      queueName: map['queueName'] == null ? null : pulumi.Output.create<String>(map['queueName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      visibilityTimeout: map['visibilityTimeout'] == null ? null : pulumi.Output.create<int>(map['visibilityTimeout'] as int),
    );
  }
}

