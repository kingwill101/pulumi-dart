// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineDefinitionPipelineObjectField {
  /// Field identifier.
  final pulumi.Input<String> key;
  /// Field value, expressed as the identifier of another object
  final pulumi.Input<String> refValue;
  /// Field value, expressed as a String.
  final pulumi.Input<String> stringValue;

  /// Creates a new [GetPipelineDefinitionPipelineObjectField].
  /// [key] Field identifier.
  /// [refValue] Field value, expressed as the identifier of another object
  /// [stringValue] Field value, expressed as a String.
  GetPipelineDefinitionPipelineObjectField({
    required this.key,
    required this.refValue,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'refValue': refValue,
      'stringValue': stringValue,
    };
  }

  factory GetPipelineDefinitionPipelineObjectField.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionPipelineObjectField(
      key: (map['key'] as String).input(),
      refValue: (map['refValue'] as String).input(),
      stringValue: (map['stringValue'] as String).input(),
    );
  }
}

