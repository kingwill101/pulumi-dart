// ignore_for_file: unused_element, unnecessary_cast


/// A predicate which describes the SBOM being referenced.
class SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1 {
  /// A map of algorithm to digest of the contents of the SBOM.
  final Map<String, String> digest;
  /// The location of the SBOM.
  final String location;
  /// The mime type of the SBOM.
  final String mimeType;
  /// The person or system referring this predicate to the consumer.
  final String referrerId;

  /// Creates a new [SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1].
  /// [digest] A map of algorithm to digest of the contents of the SBOM.
  /// [location] The location of the SBOM.
  /// [mimeType] The mime type of the SBOM.
  /// [referrerId] The person or system referring this predicate to the consumer.
  SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1({
    required this.digest,
    required this.location,
    required this.mimeType,
    required this.referrerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'location': location,
      'mimeType': mimeType,
      'referrerId': referrerId,
    };
  }

  factory SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1(
      digest: (map['digest'] as Map).cast<String, String>(),
      location: map['location'] as String,
      mimeType: map['mimeType'] as String,
      referrerId: map['referrerId'] as String,
    );
  }
}

