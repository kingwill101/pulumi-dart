// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_group_consume_retry_policy.dart';

/// {@template pulumi_rocketmq_consumer_group_consumer_group_args_doc}
/// The set of arguments for ConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_consumer_group_consumer_group_args_doc}
class ConsumerGroupArgs {
  /// Consumption retry strategy. See `consume_retry_policy` below.
  final pulumi.Input<ConsumerGroupConsumeRetryPolicy> consumeRetryPolicy;
  /// The first ID of the resource.
  final pulumi.Input<String> consumerGroupId;
  /// Delivery order.
  final pulumi.Input<String>? deliveryOrderType;
  /// Instance ID.
  final pulumi.Input<String> instanceId;
  /// Maximum received message tps.
  final pulumi.Input<int>? maxReceiveTps;
  /// Custom remarks.
  final pulumi.Input<String>? remark;

  /// Creates a new [ConsumerGroupArgs].
  /// [consumeRetryPolicy] Consumption retry strategy. See `consume_retry_policy` below.
  /// [consumerGroupId] The first ID of the resource.
  /// [deliveryOrderType] Delivery order.
  /// [instanceId] Instance ID.
  /// [maxReceiveTps] Maximum received message tps.
  /// [remark] Custom remarks.
  ConsumerGroupArgs({
    required this.consumeRetryPolicy,
    required this.consumerGroupId,
    this.deliveryOrderType,
    required this.instanceId,
    this.maxReceiveTps,
    this.remark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeRetryPolicy': pulumi.Input.mapInputValue<ConsumerGroupConsumeRetryPolicy, Map<String, dynamic>>(consumeRetryPolicy, (value) => value.toMap()),
      'consumerGroupId': consumerGroupId,
      'deliveryOrderType': ?deliveryOrderType,
      'instanceId': instanceId,
      'maxReceiveTps': ?maxReceiveTps,
      'remark': ?remark,
    };
  }

  factory ConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupArgs(
      consumeRetryPolicy: (ConsumerGroupConsumeRetryPolicy.fromMap((map['consumeRetryPolicy'] as Map).cast<String, dynamic>())).input(),
      consumerGroupId: (map['consumerGroupId'] as String).input(),
      deliveryOrderType: map['deliveryOrderType'] == null ? null : (map['deliveryOrderType'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      maxReceiveTps: map['maxReceiveTps'] == null ? null : (map['maxReceiveTps'] as int).input(),
      remark: map['remark'] == null ? null : (map['remark'] as String).input(),
    );
  }
}

