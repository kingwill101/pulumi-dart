// ignore_for_file: unused_element, unnecessary_cast

/// Oracle Column.
class OracleColumnResponse2 {
  /// Column name.
  final String columnName;

  /// The Oracle data type.
  final String dataType;

  /// Column encoding.
  final String encoding;

  /// Column length.
  final int length;

  /// Whether or not the column can accept a null value.
  final bool nullable;

  /// The ordinal position of the column in the table.
  final int ordinalPosition;

  /// Column precision.
  final int precision;

  /// Whether or not the column represents a primary key.
  final bool primaryKey;

  /// Column scale.
  final int scale;

  OracleColumnResponse2({
    required this.columnName,
    required this.dataType,
    required this.encoding,
    required this.length,
    required this.nullable,
    required this.ordinalPosition,
    required this.precision,
    required this.primaryKey,
    required this.scale,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['dataType'] = dataType;
    map['encoding'] = encoding;
    map['length'] = length;
    map['nullable'] = nullable;
    map['ordinalPosition'] = ordinalPosition;
    map['precision'] = precision;
    map['primaryKey'] = primaryKey;
    map['scale'] = scale;
    return map;
  }

  factory OracleColumnResponse2.fromMap(Map<String, dynamic> map) {
    return OracleColumnResponse2(
      columnName: map['columnName'] as String,
      dataType: map['dataType'] as String,
      encoding: map['encoding'] as String,
      length: map['length'] as int,
      nullable: map['nullable'] as bool,
      ordinalPosition: map['ordinalPosition'] as int,
      precision: map['precision'] as int,
      primaryKey: map['primaryKey'] as bool,
      scale: map['scale'] as int,
    );
  }
}
