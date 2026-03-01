// ignore_for_file: unused_element, unnecessary_cast


class GetTablesTable {
  /// The table name.
  final String objectName;
  /// The parent schema.
  final String schemaName;
  /// The table type as defined in ``information_schema.tables``.
  final String tableType;

  /// Creates a new [GetTablesTable].
  /// [objectName] The table name.
  /// [schemaName] The parent schema.
  /// [tableType] The table type as defined in ``information_schema.tables``.
  GetTablesTable({
    required this.objectName,
    required this.schemaName,
    required this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectName': objectName,
      'schemaName': schemaName,
      'tableType': tableType,
    };
  }

  factory GetTablesTable.fromMap(Map<String, dynamic> map) {
    return GetTablesTable(
      objectName: map['objectName'] as String,
      schemaName: map['schemaName'] as String,
      tableType: map['tableType'] as String,
    );
  }
}

