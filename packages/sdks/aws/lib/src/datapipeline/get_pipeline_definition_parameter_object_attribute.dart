// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineDefinitionParameterObjectAttribute {
  /// Field identifier.
  final pulumi.Input<String> key;
  /// Field value, expressed as a String.
  final pulumi.Input<String> stringValue;

  /// Creates a new [GetPipelineDefinitionParameterObjectAttribute].
  /// [key] Field identifier.
  /// [stringValue] Field value, expressed as a String.
  const GetPipelineDefinitionParameterObjectAttribute({
    required this.key,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'stringValue': stringValue,
    };
  }

  factory GetPipelineDefinitionParameterObjectAttribute.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionParameterObjectAttribute(
      key: pulumi.Input.fromValue(map['key'] as String),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}

