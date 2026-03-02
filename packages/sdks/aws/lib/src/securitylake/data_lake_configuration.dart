// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_configuration_encryption_configuration.dart';
import 'data_lake_configuration_lifecycle_configuration.dart';
import 'data_lake_configuration_replication_configuration.dart';

class DataLakeConfiguration {
  /// Provides encryption details of Amazon Security Lake object.
  final pulumi.Input<List<DataLakeConfigurationEncryptionConfiguration>>? encryptionConfigurations;
  /// Provides lifecycle details of Amazon Security Lake object.
  final pulumi.Input<DataLakeConfigurationLifecycleConfiguration>? lifecycleConfiguration;
  /// The AWS Regions where Security Lake is automatically enabled.
  final pulumi.Input<String> region;
  /// Provides replication details of Amazon Security Lake object.
  final pulumi.Input<DataLakeConfigurationReplicationConfiguration>? replicationConfiguration;

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
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DataLakeConfigurationEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<DataLakeConfigurationEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleConfiguration': ?pulumi.Input.mapOptionalInputValue<DataLakeConfigurationLifecycleConfiguration, Map<String, dynamic>>(lifecycleConfiguration, (value) => value.toMap()),
      'region': region,
      'replicationConfiguration': ?pulumi.Input.mapOptionalInputValue<DataLakeConfigurationReplicationConfiguration, Map<String, dynamic>>(replicationConfiguration, (value) => value.toMap()),
    };
  }

  factory DataLakeConfiguration.fromMap(Map<String, dynamic> map) {
    return DataLakeConfiguration(
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : ((pulumi.Input.decodeList<DataLakeConfigurationEncryptionConfiguration>(map['encryptionConfigurations']!, (value) => DataLakeConfigurationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      lifecycleConfiguration: map['lifecycleConfiguration'] == null ? null : ((DataLakeConfigurationLifecycleConfiguration.fromMap((map['lifecycleConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: (map['region'] as String).input(),
      replicationConfiguration: map['replicationConfiguration'] == null ? null : ((DataLakeConfigurationReplicationConfiguration.fromMap((map['replicationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

