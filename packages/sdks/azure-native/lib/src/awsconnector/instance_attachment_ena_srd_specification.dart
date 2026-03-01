// ignore_for_file: unused_element, unnecessary_cast

import 'instance_attachment_ena_srd_udp_specification.dart';

/// Definition of InstanceAttachmentEnaSrdSpecification
class InstanceAttachmentEnaSrdSpecification {
  /// <p>Indicates whether ENA Express is enabled for the network interface.</p>
  final bool? enaSrdEnabled;
  /// <p>Configures ENA Express for UDP network traffic.</p>
  final InstanceAttachmentEnaSrdUdpSpecification? enaSrdUdpSpecification;

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
      'enaSrdUdpSpecification': ?enaSrdUdpSpecification == null ? null : enaSrdUdpSpecification!.toMap(),
    };
  }

  factory InstanceAttachmentEnaSrdSpecification.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentEnaSrdSpecification(
      enaSrdEnabled: map['enaSrdEnabled'] == null ? null : map['enaSrdEnabled'] as bool,
      enaSrdUdpSpecification: map['enaSrdUdpSpecification'] == null ? null : InstanceAttachmentEnaSrdUdpSpecification.fromMap((map['enaSrdUdpSpecification'] as Map).cast<String, dynamic>()),
    );
  }
}

