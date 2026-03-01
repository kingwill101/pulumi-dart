// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupConfigurationCustomerContentEncryptionConfiguration {
  final String? kmsKey;

  /// Creates a new [WorkgroupConfigurationCustomerContentEncryptionConfiguration].
  /// [kmsKey] Optional.
  WorkgroupConfigurationCustomerContentEncryptionConfiguration({this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': ?kmsKey};
  }

  factory WorkgroupConfigurationCustomerContentEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkgroupConfigurationCustomerContentEncryptionConfiguration(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
