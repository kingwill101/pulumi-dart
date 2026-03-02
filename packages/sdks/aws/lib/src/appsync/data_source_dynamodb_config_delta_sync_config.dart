// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceDynamodbConfigDeltaSyncConfig {
  /// The number of minutes that an Item is stored in the data source.
  final pulumi.Input<int>? baseTableTtl;
  /// The table name.
  final pulumi.Input<String> deltaSyncTableName;
  /// The number of minutes that a Delta Sync log entry is stored in the Delta Sync table.
  final pulumi.Input<int>? deltaSyncTableTtl;

  /// Creates a new [DataSourceDynamodbConfigDeltaSyncConfig].
  /// [baseTableTtl] The number of minutes that an Item is stored in the data source.
  /// [deltaSyncTableName] The table name.
  /// [deltaSyncTableTtl] The number of minutes that a Delta Sync log entry is stored in the Delta Sync table.
  DataSourceDynamodbConfigDeltaSyncConfig({
    this.baseTableTtl,
    required this.deltaSyncTableName,
    this.deltaSyncTableTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTableTtl': ?baseTableTtl,
      'deltaSyncTableName': deltaSyncTableName,
      'deltaSyncTableTtl': ?deltaSyncTableTtl,
    };
  }

  factory DataSourceDynamodbConfigDeltaSyncConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceDynamodbConfigDeltaSyncConfig(
      baseTableTtl: map['baseTableTtl'] == null ? null : ((map['baseTableTtl'] as int).input()).input(),
      deltaSyncTableName: (map['deltaSyncTableName'] as String).input(),
      deltaSyncTableTtl: map['deltaSyncTableTtl'] == null ? null : ((map['deltaSyncTableTtl'] as int).input()).input(),
    );
  }
}

