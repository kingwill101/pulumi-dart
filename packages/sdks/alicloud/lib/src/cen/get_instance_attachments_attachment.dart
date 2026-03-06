// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAttachmentsAttachment {
  /// The time when the network is associated with the CEN instance.
  final pulumi.Input<String> childInstanceAttachTime;
  /// The ID of the network.
  final pulumi.Input<String> childInstanceId;
  /// The ID of the account to which the network belongs.
  final pulumi.Input<int> childInstanceOwnerId;
  /// The region to which the network to be queried belongs.
  final pulumi.Input<String> childInstanceRegionId;
  /// The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  final pulumi.Input<String> childInstanceType;
  /// The ID of the CEN Instance Attachment.
  final pulumi.Input<String> id;
  /// The ID of the CEN instance.
  final pulumi.Input<String> instanceId;
  /// The status of the Cen Child Instance Attachment. Valid value: `Attaching`, `Attached` and `Aetaching`.
  final pulumi.Input<String> status;

  /// Creates a new [GetInstanceAttachmentsAttachment].
  /// [childInstanceAttachTime] The time when the network is associated with the CEN instance.
  /// [childInstanceId] The ID of the network.
  /// [childInstanceOwnerId] The ID of the account to which the network belongs.
  /// [childInstanceRegionId] The region to which the network to be queried belongs.
  /// [childInstanceType] The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  /// [id] The ID of the CEN Instance Attachment.
  /// [instanceId] The ID of the CEN instance.
  /// [status] The status of the Cen Child Instance Attachment. Valid value: `Attaching`, `Attached` and `Aetaching`.
  const GetInstanceAttachmentsAttachment({
    required this.childInstanceAttachTime,
    required this.childInstanceId,
    required this.childInstanceOwnerId,
    required this.childInstanceRegionId,
    required this.childInstanceType,
    required this.id,
    required this.instanceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childInstanceAttachTime': childInstanceAttachTime,
      'childInstanceId': childInstanceId,
      'childInstanceOwnerId': childInstanceOwnerId,
      'childInstanceRegionId': childInstanceRegionId,
      'childInstanceType': childInstanceType,
      'id': id,
      'instanceId': instanceId,
      'status': status,
    };
  }

  factory GetInstanceAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentsAttachment(
      childInstanceAttachTime: pulumi.Input.fromValue(map['childInstanceAttachTime'] as String),
      childInstanceId: pulumi.Input.fromValue(map['childInstanceId'] as String),
      childInstanceOwnerId: pulumi.Input.fromValue(map['childInstanceOwnerId'] as int),
      childInstanceRegionId: pulumi.Input.fromValue(map['childInstanceRegionId'] as String),
      childInstanceType: pulumi.Input.fromValue(map['childInstanceType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

