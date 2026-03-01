// ignore_for_file: unused_element, unnecessary_cast

import 'attachment_status_enum_value_response.dart';
import 'instance_attachment_ena_srd_specification_response.dart';

/// Definition of InstanceNetworkInterfaceAttachment
class InstanceNetworkInterfaceAttachmentResponse {
  /// <p>The time stamp when the attachment initiated.</p>
  final String? attachTime;
  /// <p>The ID of the network interface attachment.</p>
  final String? attachmentId;
  /// <p>Indicates whether the network interface is deleted when the instance is terminated.</p>
  final bool? deleteOnTermination;
  /// <p>The index of the device on the instance for the network interface attachment.</p>
  final int? deviceIndex;
  /// <p>Contains the ENA Express settings for the network interface that's attached to the instance.</p>
  final InstanceAttachmentEnaSrdSpecificationResponse? enaSrdSpecification;
  /// <p>The index of the network card.</p>
  final int? networkCardIndex;
  /// <p>The attachment state.</p>
  final AttachmentStatusEnumValueResponse? status;

  /// Creates a new [InstanceNetworkInterfaceAttachmentResponse].
  /// [attachTime] <p>The time stamp when the attachment initiated.</p>
  /// [attachmentId] <p>The ID of the network interface attachment.</p>
  /// [deleteOnTermination] <p>Indicates whether the network interface is deleted when the instance is terminated.</p>
  /// [deviceIndex] <p>The index of the device on the instance for the network interface attachment.</p>
  /// [enaSrdSpecification] <p>Contains the ENA Express settings for the network interface that's attached to the instance.</p>
  /// [networkCardIndex] <p>The index of the network card.</p>
  /// [status] <p>The attachment state.</p>
  InstanceNetworkInterfaceAttachmentResponse({
    this.attachTime,
    this.attachmentId,
    this.deleteOnTermination,
    this.deviceIndex,
    this.enaSrdSpecification,
    this.networkCardIndex,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachTime': ?attachTime,
      'attachmentId': ?attachmentId,
      'deleteOnTermination': ?deleteOnTermination,
      'deviceIndex': ?deviceIndex,
      'enaSrdSpecification': ?enaSrdSpecification == null ? null : enaSrdSpecification!.toMap(),
      'networkCardIndex': ?networkCardIndex,
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory InstanceNetworkInterfaceAttachmentResponse.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterfaceAttachmentResponse(
      attachTime: map['attachTime'] == null ? null : map['attachTime'] as String,
      attachmentId: map['attachmentId'] == null ? null : map['attachmentId'] as String,
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
      deviceIndex: map['deviceIndex'] == null ? null : map['deviceIndex'] as int,
      enaSrdSpecification: map['enaSrdSpecification'] == null ? null : InstanceAttachmentEnaSrdSpecificationResponse.fromMap((map['enaSrdSpecification'] as Map).cast<String, dynamic>()),
      networkCardIndex: map['networkCardIndex'] == null ? null : map['networkCardIndex'] as int,
      status: map['status'] == null ? null : AttachmentStatusEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

