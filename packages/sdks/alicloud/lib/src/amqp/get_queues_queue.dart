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
      attributes: ((map['attributes'] as Map).cast<String, String>()).input(),
      autoDeleteState: (map['autoDeleteState'] as bool).input(),
      createTime: (map['createTime'] as String).input(),
      exclusiveState: (map['exclusiveState'] as bool).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      lastConsumeTime: (map['lastConsumeTime'] as String).input(),
      queueName: (map['queueName'] as String).input(),
      virtualHostName: (map['virtualHostName'] as String).input(),
    );
  }
}

