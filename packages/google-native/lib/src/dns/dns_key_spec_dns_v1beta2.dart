// ignore_for_file: unused_element, unnecessary_cast

import 'dns_key_spec_algorithm_dns_v1beta2.dart';
import 'dns_key_spec_key_type_dns_v1beta2.dart';

/// Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.
class DnsKeySpecDnsV1beta2 {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  final DnsKeySpecAlgorithmDnsV1beta2? algorithm;

  /// Length of the keys in bits.
  final int? keyLength;

  /// Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  final DnsKeySpecKeyTypeDnsV1beta2? keyType;
  final String? kind;

  /// Creates a new [DnsKeySpecDnsV1beta2].
  /// [algorithm] String mnemonic specifying the DNSSEC algorithm of this key.
  /// [keyLength] Length of the keys in bits.
  /// [keyType] Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  /// [kind] Optional.
  DnsKeySpecDnsV1beta2({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm == null ? null : algorithm!.value,
      'keyLength': ?keyLength,
      'keyType': ?keyType == null ? null : keyType!.value,
      'kind': ?kind,
    };
  }

  factory DnsKeySpecDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return DnsKeySpecDnsV1beta2(
      algorithm: map['algorithm'] == null
          ? null
          : DnsKeySpecAlgorithmDnsV1beta2.fromValue(map['algorithm'] as String),
      keyLength: map['keyLength'] == null ? null : map['keyLength'] as int,
      keyType: map['keyType'] == null
          ? null
          : DnsKeySpecKeyTypeDnsV1beta2.fromValue(map['keyType'] as String),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
