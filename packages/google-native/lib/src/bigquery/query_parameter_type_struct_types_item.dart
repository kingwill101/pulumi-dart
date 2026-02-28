// ignore_for_file: unused_element, unnecessary_cast

import 'query_parameter_type.dart';

class QueryParameterTypeStructTypesItem {
  /// [Optional] Human-oriented description of the field.
  final String? description;
  /// [Optional] The name of this field.
  final String? name;
  /// [Required] The type of this field.
  final QueryParameterType? type;

  /// Creates a new [QueryParameterTypeStructTypesItem].
  /// [description] [Optional] Human-oriented description of the field.
  /// [name] [Optional] The name of this field.
  /// [type] [Required] The type of this field.
  QueryParameterTypeStructTypesItem({
    this.description,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'type': ?type == null ? null : type!.toMap(),
    };
  }

  factory QueryParameterTypeStructTypesItem.fromMap(Map<String, dynamic> map) {
    return QueryParameterTypeStructTypesItem(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : QueryParameterType.fromMap((map['type'] as Map).cast<String, dynamic>()),
    );
  }
}

