// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_example_contract.dart';

/// Operation parameters details.
class ParameterContract {
  /// Default parameter value.
  final pulumi.Input<String>? defaultValue;
  /// Parameter description.
  final pulumi.Input<String>? description;
  /// Exampled defined for the parameter.
  final pulumi.Input<Map<String, ParameterExampleContract>>? examples;
  /// Parameter name.
  final pulumi.Input<String> name;
  /// Specifies whether parameter is required or not.
  final pulumi.Input<bool>? required;
  /// Schema identifier.
  final pulumi.Input<String>? schemaId;
  /// Parameter type.
  final pulumi.Input<String> type;
  /// Type name defined by the schema.
  final pulumi.Input<String>? typeName;
  /// Parameter values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ParameterContract].
  /// [defaultValue] Default parameter value.
  /// [description] Parameter description.
  /// [examples] Exampled defined for the parameter.
  /// [name] Parameter name.
  /// [required] Specifies whether parameter is required or not.
  /// [schemaId] Schema identifier.
  /// [type] Parameter type.
  /// [typeName] Type name defined by the schema.
  /// [values] Parameter values.
  const ParameterContract({
    this.defaultValue,
    this.description,
    this.examples,
    required this.name,
    this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'examples': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterExampleContract>, Map<String, Map<String, dynamic>>>(examples, (value) => pulumi.Input.encodeMapValues<ParameterExampleContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'required': ?required,
      'schemaId': ?schemaId,
      'type': type,
      'typeName': ?typeName,
      'values': ?values,
    };
  }

  factory ParameterContract.fromMap(Map<String, dynamic> map) {
    return ParameterContract(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      examples: (() { final guardedValue = map['examples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterExampleContract>(guardedValue, (value) => ParameterExampleContract.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

