// ignore_for_file: unused_element, unnecessary_cast

class StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn {
  /// Column name.
  final String? column;

  /// The Oracle data type. Full data types list can be found here:
  /// https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html
  final String? dataType;

  /// (Output)
  /// Column encoding.
  final String? encoding;

  /// (Output)
  /// Column length.
  final int? length;

  /// (Output)
  /// Whether or not the column can accept a null value.
  final bool? nullable;

  /// (Output)
  /// The ordinal position of the column in the table.
  final int? ordinalPosition;

  /// (Output)
  /// Column precision.
  final int? precision;

  /// (Output)
  /// Whether or not the column represents a primary key.
  final bool? primaryKey;

  /// (Output)
  /// Column scale.
  final int? scale;

  /// Creates a new [StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn].
  /// [column] Column name.
  /// [dataType] The Oracle data type. Full data types list can be found here:
  /// [encoding] (Output)
  /// [length] (Output)
  /// [nullable] (Output)
  /// [ordinalPosition] (Output)
  /// [precision] (Output)
  /// [primaryKey] (Output)
  /// [scale] (Output)
  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn({
    this.column,
    this.dataType,
    this.encoding,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.precision,
    this.primaryKey,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'dataType': ?dataType,
      'encoding': ?encoding,
      'length': ?length,
      'nullable': ?nullable,
      'ordinalPosition': ?ordinalPosition,
      'precision': ?precision,
      'primaryKey': ?primaryKey,
      'scale': ?scale,
    };
  }

  factory StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn(
      column: map['column'] == null ? null : map['column'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      length: map['length'] == null ? null : map['length'] as int,
      nullable: map['nullable'] == null ? null : map['nullable'] as bool,
      ordinalPosition: map['ordinalPosition'] == null
          ? null
          : map['ordinalPosition'] as int,
      precision: map['precision'] == null ? null : map['precision'] as int,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as bool,
      scale: map['scale'] == null ? null : map['scale'] as int,
    );
  }
}
