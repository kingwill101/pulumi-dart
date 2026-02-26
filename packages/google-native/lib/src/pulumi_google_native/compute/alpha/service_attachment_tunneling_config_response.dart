// ignore_for_file: unused_element, unnecessary_cast

/// Use to configure this PSC connection in tunneling mode. In tunneling mode traffic from consumer to producer will be encapsulated as it crosses the VPC boundary and traffic from producer to consumer will be decapsulated in the same manner.
class ServiceAttachmentTunnelingConfigResponse {
  /// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
  final String encapsulationProfile;

  /// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
  final String routingMode;

  ServiceAttachmentTunnelingConfigResponse({
    required this.encapsulationProfile,
    required this.routingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encapsulationProfile'] = encapsulationProfile;
    map['routingMode'] = routingMode;
    return map;
  }

  factory ServiceAttachmentTunnelingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return ServiceAttachmentTunnelingConfigResponse(
      encapsulationProfile: map['encapsulationProfile'] as String,
      routingMode: map['routingMode'] as String,
    );
  }
}
