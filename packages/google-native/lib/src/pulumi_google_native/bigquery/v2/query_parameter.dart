// ignore_for_file: unused_element, unnecessary_cast

import 'query_parameter_type.dart';
import 'query_parameter_value.dart';

class QueryParameter {
  /// [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  final String? name;

  /// [Required] The type of this parameter.
  final QueryParameterType? parameterType;

  /// [Required] The value of this parameter.
  final QueryParameterValue? parameterValue;

  QueryParameter({
    this.name,
    this.parameterType,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parameterTypeValue = parameterType;
    if (parameterTypeValue != null) {
      map['parameterType'] = parameterTypeValue.toMap();
    }
    final parameterValueValue = parameterValue;
    if (parameterValueValue != null) {
      map['parameterValue'] = parameterValueValue.toMap();
    }
    return map;
  }

  factory QueryParameter.fromMap(Map<String, dynamic> map) {
    return QueryParameter(
      name: map['name'] == null ? null : map['name'] as String,
      parameterType: map['parameterType'] == null
          ? null
          : QueryParameterType.fromMap(
              (map['parameterType'] as Map).cast<String, dynamic>()),
      parameterValue: map['parameterValue'] == null
          ? null
          : QueryParameterValue.fromMap(
              (map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}
