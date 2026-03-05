// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficQosQueue resources.
class TrafficQosQueueState {
  /// QoS queue bandwidth percentage.
  ///
  /// - When the QoS queue type is `Medium`, this field must be entered. Valid values: 1 to 100.
  /// - When the QoS queue type is `Default`, this field is "-".
  final pulumi.Input<String>? bandwidthPercent;
  /// The ID of the QoS policy.
  final pulumi.Input<String>? qosId;
  /// The description of the QoS queue.
  /// The length is 0 to 256 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? queueDescription;
  /// The ID of the QoS queue.
  final pulumi.Input<String>? queueId;
  /// The name of the QoS queue.
  /// The length is 0 to 128 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? queueName;
  /// QoS queue type, value:
  /// - `High`: High priority queue.
  /// - `Medium`: Normal priority queue.
  /// - `Default`: the Default priority queue.
  ///
  /// &gt; **NOTE:**  Default priority queue cannot be created.
  final pulumi.Input<String>? queueType;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [TrafficQosQueueState].
  /// [bandwidthPercent] QoS queue bandwidth percentage.
  /// [qosId] The ID of the QoS policy.
  /// [queueDescription] The description of the QoS queue.
  /// [queueId] The ID of the QoS queue.
  /// [queueName] The name of the QoS queue.
  /// [queueType] QoS queue type, value:
  /// [status] The status of the resource
  TrafficQosQueueState({
    this.bandwidthPercent,
    this.qosId,
    this.queueDescription,
    this.queueId,
    this.queueName,
    this.queueType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPercent': ?bandwidthPercent,
      'qosId': ?qosId,
      'queueDescription': ?queueDescription,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'queueType': ?queueType,
      'status': ?status,
    };
  }

  factory TrafficQosQueueState.fromMap(Map<String, dynamic> map) {
    return TrafficQosQueueState(
      bandwidthPercent: (() { final guardedValue = map['bandwidthPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qosId: (() { final guardedValue = map['qosId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueDescription: (() { final guardedValue = map['queueDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueType: (() { final guardedValue = map['queueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

