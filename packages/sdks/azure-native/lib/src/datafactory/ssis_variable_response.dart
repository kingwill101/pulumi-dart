// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ssis variable.
class SsisVariableResponse {
  /// Variable type.
  final pulumi.Input<String>? dataType;
  /// Variable description.
  final pulumi.Input<String>? description;
  /// Variable id.
  final pulumi.Input<double>? id;
  /// Variable name.
  final pulumi.Input<String>? name;
  /// Whether variable is sensitive.
  final pulumi.Input<bool>? sensitive;
  /// Variable sensitive value.
  final pulumi.Input<String>? sensitiveValue;
  /// Variable value.
  final pulumi.Input<String>? value;

  /// Creates a new [SsisVariableResponse].
  /// [dataType] Variable type.
  /// [description] Variable description.
  /// [id] Variable id.
  /// [name] Variable name.
  /// [sensitive] Whether variable is sensitive.
  /// [sensitiveValue] Variable sensitive value.
  /// [value] Variable value.
  SsisVariableResponse({
    this.dataType,
    this.description,
    this.id,
    this.name,
    this.sensitive,
    this.sensitiveValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'sensitive': ?sensitive,
      'sensitiveValue': ?sensitiveValue,
      'value': ?value,
    };
  }

  factory SsisVariableResponse.fromMap(Map<String, dynamic> map) {
    return SsisVariableResponse(
      dataType: map['dataType'] == null ? null : (map['dataType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as double).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sensitive: map['sensitive'] == null ? null : (map['sensitive'] as bool).input(),
      sensitiveValue: map['sensitiveValue'] == null ? null : (map['sensitiveValue'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

