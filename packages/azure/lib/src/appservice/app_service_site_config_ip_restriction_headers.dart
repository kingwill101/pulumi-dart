// ignore_for_file: unused_element, unnecessary_cast


class AppServiceSiteConfigIpRestrictionHeaders {
  /// A list of allowed Azure FrontDoor IDs in UUID notation with a maximum of 8.
  final List<String>? xAzureFdids;
  /// A list to allow the Azure FrontDoor health probe header. Only allowed value is "1".
  final String? xFdHealthProbe;
  /// A list of allowed 'X-Forwarded-For' IPs in CIDR notation with a maximum of 8
  final List<String>? xForwardedFors;
  /// A list of allowed 'X-Forwarded-Host' domains with a maximum of 8.
  final List<String>? xForwardedHosts;

  /// Creates a new [AppServiceSiteConfigIpRestrictionHeaders].
  /// [xAzureFdids] A list of allowed Azure FrontDoor IDs in UUID notation with a maximum of 8.
  /// [xFdHealthProbe] A list to allow the Azure FrontDoor health probe header. Only allowed value is "1".
  /// [xForwardedFors] A list of allowed 'X-Forwarded-For' IPs in CIDR notation with a maximum of 8
  /// [xForwardedHosts] A list of allowed 'X-Forwarded-Host' domains with a maximum of 8.
  AppServiceSiteConfigIpRestrictionHeaders({
    this.xAzureFdids,
    this.xFdHealthProbe,
    this.xForwardedFors,
    this.xForwardedHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xAzureFdids': ?xAzureFdids,
      'xFdHealthProbe': ?xFdHealthProbe,
      'xForwardedFors': ?xForwardedFors,
      'xForwardedHosts': ?xForwardedHosts,
    };
  }

  factory AppServiceSiteConfigIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return AppServiceSiteConfigIpRestrictionHeaders(
      xAzureFdids: map['xAzureFdids'] == null ? null : (map['xAzureFdids'] as List).cast<String>(),
      xFdHealthProbe: map['xFdHealthProbe'] == null ? null : map['xFdHealthProbe'] as String,
      xForwardedFors: map['xForwardedFors'] == null ? null : (map['xForwardedFors'] as List).cast<String>(),
      xForwardedHosts: map['xForwardedHosts'] == null ? null : (map['xForwardedHosts'] as List).cast<String>(),
    );
  }
}

