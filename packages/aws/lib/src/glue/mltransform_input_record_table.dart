// ignore_for_file: unused_element, unnecessary_cast


class MLTransformInputRecordTable {
  /// A unique identifier for the AWS Glue Data Catalog.
  final String? catalogId;
  /// The name of the connection to the AWS Glue Data Catalog.
  final String? connectionName;
  /// A database name in the AWS Glue Data Catalog.
  final String databaseName;
  /// A table name in the AWS Glue Data Catalog.
  final String tableName;

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
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      databaseName: map['databaseName'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

