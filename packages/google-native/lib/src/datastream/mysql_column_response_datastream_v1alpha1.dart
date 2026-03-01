// ignore_for_file: unused_element, unnecessary_cast

/// MySQL Column.
class MysqlColumnResponseDatastreamV1alpha1 {
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

  /// Creates a new [MysqlColumnResponseDatastreamV1alpha1].
  /// [collation] Column collation.
  /// [columnName] Column name.
  /// [dataType] The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [primaryKey] Whether or not the column represents a primary key.
  MysqlColumnResponseDatastreamV1alpha1({
    required this.collation,
    required this.columnName,
    required this.dataType,
    required this.length,
    required this.nullable,
    required this.ordinalPosition,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': collation,
      'columnName': columnName,
      'dataType': dataType,
      'length': length,
      'nullable': nullable,
      'ordinalPosition': ordinalPosition,
      'primaryKey': primaryKey,
    };
  }

  factory MysqlColumnResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MysqlColumnResponseDatastreamV1alpha1(
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
