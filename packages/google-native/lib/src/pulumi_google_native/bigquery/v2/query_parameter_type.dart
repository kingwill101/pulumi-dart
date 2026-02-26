// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'query_parameter_type_struct_types_item.dart';

class QueryParameterType {
  /// [Optional] The type of the array's elements, if this is an array.
  final QueryParameterType? arrayType;

  /// [Optional] The types of the fields of this struct, in order, if this is a struct.
  final List<QueryParameterTypeStructTypesItem>? structTypes;

  /// [Required] The top level type of this field.
  final String? type;

  QueryParameterType({
    this.arrayType,
    this.structTypes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arrayTypeValue = arrayType;
    if (arrayTypeValue != null) {
      map['arrayType'] = arrayTypeValue.toMap();
    }
    final structTypesValue = structTypes;
    if (structTypesValue != null) {
      map['structTypes'] = Input.encodeList<QueryParameterTypeStructTypesItem,
          Map<String, dynamic>>(structTypesValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory QueryParameterType.fromMap(Map<String, dynamic> map) {
    return QueryParameterType(
      arrayType: map['arrayType'] == null
          ? null
          : QueryParameterType.fromMap(
              (map['arrayType'] as Map).cast<String, dynamic>()),
      structTypes: map['structTypes'] == null
          ? null
          : Input.decodeList<QueryParameterTypeStructTypesItem>(
              map['structTypes'],
              (value) => QueryParameterTypeStructTypesItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
