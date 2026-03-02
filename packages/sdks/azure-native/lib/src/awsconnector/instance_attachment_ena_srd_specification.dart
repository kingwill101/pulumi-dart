// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_ena_srd_udp_specification.dart';

/// Definition of InstanceAttachmentEnaSrdSpecification
class InstanceAttachmentEnaSrdSpecification {
  /// <p>Indicates whether ENA Express is enabled for the network interface.</p>
  final pulumi.Input<bool>? enaSrdEnabled;
  /// <p>Configures ENA Express for UDP network traffic.</p>
  final pulumi.Input<InstanceAttachmentEnaSrdUdpSpecification>? enaSrdUdpSpecification;

  /// Creates a new [InstanceAttachmentEnaSrdSpecification].
  /// [enaSrdEnabled] <p>Indicates whether ENA Express is enabled for the network interface.</p>
  /// [enaSrdUdpSpecification] <p>Configures ENA Express for UDP network traffic.</p>
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
      enaSrdEnabled: map['enaSrdEnabled'] == null ? null : (map['enaSrdEnabled'] as bool).input(),
      enaSrdUdpSpecification: map['enaSrdUdpSpecification'] == null ? null : (InstanceAttachmentEnaSrdUdpSpecification.fromMap((map['enaSrdUdpSpecification'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

