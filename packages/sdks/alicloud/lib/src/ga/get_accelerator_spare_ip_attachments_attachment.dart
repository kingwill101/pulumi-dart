// ignore_for_file: unused_element, unnecessary_cast


class GetAcceleratorSpareIpAttachmentsAttachment {
  /// The ID of the global acceleration instance.
  final String acceleratorId;
  /// The ID of the Accelerator Spare Ip Attachment.
  final String id;
  /// The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  final String spareIp;
  /// The status of the standby CNAME IP address. Valid values: `active`, `inuse`.
  final String status;

  /// Creates a new [GetAcceleratorSpareIpAttachmentsAttachment].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [id] The ID of the Accelerator Spare Ip Attachment.
  /// [spareIp] The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  /// [status] The status of the standby CNAME IP address. Valid values: `active`, `inuse`.
  GetAcceleratorSpareIpAttachmentsAttachment({
    required this.acceleratorId,
    required this.id,
    required this.spareIp,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'id': id,
      'spareIp': spareIp,
      'status': status,
    };
  }

  factory GetAcceleratorSpareIpAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorSpareIpAttachmentsAttachment(
      acceleratorId: map['acceleratorId'] as String,
      id: map['id'] as String,
      spareIp: map['spareIp'] as String,
      status: map['status'] as String,
    );
  }
}

