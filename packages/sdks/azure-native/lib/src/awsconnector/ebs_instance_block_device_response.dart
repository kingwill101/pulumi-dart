// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_status_enum_value_response.dart';

/// Definition of EbsInstanceBlockDevice
class EbsInstanceBlockDeviceResponse {
  /// <p>The ARN of the Amazon ECS or Fargate task to which the volume is attached.</p>
  final pulumi.Input<String>? associatedResource;
  /// <p>The time stamp when the attachment initiated.</p>
  final pulumi.Input<String>? attachTime;
  /// <p>Indicates whether the volume is deleted on instance termination.</p>
  final pulumi.Input<bool>? deleteOnTermination;
  /// <p>The attachment state.</p>
  final pulumi.Input<AttachmentStatusEnumValueResponse>? status;
  /// <p>The ID of the EBS volume.</p>
  final pulumi.Input<String>? volumeId;
  /// <p>The ID of the Amazon Web Services account that owns the volume.</p> <p>This parameter is returned only for volumes that are attached to Fargate tasks.</p>
  final pulumi.Input<String>? volumeOwnerId;

  /// Creates a new [EbsInstanceBlockDeviceResponse].
  /// [associatedResource] <p>The ARN of the Amazon ECS or Fargate task to which the volume is attached.</p>
  /// [attachTime] <p>The time stamp when the attachment initiated.</p>
  /// [deleteOnTermination] <p>Indicates whether the volume is deleted on instance termination.</p>
  /// [status] <p>The attachment state.</p>
  /// [volumeId] <p>The ID of the EBS volume.</p>
  /// [volumeOwnerId] <p>The ID of the Amazon Web Services account that owns the volume.</p> <p>This parameter is returned only for volumes that are attached to Fargate tasks.</p>
  EbsInstanceBlockDeviceResponse({
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
      'status': ?pulumi.Input.mapOptionalInputValue<AttachmentStatusEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'volumeId': ?volumeId,
      'volumeOwnerId': ?volumeOwnerId,
    };
  }

  factory EbsInstanceBlockDeviceResponse.fromMap(Map<String, dynamic> map) {
    return EbsInstanceBlockDeviceResponse(
      associatedResource: map['associatedResource'] == null ? null : (map['associatedResource']! as String).input(),
      attachTime: map['attachTime'] == null ? null : (map['attachTime']! as String).input(),
      deleteOnTermination: map['deleteOnTermination'] == null ? null : (map['deleteOnTermination']! as bool).input(),
      status: map['status'] == null ? null : (AttachmentStatusEnumValueResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as String).input(),
      volumeOwnerId: map['volumeOwnerId'] == null ? null : (map['volumeOwnerId']! as String).input(),
    );
  }
}

