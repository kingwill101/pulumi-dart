// ignore_for_file: unused_element, unnecessary_cast

import 'service_attachment_tunneling_config_encapsulation_profile2.dart';
import 'service_attachment_tunneling_config_routing_mode2.dart';

/// Use to configure this PSC connection in tunneling mode. In tunneling mode traffic from consumer to producer will be encapsulated as it crosses the VPC boundary and traffic from producer to consumer will be decapsulated in the same manner.
class ServiceAttachmentTunnelingConfig2 {
  /// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  final ServiceAttachmentTunnelingConfigEncapsulationProfile2?
      encapsulationProfile;

  /// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  final ServiceAttachmentTunnelingConfigRoutingMode2? routingMode;

  ServiceAttachmentTunnelingConfig2({
    this.encapsulationProfile,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encapsulationProfileValue = encapsulationProfile;
    if (encapsulationProfileValue != null) {
      map['encapsulationProfile'] = encapsulationProfileValue.value;
    }
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] = routingModeValue.value;
    }
    return map;
  }

  factory ServiceAttachmentTunnelingConfig2.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentTunnelingConfig2(
      encapsulationProfile: map['encapsulationProfile'] == null
          ? null
          : ServiceAttachmentTunnelingConfigEncapsulationProfile2.fromValue(
              map['encapsulationProfile'] as String),
      routingMode: map['routingMode'] == null
          ? null
          : ServiceAttachmentTunnelingConfigRoutingMode2.fromValue(
              map['routingMode'] as String),
    );
  }
}
