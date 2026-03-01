// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_traffic_qos_queue_traffic_qos_queue_args_doc}
/// The set of arguments for TrafficQosQueue.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_traffic_qos_queue_traffic_qos_queue_args_doc}
class TrafficQosQueueArgs {
  /// QoS queue bandwidth percentage.
  ///
  /// - When the QoS queue type is `Medium`, this field must be entered. Valid values: 1 to 100.
  /// - When the QoS queue type is `Default`, this field is "-".
  final pulumi.Input<String>? bandwidthPercent;
  /// The ID of the QoS policy.
  final pulumi.Input<String> qosId;
  /// The description of the QoS queue.
  /// The length is 0 to 256 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? queueDescription;
  /// The name of the QoS queue.
  /// The length is 0 to 128 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? queueName;
  /// QoS queue type, value:
  /// - `High`: High priority queue.
  /// - `Medium`: Normal priority queue.
  /// - `Default`: the Default priority queue.
  ///
  /// > **NOTE:**  Default priority queue cannot be created.
  final pulumi.Input<String> queueType;

  /// Creates a new [TrafficQosQueueArgs].
  /// [bandwidthPercent] QoS queue bandwidth percentage.
  /// [qosId] The ID of the QoS policy.
  /// [queueDescription] The description of the QoS queue.
  /// [queueName] The name of the QoS queue.
  /// [queueType] QoS queue type, value:
  TrafficQosQueueArgs({
    pulumi.Output<String>? bandwidthPercent,
    required pulumi.Output<String> qosId,
    pulumi.Output<String>? queueDescription,
    pulumi.Output<String>? queueName,
    required pulumi.Output<String> queueType,
  }) :
      bandwidthPercent = pulumi.Input.asOptionalInput<String>(bandwidthPercent),
      qosId = pulumi.Input.asInput<String>(qosId),
      queueDescription = pulumi.Input.asOptionalInput<String>(queueDescription),
      queueName = pulumi.Input.asOptionalInput<String>(queueName),
      queueType = pulumi.Input.asInput<String>(queueType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPercent': ?bandwidthPercent,
      'qosId': qosId,
      'queueDescription': ?queueDescription,
      'queueName': ?queueName,
      'queueType': queueType,
    };
  }

  factory TrafficQosQueueArgs.fromMap(Map<String, dynamic> map) {
    return TrafficQosQueueArgs(
      bandwidthPercent: map['bandwidthPercent'] == null ? null : pulumi.Output.create<String>(map['bandwidthPercent'] as String),
      qosId: pulumi.Output.create<String>(map['qosId'] as String),
      queueDescription: map['queueDescription'] == null ? null : pulumi.Output.create<String>(map['queueDescription'] as String),
      queueName: map['queueName'] == null ? null : pulumi.Output.create<String>(map['queueName'] as String),
      queueType: pulumi.Output.create<String>(map['queueType'] as String),
    );
  }
}

