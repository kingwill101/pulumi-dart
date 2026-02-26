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

  RegistrationDnsSettingsCustomDnsDsRecord({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmValue = algorithm;
    if (algorithmValue != null) {
      map['algorithm'] = algorithmValue;
    }
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final digestTypeValue = digestType;
    if (digestTypeValue != null) {
      map['digestType'] = digestTypeValue;
    }
    final keyTagValue = keyTag;
    if (keyTagValue != null) {
      map['keyTag'] = keyTagValue;
    }
    return map;
  }

  factory RegistrationDnsSettingsCustomDnsDsRecord.fromMap(
      Map<String, dynamic> map) {
    return RegistrationDnsSettingsCustomDnsDsRecord(
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      digest: map['digest'] == null ? null : map['digest'] as String,
      digestType:
          map['digestType'] == null ? null : map['digestType'] as String,
      keyTag: map['keyTag'] == null ? null : map['keyTag'] as int,
    );
  }
}
