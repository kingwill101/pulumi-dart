// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupConfigurationCustomerContentEncryptionConfiguration {
  final String? kmsKey;

  /// Creates a new [WorkgroupConfigurationCustomerContentEncryptionConfiguration].
  /// [kmsKey] Optional.
  WorkgroupConfigurationCustomerContentEncryptionConfiguration({
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

  factory WorkgroupConfigurationCustomerContentEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationCustomerContentEncryptionConfiguration(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
