// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDatastoreSecrets.
class ListDatastoreSecretsResult {
  /// [Required] Credential type used to authentication with storage.
  final String secretsType;

  /// Creates a new [ListDatastoreSecretsResult].
  /// [secretsType] [Required] Credential type used to authentication with storage.
  ListDatastoreSecretsResult({
    required this.secretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretsType': secretsType,
    };
  }

  factory ListDatastoreSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListDatastoreSecretsResult(
      secretsType: map['secretsType'] as String,
    );
  }
}

