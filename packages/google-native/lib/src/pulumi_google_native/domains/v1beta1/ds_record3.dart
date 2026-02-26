// ignore_for_file: unused_element, unnecessary_cast

import 'ds_record_algorithm3.dart';
import 'ds_record_digest_type3.dart';

/// Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC for a domain. It contains a digest (hash) of a DNSKEY record that must be present in the domain's DNS zone.
class DsRecord3 {
  /// The algorithm used to generate the referenced DNSKEY.
  final DsRecordAlgorithm3? algorithm;

  /// The digest generated from the referenced DNSKEY.
  final String? digest;

  /// The hash function used to generate the digest of the referenced DNSKEY.
  final DsRecordDigestType3? digestType;

  /// The key tag of the record. Must be set in range 0 -- 65535.
  final int? keyTag;

  DsRecord3({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmValue = algorithm;
    if (algorithmValue != null) {
      map['algorithm'] = algorithmValue.value;
    }
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final digestTypeValue = digestType;
    if (digestTypeValue != null) {
      map['digestType'] = digestTypeValue.value;
    }
    final keyTagValue = keyTag;
    if (keyTagValue != null) {
      map['keyTag'] = keyTagValue;
    }
    return map;
  }

  factory DsRecord3.fromMap(Map<String, dynamic> map) {
    return DsRecord3(
      algorithm: map['algorithm'] == null
          ? null
          : DsRecordAlgorithm3.fromValue(map['algorithm'] as String),
      digest: map['digest'] == null ? null : map['digest'] as String,
      digestType: map['digestType'] == null
          ? null
          : DsRecordDigestType3.fromValue(map['digestType'] as String),
      keyTag: map['keyTag'] == null ? null : map['keyTag'] as int,
    );
  }
}
