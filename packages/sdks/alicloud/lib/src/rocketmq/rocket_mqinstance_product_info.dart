// ignore_for_file: unused_element, unnecessary_cast


class RocketMQInstanceProductInfo {
  /// is open auto scaling.
  final bool? autoScaling;
  /// Duration of message retention. Unit: hours.  For the range of values, please refer to [Usage Limits](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/usage-limits)>Resource Quotas>Limitations on Message Retention.  The message storage in AlibabaCloud RocketMQ is fully implemented in a serverless and elastic manner, with charges based on the actual storage space. You can control the storage capacity of messages by adjusting the duration of message retention. For more information, please see [Storage Fees](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/storage-fees).
  final int? messageRetentionTime;
  /// Message sending and receiving calculation specifications. For details about the upper limit for sending and receiving messages, see [Instance Specifications](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-specifications).
  final String msgProcessSpec;
  /// message send receive ratio.  Value range: [0.2, 0.5].
  final double? sendReceiveRatio;
  /// Specifies whether to enable the encryption at rest feature. Valid values: `true`, `false`.
  final bool? storageEncryption;
  /// The key for encryption at rest.
  final String? storageSecretKey;
  /// is support auto scaling.
  final bool? supportAutoScaling;
  /// Whether to enable the message trace function. Valid values: `true`, `false`.
  final bool? traceOn;

  /// Creates a new [RocketMQInstanceProductInfo].
  /// [autoScaling] is open auto scaling.
  /// [messageRetentionTime] Duration of message retention. Unit: hours.  For the range of values, please refer to [Usage Limits](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/usage-limits)>Resource Quotas>Limitations on Message Retention.  The message storage in AlibabaCloud RocketMQ is fully implemented in a serverless and elastic manner, with charges based on the actual storage space. You can control the storage capacity of messages by adjusting the duration of message retention. For more information, please see [Storage Fees](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/storage-fees).
  /// [msgProcessSpec] Message sending and receiving calculation specifications. For details about the upper limit for sending and receiving messages, see [Instance Specifications](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/instance-specifications).
  /// [sendReceiveRatio] message send receive ratio.  Value range: [0.2, 0.5].
  /// [storageEncryption] Specifies whether to enable the encryption at rest feature. Valid values: `true`, `false`.
  /// [storageSecretKey] The key for encryption at rest.
  /// [supportAutoScaling] is support auto scaling.
  /// [traceOn] Whether to enable the message trace function. Valid values: `true`, `false`.
  RocketMQInstanceProductInfo({
    this.autoScaling,
    this.messageRetentionTime,
    required this.msgProcessSpec,
    this.sendReceiveRatio,
    this.storageEncryption,
    this.storageSecretKey,
    this.supportAutoScaling,
    this.traceOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScaling': ?autoScaling,
      'messageRetentionTime': ?messageRetentionTime,
      'msgProcessSpec': msgProcessSpec,
      'sendReceiveRatio': ?sendReceiveRatio,
      'storageEncryption': ?storageEncryption,
      'storageSecretKey': ?storageSecretKey,
      'supportAutoScaling': ?supportAutoScaling,
      'traceOn': ?traceOn,
    };
  }

  factory RocketMQInstanceProductInfo.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceProductInfo(
      autoScaling: map['autoScaling'] == null ? null : map['autoScaling'] as bool,
      messageRetentionTime: map['messageRetentionTime'] == null ? null : map['messageRetentionTime'] as int,
      msgProcessSpec: map['msgProcessSpec'] as String,
      sendReceiveRatio: map['sendReceiveRatio'] == null ? null : map['sendReceiveRatio'] as double,
      storageEncryption: map['storageEncryption'] == null ? null : map['storageEncryption'] as bool,
      storageSecretKey: map['storageSecretKey'] == null ? null : map['storageSecretKey'] as String,
      supportAutoScaling: map['supportAutoScaling'] == null ? null : map['supportAutoScaling'] as bool,
      traceOn: map['traceOn'] == null ? null : map['traceOn'] as bool,
    );
  }
}

