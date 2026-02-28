// ignore_for_file: unused_element, unnecessary_cast

import 'service_attachment_tunneling_config_encapsulation_profile_compute_beta.dart';
import 'service_attachment_tunneling_config_routing_mode_compute_beta.dart';

/// Use to configure this PSC connection in tunneling mode. In tunneling mode traffic from consumer to producer will be encapsulated as it crosses the VPC boundary and traffic from producer to consumer will be decapsulated in the same manner.
class ServiceAttachmentTunnelingConfigComputeBeta {
  /// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  final ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta? encapsulationProfile;
  /// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  final ServiceAttachmentTunnelingConfigRoutingModeComputeBeta? routingMode;

  /// Creates a new [ServiceAttachmentTunnelingConfigComputeBeta].
  /// [encapsulationProfile] Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  /// [routingMode] How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  ServiceAttachmentTunnelingConfigComputeBeta({
    this.encapsulationProfile,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationProfile': ?encapsulationProfile == null ? null : encapsulationProfile!.value,
      'routingMode': ?routingMode == null ? null : routingMode!.value,
    };
  }

  factory ServiceAttachmentTunnelingConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentTunnelingConfigComputeBeta(
      encapsulationProfile: map['encapsulationProfile'] == null ? null : ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta.fromValue(map['encapsulationProfile'] as String),
      routingMode: map['routingMode'] == null ? null : ServiceAttachmentTunnelingConfigRoutingModeComputeBeta.fromValue(map['routingMode'] as String),
    );
  }
}

