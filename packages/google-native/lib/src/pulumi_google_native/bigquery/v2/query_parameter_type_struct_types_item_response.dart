// ignore_for_file: unused_element, unnecessary_cast

import 'query_parameter_type_response.dart';

class QueryParameterTypeStructTypesItemResponse {
  /// [Optional] Human-oriented description of the field.
  final String description;

  /// [Optional] The name of this field.
  final String name;

  /// [Required] The type of this field.
  final QueryParameterTypeResponse type;

  QueryParameterTypeStructTypesItemResponse({
    required this.description,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    map['type'] = type.toMap();
    return map;
  }

  factory QueryParameterTypeStructTypesItemResponse.fromMap(
      Map<String, dynamic> map) {
    return QueryParameterTypeStructTypesItemResponse(
      description: map['description'] as String,
      name: map['name'] as String,
      type: QueryParameterTypeResponse.fromMap(
          (map['type'] as Map).cast<String, dynamic>()),
    );
  }
}
