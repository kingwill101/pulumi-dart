// ignore_for_file: unused_element, unnecessary_cast


/// Bgp configuration of cache node
class BgpConfiguration {
  /// Asn to ip address mapping
  final String? asnToIpAddressMapping;

  /// Creates a new [BgpConfiguration].
  /// [asnToIpAddressMapping] Asn to ip address mapping
  BgpConfiguration({
    this.asnToIpAddressMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnToIpAddressMapping': ?asnToIpAddressMapping,
    };
  }

  factory BgpConfiguration.fromMap(Map<String, dynamic> map) {
    return BgpConfiguration(
      asnToIpAddressMapping: map['asnToIpAddressMapping'] == null ? null : map['asnToIpAddressMapping'] as String,
    );
  }
}

