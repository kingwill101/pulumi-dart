// ignore_for_file: unused_element, unnecessary_cast


class DataTransferConfigEncryptionConfiguration {
  /// The name of the KMS key used for encrypting BigQuery data.
  final String kmsKeyName;

  /// Creates a new [DataTransferConfigEncryptionConfiguration].
  /// [kmsKeyName] The name of the KMS key used for encrypting BigQuery data.
  DataTransferConfigEncryptionConfiguration({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory DataTransferConfigEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigEncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

