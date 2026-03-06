// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConsumerGroupsGroup {
  /// The name of the consumer group.
  final pulumi.Input<String> consumerId;
  /// The ID of the consumer group, It is formatted to `&lt;instance_id&gt;:&lt;consumer_id&gt;`.
  final pulumi.Input<String> id;
  /// ID of the ALIKAFKA Instance that owns the consumer groups.
  final pulumi.Input<String> instanceId;
  /// The remark of the consumer group.
  final pulumi.Input<String> remark;
  /// A mapping of tags to assign to the consumer group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConsumerGroupsGroup].
  /// [consumerId] The name of the consumer group.
  /// [id] The ID of the consumer group, It is formatted to `&lt;instance_id&gt;:&lt;consumer_id&gt;`.
  /// [instanceId] ID of the ALIKAFKA Instance that owns the consumer groups.
  /// [remark] The remark of the consumer group.
  /// [tags] A mapping of tags to assign to the consumer group.
  const GetConsumerGroupsGroup({
    required this.consumerId,
    required this.id,
    required this.instanceId,
    required this.remark,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerId': consumerId,
      'id': id,
      'instanceId': instanceId,
      'remark': remark,
      'tags': ?tags,
    };
  }

  factory GetConsumerGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetConsumerGroupsGroup(
      consumerId: pulumi.Input.fromValue(map['consumerId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

