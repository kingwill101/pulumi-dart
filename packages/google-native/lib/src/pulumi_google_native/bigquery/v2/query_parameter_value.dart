// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

class QueryParameterValue {
  /// [Optional] The array values, if this is an array type.
  final List<QueryParameterValue>? arrayValues;

  /// [Optional] The struct field values, in order of the struct type's declaration.
  final Map<String, String>? structValues;

  /// [Optional] The value of this value, if a simple scalar type.
  final String? value;

  QueryParameterValue({
    this.arrayValues,
    this.structValues,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arrayValuesValue = arrayValues;
    if (arrayValuesValue != null) {
      map['arrayValues'] =
          Input.encodeList<QueryParameterValue, Map<String, dynamic>>(
              arrayValuesValue, (value) => value.toMap());
    }
    final structValuesValue = structValues;
    if (structValuesValue != null) {
      map['structValues'] = structValuesValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory QueryParameterValue.fromMap(Map<String, dynamic> map) {
    return QueryParameterValue(
      arrayValues: map['arrayValues'] == null
          ? null
          : Input.decodeList<QueryParameterValue>(
              map['arrayValues'],
              (value) => QueryParameterValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      structValues: map['structValues'] == null
          ? null
          : (map['structValues'] as Map).cast<String, String>(),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
