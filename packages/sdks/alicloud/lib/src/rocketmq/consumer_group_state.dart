// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_group_consume_retry_policy.dart';

/// Input properties used for looking up and filtering ConsumerGroup resources.
class ConsumerGroupState {
  /// Consumption retry strategy. See `consume_retry_policy` below.
  final pulumi.Input<ConsumerGroupConsumeRetryPolicy>? consumeRetryPolicy;
  /// The first ID of the resource.
  final pulumi.Input<String>? consumerGroupId;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Delivery order.
  final pulumi.Input<String>? deliveryOrderType;
  /// Instance ID.
  final pulumi.Input<String>? instanceId;
  /// Maximum received message tps.
  final pulumi.Input<int>? maxReceiveTps;
  /// (Available since v1.247.0) The ID of the region in which the instance resides.
  final pulumi.Input<String>? regionId;
  /// Custom remarks.
  final pulumi.Input<String>? remark;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [ConsumerGroupState].
  /// [consumeRetryPolicy] Consumption retry strategy. See `consume_retry_policy` below.
  /// [consumerGroupId] The first ID of the resource.
  /// [createTime] The creation time of the resource.
  /// [deliveryOrderType] Delivery order.
  /// [instanceId] Instance ID.
  /// [maxReceiveTps] Maximum received message tps.
  /// [regionId] (Available since v1.247.0) The ID of the region in which the instance resides.
  /// [remark] Custom remarks.
  /// [status] The status of the resource.
  ConsumerGroupState({
    pulumi.Output<ConsumerGroupConsumeRetryPolicy>? consumeRetryPolicy,
    pulumi.Output<String>? consumerGroupId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deliveryOrderType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? maxReceiveTps,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? status,
  }) :
      consumeRetryPolicy = pulumi.Input.asOptionalInput<ConsumerGroupConsumeRetryPolicy>(consumeRetryPolicy),
      consumerGroupId = pulumi.Input.asOptionalInput<String>(consumerGroupId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deliveryOrderType = pulumi.Input.asOptionalInput<String>(deliveryOrderType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      maxReceiveTps = pulumi.Input.asOptionalInput<int>(maxReceiveTps),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeRetryPolicy': ?pulumi.Input.mapOptionalInputValue<ConsumerGroupConsumeRetryPolicy, Map<String, dynamic>>(consumeRetryPolicy, (value) => value.toMap()),
      'consumerGroupId': ?consumerGroupId,
      'createTime': ?createTime,
      'deliveryOrderType': ?deliveryOrderType,
      'instanceId': ?instanceId,
      'maxReceiveTps': ?maxReceiveTps,
      'regionId': ?regionId,
      'remark': ?remark,
      'status': ?status,
    };
  }

  factory ConsumerGroupState.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupState(
      consumeRetryPolicy: map['consumeRetryPolicy'] == null ? null : pulumi.Output.create<ConsumerGroupConsumeRetryPolicy>(ConsumerGroupConsumeRetryPolicy.fromMap((map['consumeRetryPolicy'] as Map).cast<String, dynamic>())),
      consumerGroupId: map['consumerGroupId'] == null ? null : pulumi.Output.create<String>(map['consumerGroupId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deliveryOrderType: map['deliveryOrderType'] == null ? null : pulumi.Output.create<String>(map['deliveryOrderType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      maxReceiveTps: map['maxReceiveTps'] == null ? null : pulumi.Output.create<int>(map['maxReceiveTps'] as int),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

