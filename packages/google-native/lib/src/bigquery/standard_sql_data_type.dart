// ignore_for_file: unused_element, unnecessary_cast

import 'standard_sql_data_type_type_kind.dart';
import 'standard_sql_struct_type.dart';

/// The data type of a variable such as a function argument. Examples include: * INT64: `{"typeKind": "INT64"}` * ARRAY: { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "STRING"} } * STRUCT>: { "typeKind": "STRUCT", "structType": { "fields": [ { "name": "x", "type": {"typeKind": "STRING"} }, { "name": "y", "type": { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "DATE"} } } ] } }
class StandardSqlDataType {
  /// The type of the array's elements, if type_kind = "ARRAY".
  final StandardSqlDataType? arrayElementType;

  /// The type of the range's elements, if type_kind = "RANGE".
  final StandardSqlDataType? rangeElementType;

  /// The fields of this struct, in order, if type_kind = "STRUCT".
  final StandardSqlStructType? structType;

  /// The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  final StandardSqlDataTypeTypeKind typeKind;

  /// Creates a new [StandardSqlDataType].
  /// [arrayElementType] The type of the array's elements, if type_kind = "ARRAY".
  /// [rangeElementType] The type of the range's elements, if type_kind = "RANGE".
  /// [structType] The fields of this struct, in order, if type_kind = "STRUCT".
  /// [typeKind] The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  StandardSqlDataType({
    this.arrayElementType,
    this.rangeElementType,
    this.structType,
    required this.typeKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arrayElementTypeValue = arrayElementType;
    if (arrayElementTypeValue != null) {
      map['arrayElementType'] = arrayElementTypeValue.toMap();
    }
    final rangeElementTypeValue = rangeElementType;
    if (rangeElementTypeValue != null) {
      map['rangeElementType'] = rangeElementTypeValue.toMap();
    }
    final structTypeValue = structType;
    if (structTypeValue != null) {
      map['structType'] = structTypeValue.toMap();
    }
    map['typeKind'] = typeKind.value;
    return map;
  }

  factory StandardSqlDataType.fromMap(Map<String, dynamic> map) {
    return StandardSqlDataType(
      arrayElementType: map['arrayElementType'] == null
          ? null
          : StandardSqlDataType.fromMap(
              (map['arrayElementType'] as Map).cast<String, dynamic>()),
      rangeElementType: map['rangeElementType'] == null
          ? null
          : StandardSqlDataType.fromMap(
              (map['rangeElementType'] as Map).cast<String, dynamic>()),
      structType: map['structType'] == null
          ? null
          : StandardSqlStructType.fromMap(
              (map['structType'] as Map).cast<String, dynamic>()),
      typeKind:
          StandardSqlDataTypeTypeKind.fromValue(map['typeKind'] as String),
    );
  }
}
