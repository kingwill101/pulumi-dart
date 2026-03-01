// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// This attribute defines the length of time, in seconds, after which every message sent to the queue is dequeued. Valid value range: 0-604800 seconds, i.e., 0 to 7 days. Default value to 0.
  final pulumi.Input<int>? delaySeconds;
  /// This indicates the maximum length, in bytes, of any message body sent to the queue. Valid value range: 1024-65536, i.e., 1K to 64K. Default value to 65536.
  final pulumi.Input<int>? maximumMessageSize;
  /// Messages are deleted from the queue after a specified length of time, whether they have been activated or not. This attribute defines the viability period, in seconds, for every message in the queue. Valid value range: 60-604800 seconds, i.e., 1 minutes to 7 days. Default value to 345600.
  final pulumi.Input<int>? messageRetentionPeriod;
  /// Two queues on a single account in the same region cannot have the same name. A queue name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters .
  final pulumi.Input<String>? name;
  /// Long polling is measured in seconds. When this attribute is set to 0, long polling is disabled. When it is not set to 0, long polling is enabled and message dequeue requests will be processed only when valid messages are received or when long polling times out. Valid value range: 0-30 seconds. Default value to 0.
  final pulumi.Input<int>? pollingWaitSeconds;
  /// The VisibilityTimeout attribute of the queue. A dequeued messages will change from active (visible) status to inactive (invisible) status, and this attribute defines the length of time, in seconds, that messages remain invisible. Messages return to active status after the set period. Valid value range: 1-43200 seconds, i.e., 1 seconds to 12 hours. Default value to 30.
  final pulumi.Input<int>? visibilityTimeout;

  /// Creates a new [QueueState].
  /// [delaySeconds] This attribute defines the length of time, in seconds, after which every message sent to the queue is dequeued. Valid value range: 0-604800 seconds, i.e., 0 to 7 days. Default value to 0.
  /// [maximumMessageSize] This indicates the maximum length, in bytes, of any message body sent to the queue. Valid value range: 1024-65536, i.e., 1K to 64K. Default value to 65536.
  /// [messageRetentionPeriod] Messages are deleted from the queue after a specified length of time, whether they have been activated or not. This attribute defines the viability period, in seconds, for every message in the queue. Valid value range: 60-604800 seconds, i.e., 1 minutes to 7 days. Default value to 345600.
  /// [name] Two queues on a single account in the same region cannot have the same name. A queue name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters .
  /// [pollingWaitSeconds] Long polling is measured in seconds. When this attribute is set to 0, long polling is disabled. When it is not set to 0, long polling is enabled and message dequeue requests will be processed only when valid messages are received or when long polling times out. Valid value range: 0-30 seconds. Default value to 0.
  /// [visibilityTimeout] The VisibilityTimeout attribute of the queue. A dequeued messages will change from active (visible) status to inactive (invisible) status, and this attribute defines the length of time, in seconds, that messages remain invisible. Messages return to active status after the set period. Valid value range: 1-43200 seconds, i.e., 1 seconds to 12 hours. Default value to 30.
  QueueState({
    pulumi.Output<int>? delaySeconds,
    pulumi.Output<int>? maximumMessageSize,
    pulumi.Output<int>? messageRetentionPeriod,
    pulumi.Output<String>? name,
    pulumi.Output<int>? pollingWaitSeconds,
    pulumi.Output<int>? visibilityTimeout,
  }) :
      delaySeconds = pulumi.Input.asOptionalInput<int>(delaySeconds),
      maximumMessageSize = pulumi.Input.asOptionalInput<int>(maximumMessageSize),
      messageRetentionPeriod = pulumi.Input.asOptionalInput<int>(messageRetentionPeriod),
      name = pulumi.Input.asOptionalInput<String>(name),
      pollingWaitSeconds = pulumi.Input.asOptionalInput<int>(pollingWaitSeconds),
      visibilityTimeout = pulumi.Input.asOptionalInput<int>(visibilityTimeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delaySeconds': ?delaySeconds,
      'maximumMessageSize': ?maximumMessageSize,
      'messageRetentionPeriod': ?messageRetentionPeriod,
      'name': ?name,
      'pollingWaitSeconds': ?pollingWaitSeconds,
      'visibilityTimeout': ?visibilityTimeout,
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      delaySeconds: map['delaySeconds'] == null ? null : pulumi.Output.create<int>(map['delaySeconds'] as int),
      maximumMessageSize: map['maximumMessageSize'] == null ? null : pulumi.Output.create<int>(map['maximumMessageSize'] as int),
      messageRetentionPeriod: map['messageRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['messageRetentionPeriod'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pollingWaitSeconds: map['pollingWaitSeconds'] == null ? null : pulumi.Output.create<int>(map['pollingWaitSeconds'] as int),
      visibilityTimeout: map['visibilityTimeout'] == null ? null : pulumi.Output.create<int>(map['visibilityTimeout'] as int),
    );
  }
}

