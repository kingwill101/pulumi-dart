// ignore_for_file: unused_element, unnecessary_cast

class JobConfigEncryptionSecretManagerKeySource {
  /// The name of the Secret Version containing the encryption key in the following format: projects/{project}/secrets/{secret_id}/versions/{version_number}.
  final String secretVersion;

  JobConfigEncryptionSecretManagerKeySource({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory JobConfigEncryptionSecretManagerKeySource.fromMap(
      Map<String, dynamic> map) {
    return JobConfigEncryptionSecretManagerKeySource(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
