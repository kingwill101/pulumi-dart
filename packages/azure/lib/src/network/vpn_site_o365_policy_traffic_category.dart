// ignore_for_file: unused_element, unnecessary_cast


class VpnSiteO365PolicyTrafficCategory {
  /// Is allow endpoint enabled? The `Allow` endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to `false`.
  final bool? allowEndpointEnabled;
  /// Is default endpoint enabled? The `Default` endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to `false`.
  final bool? defaultEndpointEnabled;
  /// Is optimize endpoint enabled? The `Optimize` endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to `false`.
  final bool? optimizeEndpointEnabled;

  /// Creates a new [VpnSiteO365PolicyTrafficCategory].
  /// [allowEndpointEnabled] Is allow endpoint enabled? The `Allow` endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to `false`.
  /// [defaultEndpointEnabled] Is default endpoint enabled? The `Default` endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to `false`.
  /// [optimizeEndpointEnabled] Is optimize endpoint enabled? The `Optimize` endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to `false`.
  VpnSiteO365PolicyTrafficCategory({
    this.allowEndpointEnabled,
    this.defaultEndpointEnabled,
    this.optimizeEndpointEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEndpointEnabled': ?allowEndpointEnabled,
      'defaultEndpointEnabled': ?defaultEndpointEnabled,
      'optimizeEndpointEnabled': ?optimizeEndpointEnabled,
    };
  }

  factory VpnSiteO365PolicyTrafficCategory.fromMap(Map<String, dynamic> map) {
    return VpnSiteO365PolicyTrafficCategory(
      allowEndpointEnabled: map['allowEndpointEnabled'] == null ? null : map['allowEndpointEnabled'] as bool,
      defaultEndpointEnabled: map['defaultEndpointEnabled'] == null ? null : map['defaultEndpointEnabled'] as bool,
      optimizeEndpointEnabled: map['optimizeEndpointEnabled'] == null ? null : map['optimizeEndpointEnabled'] as bool,
    );
  }
}

