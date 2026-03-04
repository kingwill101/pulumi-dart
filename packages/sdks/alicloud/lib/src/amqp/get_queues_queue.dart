// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQueuesQueue {
  /// The attributes for the Queue.
  final pulumi.Input<Map<String, String>> attributes;

  /// Specifies whether the Auto Delete attribute is configured.
  final pulumi.Input<bool> autoDeleteState;

  /// CreateTime.
  final pulumi.Input<String> createTime;

  /// Specifies whether the queue is an exclusive queue.
  final pulumi.Input<bool> exclusiveState;

  /// The ID of the Queue. Its value is same as Queue Name.
  final pulumi.Input<String> id;

  /// The ID of the instance.
  final pulumi.Input<String> instanceId;

  /// The last consume time.
  final pulumi.Input<String> lastConsumeTime;

  /// The queue name.
  final pulumi.Input<String> queueName;

  /// The name of the virtual host.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetQueuesQueue].
  /// [attributes] The attributes for the Queue.
  /// [autoDeleteState] Specifies whether the Auto Delete attribute is configured.
  /// [createTime] CreateTime.
  /// [exclusiveState] Specifies whether the queue is an exclusive queue.
  /// [id] The ID of the Queue. Its value is same as Queue Name.
  /// [instanceId] The ID of the instance.
  /// [lastConsumeTime] The last consume time.
  /// [queueName] The queue name.
  /// [virtualHostName] The name of the virtual host.
  GetQueuesQueue({
    required this.attributes,
    required this.autoDeleteState,
    required this.createTime,
    required this.exclusiveState,
    required this.id,
    required this.instanceId,
    required this.lastConsumeTime,
    required this.queueName,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'autoDeleteState': autoDeleteState,
      'createTime': createTime,
      'exclusiveState': exclusiveState,
      'id': id,
      'instanceId': instanceId,
      'lastConsumeTime': lastConsumeTime,
      'queueName': queueName,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetQueuesQueue.fromMap(Map<String, dynamic> map) {
    return GetQueuesQueue(
      attributes: pulumi.Input.fromValue(
        (map['attributes'] as Map).cast<String, String>(),
      ),
      autoDeleteState: pulumi.Input.fromValue(map['autoDeleteState'] as bool),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      exclusiveState: pulumi.Input.fromValue(map['exclusiveState'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      lastConsumeTime: pulumi.Input.fromValue(map['lastConsumeTime'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      virtualHostName: pulumi.Input.fromValue(map['virtualHostName'] as String),
    );
  }
}
