// ignore_for_file: unused_element, unnecessary_cast

/// MySQL Column.
class MysqlColumn {
  /// Column collation.
  final String? collation;

  /// Column name.
  final String? column;

  /// The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  final String? dataType;

  /// Column length.
  final int? length;

  /// Whether or not the column can accept a null value.
  final bool? nullable;

  /// The ordinal position of the column in the table.
  final int? ordinalPosition;

  /// Column precision.
  final int? precision;

  /// Whether or not the column represents a primary key.
  final bool? primaryKey;

  /// Column scale.
  final int? scale;

  MysqlColumn({
    this.collation,
    this.column,
    this.dataType,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.precision,
    this.primaryKey,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collationValue = collation;
    if (collationValue != null) {
      map['collation'] = collationValue;
    }
    final columnValue = column;
    if (columnValue != null) {
      map['column'] = columnValue;
    }
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue;
    }
    final lengthValue = length;
    if (lengthValue != null) {
      map['length'] = lengthValue;
    }
    final nullableValue = nullable;
    if (nullableValue != null) {
      map['nullable'] = nullableValue;
    }
    final ordinalPositionValue = ordinalPosition;
    if (ordinalPositionValue != null) {
      map['ordinalPosition'] = ordinalPositionValue;
    }
    final precisionValue = precision;
    if (precisionValue != null) {
      map['precision'] = precisionValue;
    }
    final primaryKeyValue = primaryKey;
    if (primaryKeyValue != null) {
      map['primaryKey'] = primaryKeyValue;
    }
    final scaleValue = scale;
    if (scaleValue != null) {
      map['scale'] = scaleValue;
    }
    return map;
  }

  factory MysqlColumn.fromMap(Map<String, dynamic> map) {
    return MysqlColumn(
      collation: map['collation'] == null ? null : map['collation'] as String,
      column: map['column'] == null ? null : map['column'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      length: map['length'] == null ? null : map['length'] as int,
      nullable: map['nullable'] == null ? null : map['nullable'] as bool,
      ordinalPosition:
          map['ordinalPosition'] == null ? null : map['ordinalPosition'] as int,
      precision: map['precision'] == null ? null : map['precision'] as int,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as bool,
      scale: map['scale'] == null ? null : map['scale'] as int,
    );
  }
}
