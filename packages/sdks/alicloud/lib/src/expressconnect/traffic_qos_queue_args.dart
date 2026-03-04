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
  /// &gt; **NOTE:**  Default priority queue cannot be created.
  final pulumi.Input<String> queueType;

  /// Creates a new [TrafficQosQueueArgs].
  /// [bandwidthPercent] QoS queue bandwidth percentage.
  /// [qosId] The ID of the QoS policy.
  /// [queueDescription] The description of the QoS queue.
  /// [queueName] The name of the QoS queue.
  /// [queueType] QoS queue type, value:
  TrafficQosQueueArgs({
    this.bandwidthPercent,
    required this.qosId,
    this.queueDescription,
    this.queueName,
    required this.queueType,
  });

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
      bandwidthPercent: (() {
        final guardedValue = map['bandwidthPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      qosId: pulumi.Input.fromValue(map['qosId'] as String),
      queueDescription: (() {
        final guardedValue = map['queueDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueName: (() {
        final guardedValue = map['queueName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueType: pulumi.Input.fromValue(map['queueType'] as String),
    );
  }
}
