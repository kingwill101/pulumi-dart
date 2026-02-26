// ignore_for_file: unused_element, unnecessary_cast

class GetDatasetDefaultEncryptionConfiguration {
  /// Describes the Cloud KMS encryption key that will be used to protect destination
  /// BigQuery table. The BigQuery Service Account associated with your project requires
  /// access to this encryption key.
  final String kmsKeyName;

  GetDatasetDefaultEncryptionConfiguration({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory GetDatasetDefaultEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDatasetDefaultEncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
