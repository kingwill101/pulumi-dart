// ignore_for_file: unused_element, unnecessary_cast

import 'query_parameter_type.dart';

class QueryParameterTypeStructTypesItem {
  /// [Optional] Human-oriented description of the field.
  final String? description;

  /// [Optional] The name of this field.
  final String? name;

  /// [Required] The type of this field.
  final QueryParameterType? type;

  QueryParameterTypeStructTypesItem({
    this.description,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.toMap();
    }
    return map;
  }

  factory QueryParameterTypeStructTypesItem.fromMap(Map<String, dynamic> map) {
    return QueryParameterTypeStructTypesItem(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null
          ? null
          : QueryParameterType.fromMap(
              (map['type'] as Map).cast<String, dynamic>()),
    );
  }
}
