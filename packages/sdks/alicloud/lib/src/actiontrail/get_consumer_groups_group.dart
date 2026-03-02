// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConsumerGroupsGroup {
  /// The name of the consumer group.
  final pulumi.Input<String> consumerId;
  /// The ID of the consumer group, It is formatted to `<instance_id>:<consumer_id>`.
  final pulumi.Input<String> id;
  /// ID of the ALIKAFKA Instance that owns the consumer groups.
  final pulumi.Input<String> instanceId;
  /// The remark of the consumer group.
  final pulumi.Input<String> remark;
  /// A mapping of tags to assign to the consumer group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConsumerGroupsGroup].
  /// [consumerId] The name of the consumer group.
  /// [id] The ID of the consumer group, It is formatted to `<instance_id>:<consumer_id>`.
  /// [instanceId] ID of the ALIKAFKA Instance that owns the consumer groups.
  /// [remark] The remark of the consumer group.
  /// [tags] A mapping of tags to assign to the consumer group.
  GetConsumerGroupsGroup({
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
      consumerId: (map['consumerId'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      remark: (map['remark'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

