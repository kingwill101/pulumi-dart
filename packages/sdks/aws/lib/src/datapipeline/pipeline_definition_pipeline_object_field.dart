// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineDefinitionPipelineObjectField {
  /// Field identifier.
  final pulumi.Input<String> key;
  /// Field value, expressed as the identifier of another object
  final pulumi.Input<String?>? refValue;
  /// Field value, expressed as a String.
  final pulumi.Input<String?>? stringValue;

  /// Creates a new [PipelineDefinitionPipelineObjectField].
  /// [key] Field identifier.
  /// [refValue] Field value, expressed as the identifier of another object
  /// [stringValue] Field value, expressed as a String.
  const PipelineDefinitionPipelineObjectField({
    required this.key,
    this.refValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'refValue': ?refValue,
      'stringValue': ?stringValue,
    };
  }

  factory PipelineDefinitionPipelineObjectField.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionPipelineObjectField(
      key: pulumi.Input.fromValue(map['key'] as String),
      refValue: (() { final guardedValue = map['refValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
