// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import Route Policy Configuration.
class ImportRoutePolicyInformationResponse {
  /// Import IPv4 Route Policy Id.
  final pulumi.Input<String>? importIpv4RoutePolicyId;
  /// Import IPv6 Route Policy Id.
  final pulumi.Input<String>? importIpv6RoutePolicyId;

  /// Creates a new [ImportRoutePolicyInformationResponse].
  /// [importIpv4RoutePolicyId] Import IPv4 Route Policy Id.
  /// [importIpv6RoutePolicyId] Import IPv6 Route Policy Id.
  ImportRoutePolicyInformationResponse({
    this.importIpv4RoutePolicyId,
    this.importIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importIpv4RoutePolicyId': ?importIpv4RoutePolicyId,
      'importIpv6RoutePolicyId': ?importIpv6RoutePolicyId,
    };
  }

  factory ImportRoutePolicyInformationResponse.fromMap(Map<String, dynamic> map) {
    return ImportRoutePolicyInformationResponse(
      importIpv4RoutePolicyId: map['importIpv4RoutePolicyId'] == null ? null : (map['importIpv4RoutePolicyId']! as String).input(),
      importIpv6RoutePolicyId: map['importIpv6RoutePolicyId'] == null ? null : (map['importIpv6RoutePolicyId']! as String).input(),
    );
  }
}

