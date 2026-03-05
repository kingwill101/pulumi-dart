// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAttachmentsSlbAttachment {
  /// ID of the attached ECS instance.
  final pulumi.Input<String> instanceId;
  /// Weight associated to the ECS instance.
  final pulumi.Input<int> weight;

  /// Creates a new [GetAttachmentsSlbAttachment].
  /// [instanceId] ID of the attached ECS instance.
  /// [weight] Weight associated to the ECS instance.
  GetAttachmentsSlbAttachment({
    required this.instanceId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'weight': weight,
    };
  }

  factory GetAttachmentsSlbAttachment.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsSlbAttachment(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

