// ignore_for_file: unused_element, unnecessary_cast

/// A predicate which describes the SBOM being referenced.
class SbomReferenceIntotoPredicateResponse2 {
  /// A map of algorithm to digest of the contents of the SBOM.
  final Map<String, String> digest;

  /// The location of the SBOM.
  final String location;

  /// The mime type of the SBOM.
  final String mimeType;

  /// The person or system referring this predicate to the consumer.
  final String referrerId;

  SbomReferenceIntotoPredicateResponse2({
    required this.digest,
    required this.location,
    required this.mimeType,
    required this.referrerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['location'] = location;
    map['mimeType'] = mimeType;
    map['referrerId'] = referrerId;
    return map;
  }

  factory SbomReferenceIntotoPredicateResponse2.fromMap(
      Map<String, dynamic> map) {
    return SbomReferenceIntotoPredicateResponse2(
      digest: (map['digest'] as Map).cast<String, String>(),
      location: map['location'] as String,
      mimeType: map['mimeType'] as String,
      referrerId: map['referrerId'] as String,
    );
  }
}
