// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export Route Policy Configuration.
class ExportRoutePolicyInformation {
  /// Export IPv4 Route Policy Id.
  final pulumi.Input<String>? exportIpv4RoutePolicyId;
  /// Export IPv6 Route Policy Id.
  final pulumi.Input<String>? exportIpv6RoutePolicyId;

  /// Creates a new [ExportRoutePolicyInformation].
  /// [exportIpv4RoutePolicyId] Export IPv4 Route Policy Id.
  /// [exportIpv6RoutePolicyId] Export IPv6 Route Policy Id.
  ExportRoutePolicyInformation({
    this.exportIpv4RoutePolicyId,
    this.exportIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportIpv4RoutePolicyId': ?exportIpv4RoutePolicyId,
      'exportIpv6RoutePolicyId': ?exportIpv6RoutePolicyId,
    };
  }

  factory ExportRoutePolicyInformation.fromMap(Map<String, dynamic> map) {
    return ExportRoutePolicyInformation(
      exportIpv4RoutePolicyId: map['exportIpv4RoutePolicyId'] == null ? null : (map['exportIpv4RoutePolicyId']! as String).input(),
      exportIpv6RoutePolicyId: map['exportIpv6RoutePolicyId'] == null ? null : (map['exportIpv6RoutePolicyId']! as String).input(),
    );
  }
}

