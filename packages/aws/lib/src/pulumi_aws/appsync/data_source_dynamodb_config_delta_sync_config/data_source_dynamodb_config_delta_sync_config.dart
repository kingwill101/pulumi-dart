// ignore_for_file: unused_element, unnecessary_cast

class DataSourceDynamodbConfigDeltaSyncConfig {
  /// The number of minutes that an Item is stored in the data source.
  final int? baseTableTtl;

  /// The table name.
  final String deltaSyncTableName;

  /// The number of minutes that a Delta Sync log entry is stored in the Delta Sync table.
  final int? deltaSyncTableTtl;

  DataSourceDynamodbConfigDeltaSyncConfig({
    this.baseTableTtl,
    required this.deltaSyncTableName,
    this.deltaSyncTableTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseTableTtlValue = baseTableTtl;
    if (baseTableTtlValue != null) {
      map['baseTableTtl'] = baseTableTtlValue;
    }
    map['deltaSyncTableName'] = deltaSyncTableName;
    final deltaSyncTableTtlValue = deltaSyncTableTtl;
    if (deltaSyncTableTtlValue != null) {
      map['deltaSyncTableTtl'] = deltaSyncTableTtlValue;
    }
    return map;
  }

  factory DataSourceDynamodbConfigDeltaSyncConfig.fromMap(
      Map<String, dynamic> map) {
    return DataSourceDynamodbConfigDeltaSyncConfig(
      baseTableTtl:
          map['baseTableTtl'] == null ? null : map['baseTableTtl'] as int,
      deltaSyncTableName: map['deltaSyncTableName'] as String,
      deltaSyncTableTtl: map['deltaSyncTableTtl'] == null
          ? null
          : map['deltaSyncTableTtl'] as int,
    );
  }
}
