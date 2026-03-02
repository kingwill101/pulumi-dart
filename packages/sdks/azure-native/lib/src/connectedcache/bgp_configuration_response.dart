// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Bgp configuration of cache node
class BgpConfigurationResponse {
  /// Asn to ip address mapping
  final pulumi.Input<String>? asnToIpAddressMapping;

  /// Creates a new [BgpConfigurationResponse].
  /// [asnToIpAddressMapping] Asn to ip address mapping
  BgpConfigurationResponse({
    this.asnToIpAddressMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnToIpAddressMapping': ?asnToIpAddressMapping,
    };
  }

  factory BgpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BgpConfigurationResponse(
      asnToIpAddressMapping: map['asnToIpAddressMapping'] == null ? null : (map['asnToIpAddressMapping'] as String).input(),
    );
  }
}

