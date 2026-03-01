// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceAttachmentsAttachment {
  /// The time when the network is associated with the CEN instance.
  final String childInstanceAttachTime;
  /// The ID of the network.
  final String childInstanceId;
  /// The ID of the account to which the network belongs.
  final int childInstanceOwnerId;
  /// The region to which the network to be queried belongs.
  final String childInstanceRegionId;
  /// The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  final String childInstanceType;
  /// The ID of the CEN Instance Attachment.
  final String id;
  /// The ID of the CEN instance.
  final String instanceId;
  /// The status of the Cen Child Instance Attachment. Valid value: `Attaching`, `Attached` and `Aetaching`.
  final String status;

  /// Creates a new [GetInstanceAttachmentsAttachment].
  /// [childInstanceAttachTime] The time when the network is associated with the CEN instance.
  /// [childInstanceId] The ID of the network.
  /// [childInstanceOwnerId] The ID of the account to which the network belongs.
  /// [childInstanceRegionId] The region to which the network to be queried belongs.
  /// [childInstanceType] The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  /// [id] The ID of the CEN Instance Attachment.
  /// [instanceId] The ID of the CEN instance.
  /// [status] The status of the Cen Child Instance Attachment. Valid value: `Attaching`, `Attached` and `Aetaching`.
  GetInstanceAttachmentsAttachment({
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
      childInstanceAttachTime: map['childInstanceAttachTime'] as String,
      childInstanceId: map['childInstanceId'] as String,
      childInstanceOwnerId: map['childInstanceOwnerId'] as int,
      childInstanceRegionId: map['childInstanceRegionId'] as String,
      childInstanceType: map['childInstanceType'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      status: map['status'] as String,
    );
  }
}

