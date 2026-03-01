// ignore_for_file: unused_element, unnecessary_cast


/// The credential result response.
class CredentialResultResponse {
  /// The name of the credential.
  final String name;
  /// Base64-encoded Kubernetes configuration file.
  final String value;

  /// Creates a new [CredentialResultResponse].
  /// [name] The name of the credential.
  /// [value] Base64-encoded Kubernetes configuration file.
  CredentialResultResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory CredentialResultResponse.fromMap(Map<String, dynamic> map) {
    return CredentialResultResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

