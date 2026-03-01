// ignore_for_file: unused_element, unnecessary_cast

/// A predicate which describes the SBOM being referenced.
class SbomReferenceIntotoPredicate {
  /// A map of algorithm to digest of the contents of the SBOM.
  final Map<String, String>? digest;

  /// The location of the SBOM.
  final String? location;

  /// The mime type of the SBOM.
  final String? mimeType;

  /// The person or system referring this predicate to the consumer.
  final String? referrerId;

  /// Creates a new [SbomReferenceIntotoPredicate].
  /// [digest] A map of algorithm to digest of the contents of the SBOM.
  /// [location] The location of the SBOM.
  /// [mimeType] The mime type of the SBOM.
  /// [referrerId] The person or system referring this predicate to the consumer.
  SbomReferenceIntotoPredicate({
    this.digest,
    this.location,
    this.mimeType,
    this.referrerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'location': ?location,
      'mimeType': ?mimeType,
      'referrerId': ?referrerId,
    };
  }

  factory SbomReferenceIntotoPredicate.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPredicate(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      referrerId: map['referrerId'] == null
          ? null
          : map['referrerId'] as String,
    );
  }
}
