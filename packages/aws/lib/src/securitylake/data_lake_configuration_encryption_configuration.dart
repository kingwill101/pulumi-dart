// ignore_for_file: unused_element, unnecessary_cast

class DataLakeConfigurationEncryptionConfiguration {
  /// The id of KMS encryption key used by Amazon Security Lake to encrypt the Security Lake object.
  final String kmsKeyId;

  /// Creates a new [DataLakeConfigurationEncryptionConfiguration].
  /// [kmsKeyId] The id of KMS encryption key used by Amazon Security Lake to encrypt the Security Lake object.
  DataLakeConfigurationEncryptionConfiguration({
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyId'] = kmsKeyId;
    return map;
  }

  factory DataLakeConfigurationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataLakeConfigurationEncryptionConfiguration(
      kmsKeyId: map['kmsKeyId'] as String,
    );
  }
}
