// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAcceleratorSpareIpAttachmentsAttachment {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the Accelerator Spare Ip Attachment.
  final pulumi.Input<String> id;
  /// The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  final pulumi.Input<String> spareIp;
  /// The status of the standby CNAME IP address. Valid values: `active`, `inuse`.
  final pulumi.Input<String> status;

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
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      spareIp: pulumi.Input.fromValue(map['spareIp'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

