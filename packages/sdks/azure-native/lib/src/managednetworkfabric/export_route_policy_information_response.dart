// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export Route Policy Configuration.
class ExportRoutePolicyInformationResponse {
  /// Export IPv4 Route Policy Id.
  final pulumi.Input<String>? exportIpv4RoutePolicyId;
  /// Export IPv6 Route Policy Id.
  final pulumi.Input<String>? exportIpv6RoutePolicyId;

  /// Creates a new [ExportRoutePolicyInformationResponse].
  /// [exportIpv4RoutePolicyId] Export IPv4 Route Policy Id.
  /// [exportIpv6RoutePolicyId] Export IPv6 Route Policy Id.
  const ExportRoutePolicyInformationResponse({
    this.exportIpv4RoutePolicyId,
    this.exportIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportIpv4RoutePolicyId': ?exportIpv4RoutePolicyId,
      'exportIpv6RoutePolicyId': ?exportIpv6RoutePolicyId,
    };
  }

  factory ExportRoutePolicyInformationResponse.fromMap(Map<String, dynamic> map) {
    return ExportRoutePolicyInformationResponse(
      exportIpv4RoutePolicyId: (() { final guardedValue = map['exportIpv4RoutePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportIpv6RoutePolicyId: (() { final guardedValue = map['exportIpv6RoutePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

