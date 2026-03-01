// ignore_for_file: unused_element, unnecessary_cast

/// Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.
class DsRecordResponse {
  /// The algorithm used to generate the referenced DNSKEY.
  final String algorithm;

  /// The digest generated from the referenced DNSKEY.
  final String digest;

  /// The hash function used to generate the digest of the referenced DNSKEY.
  final String digestType;

  /// The key tag of the record. Must be set in range 0 -- 65535.
  final int keyTag;

  /// Creates a new [DsRecordResponse].
  /// [algorithm] The algorithm used to generate the referenced DNSKEY.
  /// [digest] The digest generated from the referenced DNSKEY.
  /// [digestType] The hash function used to generate the digest of the referenced DNSKEY.
  /// [keyTag] The key tag of the record. Must be set in range 0 -- 65535.
  DsRecordResponse({
    required this.algorithm,
    required this.digest,
    required this.digestType,
    required this.keyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'digest': digest,
      'digestType': digestType,
      'keyTag': keyTag,
    };
  }

  factory DsRecordResponse.fromMap(Map<String, dynamic> map) {
    return DsRecordResponse(
      algorithm: map['algorithm'] as String,
      digest: map['digest'] as String,
      digestType: map['digestType'] as String,
      keyTag: map['keyTag'] as int,
    );
  }
}
