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
  ParameterContract({
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
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      examples: map['examples'] == null ? null : (pulumi.Input.decodeMapValues<ParameterExampleContract>(map['examples']!, (value) => ParameterExampleContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      required: map['required'] == null ? null : (map['required']! as bool).input(),
      schemaId: map['schemaId'] == null ? null : (map['schemaId']! as String).input(),
      type: (map['type'] as String).input(),
      typeName: map['typeName'] == null ? null : (map['typeName']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

