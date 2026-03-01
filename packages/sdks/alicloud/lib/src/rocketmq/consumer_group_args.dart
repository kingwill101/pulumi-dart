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
    required pulumi.Output<ConsumerGroupConsumeRetryPolicy> consumeRetryPolicy,
    required pulumi.Output<String> consumerGroupId,
    pulumi.Output<String>? deliveryOrderType,
    required pulumi.Output<String> instanceId,
    pulumi.Output<int>? maxReceiveTps,
    pulumi.Output<String>? remark,
  }) :
      consumeRetryPolicy = pulumi.Input.asInput<ConsumerGroupConsumeRetryPolicy>(consumeRetryPolicy),
      consumerGroupId = pulumi.Input.asInput<String>(consumerGroupId),
      deliveryOrderType = pulumi.Input.asOptionalInput<String>(deliveryOrderType),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      maxReceiveTps = pulumi.Input.asOptionalInput<int>(maxReceiveTps),
      remark = pulumi.Input.asOptionalInput<String>(remark);

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
      consumeRetryPolicy: pulumi.Output.create<ConsumerGroupConsumeRetryPolicy>(ConsumerGroupConsumeRetryPolicy.fromMap((map['consumeRetryPolicy'] as Map).cast<String, dynamic>())),
      consumerGroupId: pulumi.Output.create<String>(map['consumerGroupId'] as String),
      deliveryOrderType: map['deliveryOrderType'] == null ? null : pulumi.Output.create<String>(map['deliveryOrderType'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      maxReceiveTps: map['maxReceiveTps'] == null ? null : pulumi.Output.create<int>(map['maxReceiveTps'] as int),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
    );
  }
}

