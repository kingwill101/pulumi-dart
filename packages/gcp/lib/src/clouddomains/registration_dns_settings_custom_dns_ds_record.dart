// ignore_for_file: unused_element, unnecessary_cast


class RegistrationDnsSettingsCustomDnsDsRecord {
  /// The algorithm used to generate the referenced DNSKEY.
  final String? algorithm;
  /// The digest generated from the referenced DNSKEY.
  final String? digest;
  /// The hash function used to generate the digest of the referenced DNSKEY.
  final String? digestType;
  /// The key tag of the record. Must be set in range 0 -- 65535.
  final int? keyTag;

  /// Creates a new [RegistrationDnsSettingsCustomDnsDsRecord].
  /// [algorithm] The algorithm used to generate the referenced DNSKEY.
  /// [digest] The digest generated from the referenced DNSKEY.
  /// [digestType] The hash function used to generate the digest of the referenced DNSKEY.
  /// [keyTag] The key tag of the record. Must be set in range 0 -- 65535.
  RegistrationDnsSettingsCustomDnsDsRecord({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'digest': ?digest,
      'digestType': ?digestType,
      'keyTag': ?keyTag,
    };
  }

  factory RegistrationDnsSettingsCustomDnsDsRecord.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettingsCustomDnsDsRecord(
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      digest: map['digest'] == null ? null : map['digest'] as String,
      digestType: map['digestType'] == null ? null : map['digestType'] as String,
      keyTag: map['keyTag'] == null ? null : map['keyTag'] as int,
    );
  }
}

