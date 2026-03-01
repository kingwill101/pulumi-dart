// ignore_for_file: unused_element, unnecessary_cast


/// DTO object representing index column
class IndexColumn {
  /// Specifies the column name
  final String? columnName;
  /// Specifies the data type
  final String? dataType;

  /// Creates a new [IndexColumn].
  /// [columnName] Specifies the column name
  /// [dataType] Specifies the data type
  IndexColumn({
    this.columnName,
    this.dataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'dataType': ?dataType,
    };
  }

  factory IndexColumn.fromMap(Map<String, dynamic> map) {
    return IndexColumn(
      columnName: map['columnName'] == null ? null : map['columnName'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
    );
  }
}

