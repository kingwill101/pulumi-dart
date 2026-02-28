// ignore_for_file: unused_element, unnecessary_cast

import 'dns_key_spec_algorithm.dart';
import 'dns_key_spec_key_type.dart';

/// Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.
class DnsKeySpec {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  final DnsKeySpecAlgorithm? algorithm;

  /// Length of the keys in bits.
  final int? keyLength;

  /// Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  final DnsKeySpecKeyType? keyType;
  final String? kind;

  /// Creates a new [DnsKeySpec].
  /// [algorithm] String mnemonic specifying the DNSSEC algorithm of this key.
  /// [keyLength] Length of the keys in bits.
  /// [keyType] Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  /// [kind] Optional.
  DnsKeySpec({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmValue = algorithm;
    if (algorithmValue != null) {
      map['algorithm'] = algorithmValue.value;
    }
    final keyLengthValue = keyLength;
    if (keyLengthValue != null) {
      map['keyLength'] = keyLengthValue;
    }
    final keyTypeValue = keyType;
    if (keyTypeValue != null) {
      map['keyType'] = keyTypeValue.value;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory DnsKeySpec.fromMap(Map<String, dynamic> map) {
    return DnsKeySpec(
      algorithm: map['algorithm'] == null
          ? null
          : DnsKeySpecAlgorithm.fromValue(map['algorithm'] as String),
      keyLength: map['keyLength'] == null ? null : map['keyLength'] as int,
      keyType: map['keyType'] == null
          ? null
          : DnsKeySpecKeyType.fromValue(map['keyType'] as String),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
