// ignore_for_file: unused_element, unnecessary_cast


/// The delegation signer information.
class DelegationSignerInfoResponse {
  /// The digest algorithm type represents the standard digest algorithm number used to construct the digest. See: https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
  final int digestAlgorithmType;
  /// The digest value is a cryptographic hash value of the referenced DNSKEY Resource Record.
  final String digestValue;
  /// The record represents a delegation signer (DS) record.
  final String record;

  /// Creates a new [DelegationSignerInfoResponse].
  /// [digestAlgorithmType] The digest algorithm type represents the standard digest algorithm number used to construct the digest. See: https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
  /// [digestValue] The digest value is a cryptographic hash value of the referenced DNSKEY Resource Record.
  /// [record] The record represents a delegation signer (DS) record.
  DelegationSignerInfoResponse({
    required this.digestAlgorithmType,
    required this.digestValue,
    required this.record,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digestAlgorithmType': digestAlgorithmType,
      'digestValue': digestValue,
      'record': record,
    };
  }

  factory DelegationSignerInfoResponse.fromMap(Map<String, dynamic> map) {
    return DelegationSignerInfoResponse(
      digestAlgorithmType: map['digestAlgorithmType'] as int,
      digestValue: map['digestValue'] as String,
      record: map['record'] as String,
    );
  }
}

