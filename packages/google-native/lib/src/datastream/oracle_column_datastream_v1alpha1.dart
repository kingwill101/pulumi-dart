// ignore_for_file: unused_element, unnecessary_cast

/// Oracle Column.
class OracleColumnDatastreamV1alpha1 {
  /// Column name.
  final String? columnName;

  /// The Oracle data type.
  final String? dataType;

  /// Column encoding.
  final String? encoding;

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

  /// Creates a new [OracleColumnDatastreamV1alpha1].
  /// [columnName] Column name.
  /// [dataType] The Oracle data type.
  /// [encoding] Column encoding.
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] Column precision.
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] Column scale.
  OracleColumnDatastreamV1alpha1({
    this.columnName,
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
    final map = <String, dynamic>{};
    final columnNameValue = columnName;
    if (columnNameValue != null) {
      map['columnName'] = columnNameValue;
    }
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue;
    }
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
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

  factory OracleColumnDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleColumnDatastreamV1alpha1(
      columnName:
          map['columnName'] == null ? null : map['columnName'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
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
