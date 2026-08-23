// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration {
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration].
  /// [kmsKey] Optional.
  const WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
    };
  }

  factory WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
