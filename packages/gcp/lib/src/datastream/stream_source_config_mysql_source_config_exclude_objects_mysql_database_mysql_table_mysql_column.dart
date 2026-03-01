// ignore_for_file: unused_element, unnecessary_cast

class StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn {
  /// Column collation.
  final String? collation;

  /// Column name.
  final String? column;

  /// The MySQL data type. Full data types list can be found here:
  /// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  final String? dataType;

  /// (Output)
  /// Column length.
  final int? length;

  /// Whether or not the column can accept a null value.
  final bool? nullable;

  /// The ordinal position of the column in the table.
  final int? ordinalPosition;

  /// Whether or not the column represents a primary key.
  final bool? primaryKey;

  /// Creates a new [StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn].
  /// [collation] Column collation.
  /// [column] Column name.
  /// [dataType] The MySQL data type. Full data types list can be found here:
  /// [length] (Output)
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [primaryKey] Whether or not the column represents a primary key.
  StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn({
    this.collation,
    this.column,
    this.dataType,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'column': ?column,
      'dataType': ?dataType,
      'length': ?length,
      'nullable': ?nullable,
      'ordinalPosition': ?ordinalPosition,
      'primaryKey': ?primaryKey,
    };
  }

  factory StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn(
      collation: map['collation'] == null ? null : map['collation'] as String,
      column: map['column'] == null ? null : map['column'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      length: map['length'] == null ? null : map['length'] as int,
      nullable: map['nullable'] == null ? null : map['nullable'] as bool,
      ordinalPosition: map['ordinalPosition'] == null
          ? null
          : map['ordinalPosition'] as int,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as bool,
    );
  }
}
