// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigEncryptionConfig {
  /// Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  final String kmsKeyName;

  GetEnvironmentConfigEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory GetEnvironmentConfigEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
