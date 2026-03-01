// ignore_for_file: unused_element, unnecessary_cast


/// List of properties of a link provider.
class VpnLinkProviderPropertiesResponse {
  /// Name of the link provider.
  final String? linkProviderName;
  /// Link speed.
  final int? linkSpeedInMbps;

  /// Creates a new [VpnLinkProviderPropertiesResponse].
  /// [linkProviderName] Name of the link provider.
  /// [linkSpeedInMbps] Link speed.
  VpnLinkProviderPropertiesResponse({
    this.linkProviderName,
    this.linkSpeedInMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkProviderName': ?linkProviderName,
      'linkSpeedInMbps': ?linkSpeedInMbps,
    };
  }

  factory VpnLinkProviderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VpnLinkProviderPropertiesResponse(
      linkProviderName: map['linkProviderName'] == null ? null : map['linkProviderName'] as String,
      linkSpeedInMbps: map['linkSpeedInMbps'] == null ? null : map['linkSpeedInMbps'] as int,
    );
  }
}

