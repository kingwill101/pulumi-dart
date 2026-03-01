// ignore_for_file: unused_element, unnecessary_cast

import 'attachment_status_enum_value.dart';

/// Definition of EbsInstanceBlockDevice
class EbsInstanceBlockDevice {
  /// <p>The ARN of the Amazon ECS or Fargate task to which the volume is attached.</p>
  final String? associatedResource;
  /// <p>The time stamp when the attachment initiated.</p>
  final String? attachTime;
  /// <p>Indicates whether the volume is deleted on instance termination.</p>
  final bool? deleteOnTermination;
  /// <p>The attachment state.</p>
  final AttachmentStatusEnumValue? status;
  /// <p>The ID of the EBS volume.</p>
  final String? volumeId;
  /// <p>The ID of the Amazon Web Services account that owns the volume.</p> <p>This parameter is returned only for volumes that are attached to Fargate tasks.</p>
  final String? volumeOwnerId;

  /// Creates a new [EbsInstanceBlockDevice].
  /// [associatedResource] <p>The ARN of the Amazon ECS or Fargate task to which the volume is attached.</p>
  /// [attachTime] <p>The time stamp when the attachment initiated.</p>
  /// [deleteOnTermination] <p>Indicates whether the volume is deleted on instance termination.</p>
  /// [status] <p>The attachment state.</p>
  /// [volumeId] <p>The ID of the EBS volume.</p>
  /// [volumeOwnerId] <p>The ID of the Amazon Web Services account that owns the volume.</p> <p>This parameter is returned only for volumes that are attached to Fargate tasks.</p>
  EbsInstanceBlockDevice({
    this.associatedResource,
    this.attachTime,
    this.deleteOnTermination,
    this.status,
    this.volumeId,
    this.volumeOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedResource': ?associatedResource,
      'attachTime': ?attachTime,
      'deleteOnTermination': ?deleteOnTermination,
      'status': ?status == null ? null : status!.toMap(),
      'volumeId': ?volumeId,
      'volumeOwnerId': ?volumeOwnerId,
    };
  }

  factory EbsInstanceBlockDevice.fromMap(Map<String, dynamic> map) {
    return EbsInstanceBlockDevice(
      associatedResource: map['associatedResource'] == null ? null : map['associatedResource'] as String,
      attachTime: map['attachTime'] == null ? null : map['attachTime'] as String,
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
      status: map['status'] == null ? null : AttachmentStatusEnumValue.fromMap((map['status'] as Map).cast<String, dynamic>()),
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as String,
      volumeOwnerId: map['volumeOwnerId'] == null ? null : map['volumeOwnerId'] as String,
    );
  }
}

