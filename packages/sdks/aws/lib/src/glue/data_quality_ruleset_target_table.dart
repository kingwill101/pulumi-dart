// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityRulesetTargetTable {
  /// The catalog id where the AWS Glue table exists.
  final pulumi.Input<String>? catalogId;
  /// Name of the database where the AWS Glue table exists.
  final pulumi.Input<String> databaseName;
  /// Name of the AWS Glue table.
  final pulumi.Input<String> tableName;

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
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'tableName': tableName,
    };
  }

  factory DataQualityRulesetTargetTable.fromMap(Map<String, dynamic> map) {
    return DataQualityRulesetTargetTable(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

