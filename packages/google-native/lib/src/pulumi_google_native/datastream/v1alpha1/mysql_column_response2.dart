// ignore_for_file: unused_element, unnecessary_cast

/// MySQL Column.
class MysqlColumnResponse2 {
  /// Column collation.
  final String collation;

  /// Column name.
  final String columnName;

  /// The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  final String dataType;

  /// Column length.
  final int length;

  /// Whether or not the column can accept a null value.
  final bool nullable;

  /// The ordinal position of the column in the table.
  final int ordinalPosition;

  /// Whether or not the column represents a primary key.
  final bool primaryKey;

  MysqlColumnResponse2({
    required this.collation,
    required this.columnName,
    required this.dataType,
    required this.length,
    required this.nullable,
    required this.ordinalPosition,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collation'] = collation;
    map['columnName'] = columnName;
    map['dataType'] = dataType;
    map['length'] = length;
    map['nullable'] = nullable;
    map['ordinalPosition'] = ordinalPosition;
    map['primaryKey'] = primaryKey;
    return map;
  }

  factory MysqlColumnResponse2.fromMap(Map<String, dynamic> map) {
    return MysqlColumnResponse2(
      collation: map['collation'] as String,
      columnName: map['columnName'] as String,
      dataType: map['dataType'] as String,
      length: map['length'] as int,
      nullable: map['nullable'] as bool,
      ordinalPosition: map['ordinalPosition'] as int,
      primaryKey: map['primaryKey'] as bool,
    );
  }
}
