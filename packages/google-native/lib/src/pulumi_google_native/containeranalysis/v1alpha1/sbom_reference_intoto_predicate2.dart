// ignore_for_file: unused_element, unnecessary_cast

/// A predicate which describes the SBOM being referenced.
class SbomReferenceIntotoPredicate2 {
  /// A map of algorithm to digest of the contents of the SBOM.
  final Map<String, String>? digest;

  /// The location of the SBOM.
  final String? location;

  /// The mime type of the SBOM.
  final String? mimeType;

  /// The person or system referring this predicate to the consumer.
  final String? referrerId;

  SbomReferenceIntotoPredicate2({
    this.digest,
    this.location,
    this.mimeType,
    this.referrerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mimeTypeValue = mimeType;
    if (mimeTypeValue != null) {
      map['mimeType'] = mimeTypeValue;
    }
    final referrerIdValue = referrerId;
    if (referrerIdValue != null) {
      map['referrerId'] = referrerIdValue;
    }
    return map;
  }

  factory SbomReferenceIntotoPredicate2.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPredicate2(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      referrerId:
          map['referrerId'] == null ? null : map['referrerId'] as String,
    );
  }
}
