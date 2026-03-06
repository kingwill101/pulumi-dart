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
  const SsisVariableResponse({
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
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensitive: (() { final guardedValue = map['sensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitiveValue: (() { final guardedValue = map['sensitiveValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

