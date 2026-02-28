// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_dynamodb_config_delta_sync_config.dart';

class DataSourceDynamodbConfig {
  /// The DeltaSyncConfig for a versioned data source. See `delta_sync_config` Block for details.
  final DataSourceDynamodbConfigDeltaSyncConfig? deltaSyncConfig;

  /// AWS region of the DynamoDB table. Defaults to current region.
  final String? region;

  /// Name of the DynamoDB table.
  final String tableName;

  /// Set to `true` to use Amazon Cognito credentials with this data source.
  final bool? useCallerCredentials;

  /// Detects Conflict Detection and Resolution with this data source.
  final bool? versioned;

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
    final map = <String, dynamic>{};
    final deltaSyncConfigValue = deltaSyncConfig;
    if (deltaSyncConfigValue != null) {
      map['deltaSyncConfig'] = deltaSyncConfigValue.toMap();
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    final useCallerCredentialsValue = useCallerCredentials;
    if (useCallerCredentialsValue != null) {
      map['useCallerCredentials'] = useCallerCredentialsValue;
    }
    final versionedValue = versioned;
    if (versionedValue != null) {
      map['versioned'] = versionedValue;
    }
    return map;
  }

  factory DataSourceDynamodbConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceDynamodbConfig(
      deltaSyncConfig: map['deltaSyncConfig'] == null
          ? null
          : DataSourceDynamodbConfigDeltaSyncConfig.fromMap(
              (map['deltaSyncConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tableName: map['tableName'] as String,
      useCallerCredentials: map['useCallerCredentials'] == null
          ? null
          : map['useCallerCredentials'] as bool,
      versioned: map['versioned'] == null ? null : map['versioned'] as bool,
    );
  }
}
