// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigEncryptionConfig {
  /// Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  final String kmsKeyName;

  EnvironmentConfigEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EnvironmentConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
