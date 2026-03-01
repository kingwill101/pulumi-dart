// ignore_for_file: unused_element, unnecessary_cast


/// Import Route Policy Configuration.
class ImportRoutePolicyInformation {
  /// Import IPv4 Route Policy Id.
  final String? importIpv4RoutePolicyId;
  /// Import IPv6 Route Policy Id.
  final String? importIpv6RoutePolicyId;

  /// Creates a new [ImportRoutePolicyInformation].
  /// [importIpv4RoutePolicyId] Import IPv4 Route Policy Id.
  /// [importIpv6RoutePolicyId] Import IPv6 Route Policy Id.
  ImportRoutePolicyInformation({
    this.importIpv4RoutePolicyId,
    this.importIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importIpv4RoutePolicyId': ?importIpv4RoutePolicyId,
      'importIpv6RoutePolicyId': ?importIpv6RoutePolicyId,
    };
  }

  factory ImportRoutePolicyInformation.fromMap(Map<String, dynamic> map) {
    return ImportRoutePolicyInformation(
      importIpv4RoutePolicyId: map['importIpv4RoutePolicyId'] == null ? null : map['importIpv4RoutePolicyId'] as String,
      importIpv6RoutePolicyId: map['importIpv6RoutePolicyId'] == null ? null : map['importIpv6RoutePolicyId'] as String,
    );
  }
}

