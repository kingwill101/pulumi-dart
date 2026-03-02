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
    this.consumeRetryPolicy,
    this.consumerGroupId,
    this.createTime,
    this.deliveryOrderType,
    this.instanceId,
    this.maxReceiveTps,
    this.regionId,
    this.remark,
    this.status,
  });

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
      consumeRetryPolicy: map['consumeRetryPolicy'] == null ? null : (ConsumerGroupConsumeRetryPolicy.fromMap((map['consumeRetryPolicy']! as Map).cast<String, dynamic>())).input(),
      consumerGroupId: map['consumerGroupId'] == null ? null : (map['consumerGroupId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deliveryOrderType: map['deliveryOrderType'] == null ? null : (map['deliveryOrderType']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      maxReceiveTps: map['maxReceiveTps'] == null ? null : (map['maxReceiveTps']! as int).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

