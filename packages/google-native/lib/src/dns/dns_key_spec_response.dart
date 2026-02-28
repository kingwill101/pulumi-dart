// ignore_for_file: unused_element, unnecessary_cast

/// Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.
class DnsKeySpecResponse {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  final String algorithm;

  /// Length of the keys in bits.
  final int keyLength;

  /// Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  final String keyType;
  final String kind;

  /// Creates a new [DnsKeySpecResponse].
  /// [algorithm] String mnemonic specifying the DNSSEC algorithm of this key.
  /// [keyLength] Length of the keys in bits.
  /// [keyType] Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
  /// [kind] Required.
  DnsKeySpecResponse({
    required this.algorithm,
    required this.keyLength,
    required this.keyType,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['keyLength'] = keyLength;
    map['keyType'] = keyType;
    map['kind'] = kind;
    return map;
  }

  factory DnsKeySpecResponse.fromMap(Map<String, dynamic> map) {
    return DnsKeySpecResponse(
      algorithm: map['algorithm'] as String,
      keyLength: map['keyLength'] as int,
      keyType: map['keyType'] as String,
      kind: map['kind'] as String,
    );
  }
}
