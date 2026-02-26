// ignore_for_file: unused_element, unnecessary_cast

class DataTransferConfigEncryptionConfiguration {
  /// The name of the KMS key used for encrypting BigQuery data.
  final String kmsKeyName;

  DataTransferConfigEncryptionConfiguration({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory DataTransferConfigEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataTransferConfigEncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
