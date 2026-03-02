// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_dynamodb_config_delta_sync_config.dart';

class DataSourceDynamodbConfig {
  /// The DeltaSyncConfig for a versioned data source. See `delta_sync_config` Block for details.
  final pulumi.Input<DataSourceDynamodbConfigDeltaSyncConfig>? deltaSyncConfig;
  /// AWS region of the DynamoDB table. Defaults to current region.
  final pulumi.Input<String>? region;
  /// Name of the DynamoDB table.
  final pulumi.Input<String> tableName;
  /// Set to `true` to use Amazon Cognito credentials with this data source.
  final pulumi.Input<bool>? useCallerCredentials;
  /// Detects Conflict Detection and Resolution with this data source.
  final pulumi.Input<bool>? versioned;

  /// Creates a new [DataSourceDynamodbConfig].
  /// [deltaSyncConfig] The DeltaSyncConfig for a versioned data source. See `delta_sync_config` Block for details.
  /// [region] AWS region of the DynamoDB table. Defaults to current region.
  /// [tableName] Name of the DynamoDB table.
  /// [useCallerCredentials] Set to `true` to use Amazon Cognito credentials with this data source.
  /// [versioned] Detects Conflict Detection and Resolution with this data source.
  DataSourceDynamodbConfig({
    this.deltaSyncConfig,
    this.region,
    required this.tableName,
    this.useCallerCredentials,
    this.versioned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deltaSyncConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceDynamodbConfigDeltaSyncConfig, Map<String, dynamic>>(deltaSyncConfig, (value) => value.toMap()),
      'region': ?region,
      'tableName': tableName,
      'useCallerCredentials': ?useCallerCredentials,
      'versioned': ?versioned,
    };
  }

  factory DataSourceDynamodbConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceDynamodbConfig(
      deltaSyncConfig: map['deltaSyncConfig'] == null ? null : ((DataSourceDynamodbConfigDeltaSyncConfig.fromMap((map['deltaSyncConfig']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tableName: (map['tableName'] as String).input(),
      useCallerCredentials: map['useCallerCredentials'] == null ? null : ((map['useCallerCredentials'] as bool).input()).input(),
      versioned: map['versioned'] == null ? null : ((map['versioned'] as bool).input()).input(),
    );
  }
}

