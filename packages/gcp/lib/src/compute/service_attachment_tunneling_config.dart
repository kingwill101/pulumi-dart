// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttachmentTunnelingConfig {
  /// The encapsulation profile for tunneling traffic.
  final String? encapsulationProfile;

  /// The routing mode for tunneling traffic.
  final String? routingMode;

  /// Creates a new [ServiceAttachmentTunnelingConfig].
  /// [encapsulationProfile] The encapsulation profile for tunneling traffic.
  /// [routingMode] The routing mode for tunneling traffic.
  ServiceAttachmentTunnelingConfig({
    this.encapsulationProfile,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationProfile': ?encapsulationProfile,
      'routingMode': ?routingMode,
    };
  }

  factory ServiceAttachmentTunnelingConfig.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentTunnelingConfig(
      encapsulationProfile: map['encapsulationProfile'] == null
          ? null
          : map['encapsulationProfile'] as String,
      routingMode: map['routingMode'] == null
          ? null
          : map['routingMode'] as String,
    );
  }
}
