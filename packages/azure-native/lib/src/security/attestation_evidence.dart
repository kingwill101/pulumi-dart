// ignore_for_file: unused_element, unnecessary_cast


/// Describe the properties of a assignment attestation
class AttestationEvidence {
  /// The description of the evidence
  final String? description;
  /// The source url of the evidence
  final String? sourceUrl;

  /// Creates a new [AttestationEvidence].
  /// [description] The description of the evidence
  /// [sourceUrl] The source url of the evidence
  AttestationEvidence({
    this.description,
    this.sourceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'sourceUrl': ?sourceUrl,
    };
  }

  factory AttestationEvidence.fromMap(Map<String, dynamic> map) {
    return AttestationEvidence(
      description: map['description'] == null ? null : map['description'] as String,
      sourceUrl: map['sourceUrl'] == null ? null : map['sourceUrl'] as String,
    );
  }
}

