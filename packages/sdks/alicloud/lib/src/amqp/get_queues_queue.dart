// ignore_for_file: unused_element, unnecessary_cast


class GetQueuesQueue {
  /// The attributes for the Queue.
  final Map<String, String> attributes;
  /// Specifies whether the Auto Delete attribute is configured.
  final bool autoDeleteState;
  /// CreateTime.
  final String createTime;
  /// Specifies whether the queue is an exclusive queue.
  final bool exclusiveState;
  /// The ID of the Queue. Its value is same as Queue Name.
  final String id;
  /// The ID of the instance.
  final String instanceId;
  /// The last consume time.
  final String lastConsumeTime;
  /// The queue name.
  final String queueName;
  /// The name of the virtual host.
  final String virtualHostName;

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
      attributes: (map['attributes'] as Map).cast<String, String>(),
      autoDeleteState: map['autoDeleteState'] as bool,
      createTime: map['createTime'] as String,
      exclusiveState: map['exclusiveState'] as bool,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      lastConsumeTime: map['lastConsumeTime'] as String,
      queueName: map['queueName'] as String,
      virtualHostName: map['virtualHostName'] as String,
    );
  }
}

