// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Literal input type.
class LiteralJobInput {
  /// Description for the input.
  final pulumi.Input<String?>? description;
  /// Enum to determine the Job Input Type.
  /// Expected value is 'literal'.
  final pulumi.Input<String> jobInputType;
  /// [Required] Literal value for the input.
  final pulumi.Input<String> value;

  /// Creates a new [LiteralJobInput].
  /// [description] Description for the input.
  /// [jobInputType] Enum to determine the Job Input Type.
  /// [value] [Required] Literal value for the input.
  const LiteralJobInput({
    this.description,
    required this.jobInputType,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobInputType': jobInputType,
      'value': value,
    };
  }

  factory LiteralJobInput.fromMap(Map<String, dynamic> map) {
    return LiteralJobInput(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobInputType: pulumi.Input.fromValue(map['jobInputType'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
