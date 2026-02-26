// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

class QueryParameterValueResponse {
  /// [Optional] The array values, if this is an array type.
  final List<QueryParameterValueResponse> arrayValues;

  /// [Optional] The struct field values, in order of the struct type's declaration.
  final Map<String, String> structValues;

  /// [Optional] The value of this value, if a simple scalar type.
  final String value;

  QueryParameterValueResponse({
    required this.arrayValues,
    required this.structValues,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arrayValues'] =
        Input.encodeList<QueryParameterValueResponse, Map<String, dynamic>>(
            arrayValues, (value) => value.toMap());
    map['structValues'] = structValues;
    map['value'] = value;
    return map;
  }

  factory QueryParameterValueResponse.fromMap(Map<String, dynamic> map) {
    return QueryParameterValueResponse(
      arrayValues: Input.decodeList<QueryParameterValueResponse>(
          map['arrayValues'],
          (value) => QueryParameterValueResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      structValues: (map['structValues'] as Map).cast<String, String>(),
      value: map['value'] as String,
    );
  }
}
