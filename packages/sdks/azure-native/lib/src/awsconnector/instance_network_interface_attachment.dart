// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_status_enum_value.dart';
import 'instance_attachment_ena_srd_specification.dart';

/// Definition of InstanceNetworkInterfaceAttachment
class InstanceNetworkInterfaceAttachment {
  /// &lt;p&gt;The time stamp when the attachment initiated.&lt;/p&gt;
  final pulumi.Input<String>? attachTime;
  /// &lt;p&gt;The ID of the network interface attachment.&lt;/p&gt;
  final pulumi.Input<String>? attachmentId;
  /// &lt;p&gt;Indicates whether the network interface is deleted when the instance is terminated.&lt;/p&gt;
  final pulumi.Input<bool>? deleteOnTermination;
  /// &lt;p&gt;The index of the device on the instance for the network interface attachment.&lt;/p&gt;
  final pulumi.Input<int>? deviceIndex;
  /// &lt;p&gt;Contains the ENA Express settings for the network interface that's attached to the instance.&lt;/p&gt;
  final pulumi.Input<InstanceAttachmentEnaSrdSpecification>? enaSrdSpecification;
  /// &lt;p&gt;The index of the network card.&lt;/p&gt;
  final pulumi.Input<int>? networkCardIndex;
  /// &lt;p&gt;The attachment state.&lt;/p&gt;
  final pulumi.Input<AttachmentStatusEnumValue>? status;

  /// Creates a new [InstanceNetworkInterfaceAttachment].
  /// [attachTime] &lt;p&gt;The time stamp when the attachment initiated.&lt;/p&gt;
  /// [attachmentId] &lt;p&gt;The ID of the network interface attachment.&lt;/p&gt;
  /// [deleteOnTermination] &lt;p&gt;Indicates whether the network interface is deleted when the instance is terminated.&lt;/p&gt;
  /// [deviceIndex] &lt;p&gt;The index of the device on the instance for the network interface attachment.&lt;/p&gt;
  /// [enaSrdSpecification] &lt;p&gt;Contains the ENA Express settings for the network interface that's attached to the instance.&lt;/p&gt;
  /// [networkCardIndex] &lt;p&gt;The index of the network card.&lt;/p&gt;
  /// [status] &lt;p&gt;The attachment state.&lt;/p&gt;
  const InstanceNetworkInterfaceAttachment({
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
      attachTime: (() { final guardedValue = map['attachTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceIndex: (() { final guardedValue = map['deviceIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enaSrdSpecification: (() { final guardedValue = map['enaSrdSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAttachmentEnaSrdSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkCardIndex: (() { final guardedValue = map['networkCardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachmentStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

