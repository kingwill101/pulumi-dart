// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigEncryptionSecretManagerKeySource {
  /// The name of the Secret Version containing the encryption key in the following format: projects/{project}/secrets/{secret_id}/versions/{version_number}.
  final String secretVersion;

  /// Creates a new [JobTemplateConfigEncryptionSecretManagerKeySource].
  /// [secretVersion] The name of the Secret Version containing the encryption key in the following format: projects/{project}/secrets/{secret_id}/versions/{version_number}.
  JobTemplateConfigEncryptionSecretManagerKeySource({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory JobTemplateConfigEncryptionSecretManagerKeySource.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateConfigEncryptionSecretManagerKeySource(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
