// ignore_for_file: unused_element, unnecessary_cast


/// Export Route Policy either IPv4 or IPv6.
class ExportRoutePolicyResponse {
  /// ARM resource ID of RoutePolicy.
  final String? exportIpv4RoutePolicyId;
  /// ARM resource ID of RoutePolicy.
  final String? exportIpv6RoutePolicyId;

  /// Creates a new [ExportRoutePolicyResponse].
  /// [exportIpv4RoutePolicyId] ARM resource ID of RoutePolicy.
  /// [exportIpv6RoutePolicyId] ARM resource ID of RoutePolicy.
  ExportRoutePolicyResponse({
    this.exportIpv4RoutePolicyId,
    this.exportIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportIpv4RoutePolicyId': ?exportIpv4RoutePolicyId,
      'exportIpv6RoutePolicyId': ?exportIpv6RoutePolicyId,
    };
  }

  factory ExportRoutePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ExportRoutePolicyResponse(
      exportIpv4RoutePolicyId: map['exportIpv4RoutePolicyId'] == null ? null : map['exportIpv4RoutePolicyId'] as String,
      exportIpv6RoutePolicyId: map['exportIpv6RoutePolicyId'] == null ? null : map['exportIpv6RoutePolicyId'] as String,
    );
  }
}

