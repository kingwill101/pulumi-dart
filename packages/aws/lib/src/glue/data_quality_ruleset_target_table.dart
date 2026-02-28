// ignore_for_file: unused_element, unnecessary_cast

class DataQualityRulesetTargetTable {
  /// The catalog id where the AWS Glue table exists.
  final String? catalogId;

  /// Name of the database where the AWS Glue table exists.
  final String databaseName;

  /// Name of the AWS Glue table.
  final String tableName;

  /// Creates a new [DataQualityRulesetTargetTable].
  /// [catalogId] The catalog id where the AWS Glue table exists.
  /// [databaseName] Name of the database where the AWS Glue table exists.
  /// [tableName] Name of the AWS Glue table.
  DataQualityRulesetTargetTable({
    this.catalogId,
    required this.databaseName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['databaseName'] = databaseName;
    map['tableName'] = tableName;
    return map;
  }

  factory DataQualityRulesetTargetTable.fromMap(Map<String, dynamic> map) {
    return DataQualityRulesetTargetTable(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      tableName: map['tableName'] as String,
    );
  }
}
