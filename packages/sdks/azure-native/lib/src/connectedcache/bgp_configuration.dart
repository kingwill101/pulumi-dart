// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Bgp configuration of cache node
class BgpConfiguration {
  /// Asn to ip address mapping
  final pulumi.Input<String?>? asnToIpAddressMapping;

  /// Creates a new [BgpConfiguration].
  /// [asnToIpAddressMapping] Asn to ip address mapping
  const BgpConfiguration({
    this.asnToIpAddressMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnToIpAddressMapping': ?asnToIpAddressMapping,
    };
  }

  factory BgpConfiguration.fromMap(Map<String, dynamic> map) {
    return BgpConfiguration(
      asnToIpAddressMapping: (() { final guardedValue = map['asnToIpAddressMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
