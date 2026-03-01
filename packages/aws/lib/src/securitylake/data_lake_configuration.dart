// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_configuration_encryption_configuration.dart';
import 'data_lake_configuration_lifecycle_configuration.dart';
import 'data_lake_configuration_replication_configuration.dart';

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

  /// Creates a new [DataLakeConfiguration].
  /// [encryptionConfigurations] Provides encryption details of Amazon Security Lake object.
  /// [lifecycleConfiguration] Provides lifecycle details of Amazon Security Lake object.
  /// [region] The AWS Regions where Security Lake is automatically enabled.
  /// [replicationConfiguration] Provides replication details of Amazon Security Lake object.
  DataLakeConfiguration({
    this.encryptionConfigurations,
    this.lifecycleConfiguration,
    required this.region,
    this.replicationConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfigurations': ?encryptionConfigurations == null
          ? null
          : pulumi.Input.encodeList<
              DataLakeConfigurationEncryptionConfiguration,
              Map<String, dynamic>
            >(encryptionConfigurations!, (value) => value.toMap()),
      'lifecycleConfiguration': ?lifecycleConfiguration == null
          ? null
          : lifecycleConfiguration!.toMap(),
      'region': region,
      'replicationConfiguration': ?replicationConfiguration == null
          ? null
          : replicationConfiguration!.toMap(),
    };
  }

  factory DataLakeConfiguration.fromMap(Map<String, dynamic> map) {
    return DataLakeConfiguration(
      encryptionConfigurations: map['encryptionConfigurations'] == null
          ? null
          : pulumi
                .Input.decodeList<DataLakeConfigurationEncryptionConfiguration>(
              map['encryptionConfigurations'],
              (value) => DataLakeConfigurationEncryptionConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      lifecycleConfiguration: map['lifecycleConfiguration'] == null
          ? null
          : DataLakeConfigurationLifecycleConfiguration.fromMap(
              (map['lifecycleConfiguration'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] as String,
      replicationConfiguration: map['replicationConfiguration'] == null
          ? null
          : DataLakeConfigurationReplicationConfiguration.fromMap(
              (map['replicationConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
