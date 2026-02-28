// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration {
  final String? kmsKey;

  /// Creates a new [WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration].
  /// [kmsKey] Optional.
  WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
