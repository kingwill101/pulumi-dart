// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_status_enum_value_response.dart';

/// Definition of EbsInstanceBlockDevice
class EbsInstanceBlockDeviceResponse {
  /// &lt;p&gt;The ARN of the Amazon ECS or Fargate task to which the volume is attached.&lt;/p&gt;
  final pulumi.Input<String>? associatedResource;
  /// &lt;p&gt;The time stamp when the attachment initiated.&lt;/p&gt;
  final pulumi.Input<String>? attachTime;
  /// &lt;p&gt;Indicates whether the volume is deleted on instance termination.&lt;/p&gt;
  final pulumi.Input<bool>? deleteOnTermination;
  /// &lt;p&gt;The attachment state.&lt;/p&gt;
  final pulumi.Input<AttachmentStatusEnumValueResponse>? status;
  /// &lt;p&gt;The ID of the EBS volume.&lt;/p&gt;
  final pulumi.Input<String>? volumeId;
  /// &lt;p&gt;The ID of the Amazon Web Services account that owns the volume.&lt;/p&gt; &lt;p&gt;This parameter is returned only for volumes that are attached to Fargate tasks.&lt;/p&gt;
  final pulumi.Input<String>? volumeOwnerId;

  /// Creates a new [EbsInstanceBlockDeviceResponse].
  /// [associatedResource] &lt;p&gt;The ARN of the Amazon ECS or Fargate task to which the volume is attached.&lt;/p&gt;
  /// [attachTime] &lt;p&gt;The time stamp when the attachment initiated.&lt;/p&gt;
  /// [deleteOnTermination] &lt;p&gt;Indicates whether the volume is deleted on instance termination.&lt;/p&gt;
  /// [status] &lt;p&gt;The attachment state.&lt;/p&gt;
  /// [volumeId] &lt;p&gt;The ID of the EBS volume.&lt;/p&gt;
  /// [volumeOwnerId] &lt;p&gt;The ID of the Amazon Web Services account that owns the volume.&lt;/p&gt; &lt;p&gt;This parameter is returned only for volumes that are attached to Fargate tasks.&lt;/p&gt;
  const EbsInstanceBlockDeviceResponse({
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
      associatedResource: (() { final guardedValue = map['associatedResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachTime: (() { final guardedValue = map['attachTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachmentStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeOwnerId: (() { final guardedValue = map['volumeOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
