// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineDefinitionParameterValue {
  /// ID of the parameter value.
  final pulumi.Input<String> id;
  /// Field value, expressed as a String.
  final pulumi.Input<String> stringValue;

  /// Creates a new [PipelineDefinitionParameterValue].
  /// [id] ID of the parameter value.
  /// [stringValue] Field value, expressed as a String.
  const PipelineDefinitionParameterValue({
    required this.id,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stringValue': stringValue,
    };
  }

  factory PipelineDefinitionParameterValue.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionParameterValue(
      id: pulumi.Input.fromValue(map['id'] as String),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}

