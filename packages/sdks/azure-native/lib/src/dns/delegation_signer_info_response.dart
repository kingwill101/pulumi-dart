// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The delegation signer information.
class DelegationSignerInfoResponse {
  /// The digest algorithm type represents the standard digest algorithm number used to construct the digest. See: https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
  final pulumi.Input<int> digestAlgorithmType;
  /// The digest value is a cryptographic hash value of the referenced DNSKEY Resource Record.
  final pulumi.Input<String> digestValue;
  /// The record represents a delegation signer (DS) record.
  final pulumi.Input<String> record;

  /// Creates a new [DelegationSignerInfoResponse].
  /// [digestAlgorithmType] The digest algorithm type represents the standard digest algorithm number used to construct the digest. See: https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
  /// [digestValue] The digest value is a cryptographic hash value of the referenced DNSKEY Resource Record.
  /// [record] The record represents a delegation signer (DS) record.
  const DelegationSignerInfoResponse({
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
      digestAlgorithmType: pulumi.Input.fromValue(map['digestAlgorithmType'] as int),
      digestValue: pulumi.Input.fromValue(map['digestValue'] as String),
      record: pulumi.Input.fromValue(map['record'] as String),
    );
  }
}
