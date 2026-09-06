// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import Route Policy Configuration.
class ImportRoutePolicyInformation {
  /// Import IPv4 Route Policy Id.
  final pulumi.Input<String?>? importIpv4RoutePolicyId;
  /// Import IPv6 Route Policy Id.
  final pulumi.Input<String?>? importIpv6RoutePolicyId;

  /// Creates a new [ImportRoutePolicyInformation].
  /// [importIpv4RoutePolicyId] Import IPv4 Route Policy Id.
  /// [importIpv6RoutePolicyId] Import IPv6 Route Policy Id.
  const ImportRoutePolicyInformation({
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
      importIpv4RoutePolicyId: (() { final guardedValue = map['importIpv4RoutePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importIpv6RoutePolicyId: (() { final guardedValue = map['importIpv6RoutePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
