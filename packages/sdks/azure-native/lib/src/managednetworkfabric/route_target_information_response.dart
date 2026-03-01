// ignore_for_file: unused_element, unnecessary_cast


/// Route Target Configuration.
class RouteTargetInformationResponse {
  /// Route Targets to be applied for outgoing routes into CE.
  final List<String>? exportIpv4RouteTargets;
  /// Route Targets to be applied for outgoing routes from CE.
  final List<String>? exportIpv6RouteTargets;
  /// Route Targets to be applied for incoming routes into CE.
  final List<String>? importIpv4RouteTargets;
  /// Route Targets to be applied for incoming routes from CE.
  final List<String>? importIpv6RouteTargets;

  /// Creates a new [RouteTargetInformationResponse].
  /// [exportIpv4RouteTargets] Route Targets to be applied for outgoing routes into CE.
  /// [exportIpv6RouteTargets] Route Targets to be applied for outgoing routes from CE.
  /// [importIpv4RouteTargets] Route Targets to be applied for incoming routes into CE.
  /// [importIpv6RouteTargets] Route Targets to be applied for incoming routes from CE.
  RouteTargetInformationResponse({
    this.exportIpv4RouteTargets,
    this.exportIpv6RouteTargets,
    this.importIpv4RouteTargets,
    this.importIpv6RouteTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportIpv4RouteTargets': ?exportIpv4RouteTargets,
      'exportIpv6RouteTargets': ?exportIpv6RouteTargets,
      'importIpv4RouteTargets': ?importIpv4RouteTargets,
      'importIpv6RouteTargets': ?importIpv6RouteTargets,
    };
  }

  factory RouteTargetInformationResponse.fromMap(Map<String, dynamic> map) {
    return RouteTargetInformationResponse(
      exportIpv4RouteTargets: map['exportIpv4RouteTargets'] == null ? null : (map['exportIpv4RouteTargets'] as List).cast<String>(),
      exportIpv6RouteTargets: map['exportIpv6RouteTargets'] == null ? null : (map['exportIpv6RouteTargets'] as List).cast<String>(),
      importIpv4RouteTargets: map['importIpv4RouteTargets'] == null ? null : (map['importIpv4RouteTargets'] as List).cast<String>(),
      importIpv6RouteTargets: map['importIpv6RouteTargets'] == null ? null : (map['importIpv6RouteTargets'] as List).cast<String>(),
    );
  }
}

