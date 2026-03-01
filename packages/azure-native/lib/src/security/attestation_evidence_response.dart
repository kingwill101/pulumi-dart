// ignore_for_file: unused_element, unnecessary_cast


/// Describe the properties of a assignment attestation
class AttestationEvidenceResponse {
  /// The description of the evidence
  final String? description;
  /// The source url of the evidence
  final String? sourceUrl;

  /// Creates a new [AttestationEvidenceResponse].
  /// [description] The description of the evidence
  /// [sourceUrl] The source url of the evidence
  AttestationEvidenceResponse({
    this.description,
    this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'sourceUrl': ?sourceUrl,
    };
  }

  factory AttestationEvidenceResponse.fromMap(Map<String, dynamic> map) {
    return AttestationEvidenceResponse(
      description: map['description'] == null ? null : map['description'] as String,
      sourceUrl: map['sourceUrl'] == null ? null : map['sourceUrl'] as String,
    );
  }
}

