// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationCustomerContentEncryptionConfiguration {
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [WorkgroupConfigurationCustomerContentEncryptionConfiguration].
  /// [kmsKey] Optional.
  const WorkgroupConfigurationCustomerContentEncryptionConfiguration({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
    };
  }

  factory WorkgroupConfigurationCustomerContentEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationCustomerContentEncryptionConfiguration(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
