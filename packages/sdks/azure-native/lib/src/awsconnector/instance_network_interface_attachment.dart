// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_status_enum_value.dart';
import 'instance_attachment_ena_srd_specification.dart';

/// Definition of InstanceNetworkInterfaceAttachment
class InstanceNetworkInterfaceAttachment {
  /// <p>The time stamp when the attachment initiated.</p>
  final pulumi.Input<String>? attachTime;
  /// <p>The ID of the network interface attachment.</p>
  final pulumi.Input<String>? attachmentId;
  /// <p>Indicates whether the network interface is deleted when the instance is terminated.</p>
  final pulumi.Input<bool>? deleteOnTermination;
  /// <p>The index of the device on the instance for the network interface attachment.</p>
  final pulumi.Input<int>? deviceIndex;
  /// <p>Contains the ENA Express settings for the network interface that's attached to the instance.</p>
  final pulumi.Input<InstanceAttachmentEnaSrdSpecification>? enaSrdSpecification;
  /// <p>The index of the network card.</p>
  final pulumi.Input<int>? networkCardIndex;
  /// <p>The attachment state.</p>
  final pulumi.Input<AttachmentStatusEnumValue>? status;

  /// Creates a new [InstanceNetworkInterfaceAttachment].
  /// [attachTime] <p>The time stamp when the attachment initiated.</p>
  /// [attachmentId] <p>The ID of the network interface attachment.</p>
  /// [deleteOnTermination] <p>Indicates whether the network interface is deleted when the instance is terminated.</p>
  /// [deviceIndex] <p>The index of the device on the instance for the network interface attachment.</p>
  /// [enaSrdSpecification] <p>Contains the ENA Express settings for the network interface that's attached to the instance.</p>
  /// [networkCardIndex] <p>The index of the network card.</p>
  /// [status] <p>The attachment state.</p>
  InstanceNetworkInterfaceAttachment({
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
      'enaSrdSpecification': ?pulumi.Input.mapOptionalInputValue<InstanceAttachmentEnaSrdSpecification, Map<String, dynamic>>(enaSrdSpecification, (value) => value.toMap()),
      'networkCardIndex': ?networkCardIndex,
      'status': ?pulumi.Input.mapOptionalInputValue<AttachmentStatusEnumValue, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory InstanceNetworkInterfaceAttachment.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterfaceAttachment(
      attachTime: map['attachTime'] == null ? null : (map['attachTime']! as String).input(),
      attachmentId: map['attachmentId'] == null ? null : (map['attachmentId']! as String).input(),
      deleteOnTermination: map['deleteOnTermination'] == null ? null : (map['deleteOnTermination']! as bool).input(),
      deviceIndex: map['deviceIndex'] == null ? null : (map['deviceIndex']! as int).input(),
      enaSrdSpecification: map['enaSrdSpecification'] == null ? null : (InstanceAttachmentEnaSrdSpecification.fromMap((map['enaSrdSpecification']! as Map).cast<String, dynamic>())).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex']! as int).input(),
      status: map['status'] == null ? null : (AttachmentStatusEnumValue.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

