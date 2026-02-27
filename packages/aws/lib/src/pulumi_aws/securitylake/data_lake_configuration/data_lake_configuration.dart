// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_lake_configuration_encryption_configuration/data_lake_configuration_encryption_configuration.dart';
import '../data_lake_configuration_lifecycle_configuration/data_lake_configuration_lifecycle_configuration.dart';
import '../data_lake_configuration_replication_configuration/data_lake_configuration_replication_configuration.dart';

class DataLakeConfiguration {
  /// Provides encryption details of Amazon Security Lake object.
  final List<DataLakeConfigurationEncryptionConfiguration>?
      encryptionConfigurations;

  /// Provides lifecycle details of Amazon Security Lake object.
  final DataLakeConfigurationLifecycleConfiguration? lifecycleConfiguration;

  /// The AWS Regions where Security Lake is automatically enabled.
  final String region;

  /// Provides replication details of Amazon Security Lake object.
  final DataLakeConfigurationReplicationConfiguration? replicationConfiguration;

  DataLakeConfiguration({
    this.encryptionConfigurations,
    this.lifecycleConfiguration,
    required this.region,
    this.replicationConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationsValue = encryptionConfigurations;
    if (encryptionConfigurationsValue != null) {
      map['encryptionConfigurations'] = pulumi.Input.encodeList<
              DataLakeConfigurationEncryptionConfiguration,
              Map<String, dynamic>>(
          encryptionConfigurationsValue, (value) => value.toMap());
    }
    final lifecycleConfigurationValue = lifecycleConfiguration;
    if (lifecycleConfigurationValue != null) {
      map['lifecycleConfiguration'] = lifecycleConfigurationValue.toMap();
    }
    map['region'] = region;
    final replicationConfigurationValue = replicationConfiguration;
    if (replicationConfigurationValue != null) {
      map['replicationConfiguration'] = replicationConfigurationValue.toMap();
    }
    return map;
  }

  factory DataLakeConfiguration.fromMap(Map<String, dynamic> map) {
    return DataLakeConfiguration(
      encryptionConfigurations: map['encryptionConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
                  DataLakeConfigurationEncryptionConfiguration>(
              map['encryptionConfigurations'],
              (value) => DataLakeConfigurationEncryptionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lifecycleConfiguration: map['lifecycleConfiguration'] == null
          ? null
          : DataLakeConfigurationLifecycleConfiguration.fromMap(
              (map['lifecycleConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      replicationConfiguration: map['replicationConfiguration'] == null
          ? null
          : DataLakeConfigurationReplicationConfiguration.fromMap(
              (map['replicationConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
