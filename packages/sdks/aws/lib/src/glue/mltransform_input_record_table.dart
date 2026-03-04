// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MLTransformInputRecordTable {
  /// A unique identifier for the AWS Glue Data Catalog.
  final pulumi.Input<String>? catalogId;

  /// The name of the connection to the AWS Glue Data Catalog.
  final pulumi.Input<String>? connectionName;

  /// A database name in the AWS Glue Data Catalog.
  final pulumi.Input<String> databaseName;

  /// A table name in the AWS Glue Data Catalog.
  final pulumi.Input<String> tableName;

  /// Creates a new [MLTransformInputRecordTable].
  /// [catalogId] A unique identifier for the AWS Glue Data Catalog.
  /// [connectionName] The name of the connection to the AWS Glue Data Catalog.
  /// [databaseName] A database name in the AWS Glue Data Catalog.
  /// [tableName] A table name in the AWS Glue Data Catalog.
  MLTransformInputRecordTable({
    this.catalogId,
    this.connectionName,
    required this.databaseName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'connectionName': ?connectionName,
      'databaseName': databaseName,
      'tableName': tableName,
    };
  }

  factory MLTransformInputRecordTable.fromMap(Map<String, dynamic> map) {
    return MLTransformInputRecordTable(
      catalogId: (() {
        final guardedValue = map['catalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionName: (() {
        final guardedValue = map['connectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
