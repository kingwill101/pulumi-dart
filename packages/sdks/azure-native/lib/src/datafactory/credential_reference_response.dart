// ignore_for_file: unused_element, unnecessary_cast


/// Credential reference type.
class CredentialReferenceResponse {
  /// Reference credential name.
  final String referenceName;
  /// Credential reference type.
  final String type;

  /// Creates a new [CredentialReferenceResponse].
  /// [referenceName] Reference credential name.
  /// [type] Credential reference type.
  CredentialReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory CredentialReferenceResponse.fromMap(Map<String, dynamic> map) {
    return CredentialReferenceResponse(
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}

