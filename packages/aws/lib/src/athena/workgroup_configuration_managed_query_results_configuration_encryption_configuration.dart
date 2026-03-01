// ignore_for_file: unused_element, unnecessary_cast


class WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration {
  final String? kmsKey;

  /// Creates a new [WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration].
  /// [kmsKey] Optional.
  WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
    };
  }

  factory WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}

