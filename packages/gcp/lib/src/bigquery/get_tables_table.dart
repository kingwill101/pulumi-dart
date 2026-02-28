// ignore_for_file: unused_element, unnecessary_cast

class GetTablesTable {
  /// User-provided table labels, in key/value pairs.
  final Map<String, String> labels;

  /// The name of the table.
  final String tableId;

  /// Creates a new [GetTablesTable].
  /// [labels] User-provided table labels, in key/value pairs.
  /// [tableId] The name of the table.
  GetTablesTable({
    required this.labels,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['tableId'] = tableId;
    return map;
  }

  factory GetTablesTable.fromMap(Map<String, dynamic> map) {
    return GetTablesTable(
      labels: (map['labels'] as Map).cast<String, String>(),
      tableId: map['tableId'] as String,
    );
  }
}
