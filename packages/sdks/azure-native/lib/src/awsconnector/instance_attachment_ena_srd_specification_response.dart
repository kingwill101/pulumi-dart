// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_ena_srd_udp_specification_response.dart';

/// Definition of InstanceAttachmentEnaSrdSpecification
class InstanceAttachmentEnaSrdSpecificationResponse {
  /// &lt;p&gt;Indicates whether ENA Express is enabled for the network interface.&lt;/p&gt;
  final pulumi.Input<bool>? enaSrdEnabled;
  /// &lt;p&gt;Configures ENA Express for UDP network traffic.&lt;/p&gt;
  final pulumi.Input<InstanceAttachmentEnaSrdUdpSpecificationResponse>? enaSrdUdpSpecification;

  /// Creates a new [InstanceAttachmentEnaSrdSpecificationResponse].
  /// [enaSrdEnabled] &lt;p&gt;Indicates whether ENA Express is enabled for the network interface.&lt;/p&gt;
  /// [enaSrdUdpSpecification] &lt;p&gt;Configures ENA Express for UDP network traffic.&lt;/p&gt;
  const InstanceAttachmentEnaSrdSpecificationResponse({
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
      enaSrdEnabled: (() { final guardedValue = map['enaSrdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enaSrdUdpSpecification: (() { final guardedValue = map['enaSrdUdpSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAttachmentEnaSrdUdpSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
