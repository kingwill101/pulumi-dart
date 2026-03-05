// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineDefinitionParameterValue {
  /// ID of the object.
  final pulumi.Input<String> id;
  /// Field value, expressed as a String.
  final pulumi.Input<String> stringValue;

  /// Creates a new [GetPipelineDefinitionParameterValue].
  /// [id] ID of the object.
  /// [stringValue] Field value, expressed as a String.
  GetPipelineDefinitionParameterValue({
    required this.id,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stringValue': stringValue,
    };
  }

  factory GetPipelineDefinitionParameterValue.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionParameterValue(
      id: pulumi.Input.fromValue(map['id'] as String),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}

