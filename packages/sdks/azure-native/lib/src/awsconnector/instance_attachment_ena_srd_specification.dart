// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_ena_srd_udp_specification.dart';

/// Definition of InstanceAttachmentEnaSrdSpecification
class InstanceAttachmentEnaSrdSpecification {
  /// &lt;p&gt;Indicates whether ENA Express is enabled for the network interface.&lt;/p&gt;
  final pulumi.Input<bool>? enaSrdEnabled;
  /// &lt;p&gt;Configures ENA Express for UDP network traffic.&lt;/p&gt;
  final pulumi.Input<InstanceAttachmentEnaSrdUdpSpecification>? enaSrdUdpSpecification;

  /// Creates a new [InstanceAttachmentEnaSrdSpecification].
  /// [enaSrdEnabled] &lt;p&gt;Indicates whether ENA Express is enabled for the network interface.&lt;/p&gt;
  /// [enaSrdUdpSpecification] &lt;p&gt;Configures ENA Express for UDP network traffic.&lt;/p&gt;
  InstanceAttachmentEnaSrdSpecification({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdEnabled': ?enaSrdEnabled,
      'enaSrdUdpSpecification': ?pulumi.Input.mapOptionalInputValue<InstanceAttachmentEnaSrdUdpSpecification, Map<String, dynamic>>(enaSrdUdpSpecification, (value) => value.toMap()),
    };
  }

  factory InstanceAttachmentEnaSrdSpecification.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentEnaSrdSpecification(
      enaSrdEnabled: (() { final guardedValue = map['enaSrdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enaSrdUdpSpecification: (() { final guardedValue = map['enaSrdUdpSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAttachmentEnaSrdUdpSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

