// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_ena_srd_udp_specification_response.dart';

/// Definition of InstanceAttachmentEnaSrdSpecification
class InstanceAttachmentEnaSrdSpecificationResponse {
  /// <p>Indicates whether ENA Express is enabled for the network interface.</p>
  final pulumi.Input<bool>? enaSrdEnabled;
  /// <p>Configures ENA Express for UDP network traffic.</p>
  final pulumi.Input<InstanceAttachmentEnaSrdUdpSpecificationResponse>? enaSrdUdpSpecification;

  /// Creates a new [InstanceAttachmentEnaSrdSpecificationResponse].
  /// [enaSrdEnabled] <p>Indicates whether ENA Express is enabled for the network interface.</p>
  /// [enaSrdUdpSpecification] <p>Configures ENA Express for UDP network traffic.</p>
  InstanceAttachmentEnaSrdSpecificationResponse({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdEnabled': ?enaSrdEnabled,
      'enaSrdUdpSpecification': ?pulumi.Input.mapOptionalInputValue<InstanceAttachmentEnaSrdUdpSpecificationResponse, Map<String, dynamic>>(enaSrdUdpSpecification, (value) => value.toMap()),
    };
  }

  factory InstanceAttachmentEnaSrdSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentEnaSrdSpecificationResponse(
      enaSrdEnabled: map['enaSrdEnabled'] == null ? null : (map['enaSrdEnabled'] as bool).input(),
      enaSrdUdpSpecification: map['enaSrdUdpSpecification'] == null ? null : (InstanceAttachmentEnaSrdUdpSpecificationResponse.fromMap((map['enaSrdUdpSpecification'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

