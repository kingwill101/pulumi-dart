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
  /// > **NOTE:**  Default priority queue cannot be created.
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
    pulumi.Output<String>? bandwidthPercent,
    pulumi.Output<String>? qosId,
    pulumi.Output<String>? queueDescription,
    pulumi.Output<String>? queueId,
    pulumi.Output<String>? queueName,
    pulumi.Output<String>? queueType,
    pulumi.Output<String>? status,
  }) :
      bandwidthPercent = pulumi.Input.asOptionalInput<String>(bandwidthPercent),
      qosId = pulumi.Input.asOptionalInput<String>(qosId),
      queueDescription = pulumi.Input.asOptionalInput<String>(queueDescription),
      queueId = pulumi.Input.asOptionalInput<String>(queueId),
      queueName = pulumi.Input.asOptionalInput<String>(queueName),
      queueType = pulumi.Input.asOptionalInput<String>(queueType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      bandwidthPercent: map['bandwidthPercent'] == null ? null : pulumi.Output.create<String>(map['bandwidthPercent'] as String),
      qosId: map['qosId'] == null ? null : pulumi.Output.create<String>(map['qosId'] as String),
      queueDescription: map['queueDescription'] == null ? null : pulumi.Output.create<String>(map['queueDescription'] as String),
      queueId: map['queueId'] == null ? null : pulumi.Output.create<String>(map['queueId'] as String),
      queueName: map['queueName'] == null ? null : pulumi.Output.create<String>(map['queueName'] as String),
      queueType: map['queueType'] == null ? null : pulumi.Output.create<String>(map['queueType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

