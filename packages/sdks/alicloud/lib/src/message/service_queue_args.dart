// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_queue_dlq_policy.dart';

/// {@template pulumi_message_service_queue_service_queue_args_doc}
/// The set of arguments for ServiceQueue.
/// {@endtemplate}
/// {@macro pulumi_message_service_queue_service_queue_args_doc}
class ServiceQueueArgs {
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
  final pulumi.Input<String> queueName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The duration for which a message stays in the Inactive state after the message is received from the queue. Valid values: `1` to `43200`. Unit: seconds. Default value: `30`.
  final pulumi.Input<int>? visibilityTimeout;

  /// Creates a new [ServiceQueueArgs].
  /// [delaySeconds] The period after which all messages sent to the queue are consumed. Default value: `0`. Valid values: `0` to `604800`. Unit: seconds.
  /// [dlqPolicy] The dead-letter queue policy. See `dlq_policy` below.
  /// [loggingEnabled] Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  /// [maximumMessageSize] The maximum length of the message that is sent to the queue. Valid values: `1024` to `65536`. Unit: bytes. Default value: `65536`.
  /// [messageRetentionPeriod] The maximum duration for which a message is retained in the queue. After the specified retention period ends, the message is deleted regardless of whether the message is received. Valid values: `60` to `604800`. Unit: seconds. Default value: `345600`.
  /// [pollingWaitSeconds] The maximum duration for which long polling requests are held after the ReceiveMessage operation is called. Valid values: `0` to `30`. Unit: seconds. Default value: `0`.
  /// [queueName] The name of the queue.
  /// [tags] A mapping of tags to assign to the resource.
  /// [visibilityTimeout] The duration for which a message stays in the Inactive state after the message is received from the queue. Valid values: `1` to `43200`. Unit: seconds. Default value: `30`.
  ServiceQueueArgs({
    this.delaySeconds,
    this.dlqPolicy,
    this.loggingEnabled,
    this.maximumMessageSize,
    this.messageRetentionPeriod,
    this.pollingWaitSeconds,
    required this.queueName,
    this.tags,
    this.visibilityTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delaySeconds': ?delaySeconds,
      'dlqPolicy': ?pulumi.Input.mapOptionalInputValue<ServiceQueueDlqPolicy, Map<String, dynamic>>(dlqPolicy, (value) => value.toMap()),
      'loggingEnabled': ?loggingEnabled,
      'maximumMessageSize': ?maximumMessageSize,
      'messageRetentionPeriod': ?messageRetentionPeriod,
      'pollingWaitSeconds': ?pollingWaitSeconds,
      'queueName': queueName,
      'tags': ?tags,
      'visibilityTimeout': ?visibilityTimeout,
    };
  }

  factory ServiceQueueArgs.fromMap(Map<String, dynamic> map) {
    return ServiceQueueArgs(
      delaySeconds: map['delaySeconds'] == null ? null : (map['delaySeconds'] as int).input(),
      dlqPolicy: map['dlqPolicy'] == null ? null : (ServiceQueueDlqPolicy.fromMap((map['dlqPolicy'] as Map).cast<String, dynamic>())).input(),
      loggingEnabled: map['loggingEnabled'] == null ? null : (map['loggingEnabled'] as bool).input(),
      maximumMessageSize: map['maximumMessageSize'] == null ? null : (map['maximumMessageSize'] as int).input(),
      messageRetentionPeriod: map['messageRetentionPeriod'] == null ? null : (map['messageRetentionPeriod'] as int).input(),
      pollingWaitSeconds: map['pollingWaitSeconds'] == null ? null : (map['pollingWaitSeconds'] as int).input(),
      queueName: (map['queueName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      visibilityTimeout: map['visibilityTimeout'] == null ? null : (map['visibilityTimeout'] as int).input(),
    );
  }
}

