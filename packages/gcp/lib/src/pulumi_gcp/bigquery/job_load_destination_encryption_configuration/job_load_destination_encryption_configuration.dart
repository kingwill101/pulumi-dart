// ignore_for_file: unused_element, unnecessary_cast

class JobLoadDestinationEncryptionConfiguration {
  /// Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
  /// The BigQuery Service Account associated with your project requires access to this encryption key.
  final String kmsKeyName;

  /// (Output)
  /// Describes the Cloud KMS encryption key version used to protect destination BigQuery table.
  final String? kmsKeyVersion;

  JobLoadDestinationEncryptionConfiguration({
    required this.kmsKeyName,
    this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    final kmsKeyVersionValue = kmsKeyVersion;
    if (kmsKeyVersionValue != null) {
      map['kmsKeyVersion'] = kmsKeyVersionValue;
    }
    return map;
  }

  factory JobLoadDestinationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return JobLoadDestinationEncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyVersion:
          map['kmsKeyVersion'] == null ? null : map['kmsKeyVersion'] as String,
    );
  }
}
