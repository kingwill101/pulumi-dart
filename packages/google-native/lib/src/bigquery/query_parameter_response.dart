// ignore_for_file: unused_element, unnecessary_cast

import 'query_parameter_type_response.dart';
import 'query_parameter_value_response.dart';

class QueryParameterResponse {
  /// [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  final String name;

  /// [Required] The type of this parameter.
  final QueryParameterTypeResponse parameterType;

  /// [Required] The value of this parameter.
  final QueryParameterValueResponse parameterValue;

  /// Creates a new [QueryParameterResponse].
  /// [name] [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  /// [parameterType] [Required] The type of this parameter.
  /// [parameterValue] [Required] The value of this parameter.
  QueryParameterResponse({
    required this.name,
    required this.parameterType,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parameterType'] = parameterType.toMap();
    map['parameterValue'] = parameterValue.toMap();
    return map;
  }

  factory QueryParameterResponse.fromMap(Map<String, dynamic> map) {
    return QueryParameterResponse(
      name: map['name'] as String,
      parameterType: QueryParameterTypeResponse.fromMap(
          (map['parameterType'] as Map).cast<String, dynamic>()),
      parameterValue: QueryParameterValueResponse.fromMap(
          (map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}
