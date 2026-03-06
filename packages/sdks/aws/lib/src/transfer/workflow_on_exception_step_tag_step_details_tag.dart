// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowOnExceptionStepTagStepDetailsTag {
  final pulumi.Input<String> key;
  /// The value that corresponds to the key.
  final pulumi.Input<String> value;

  /// Creates a new [WorkflowOnExceptionStepTagStepDetailsTag].
  /// [key] Required.
  /// [value] The value that corresponds to the key.
  const WorkflowOnExceptionStepTagStepDetailsTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory WorkflowOnExceptionStepTagStepDetailsTag.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepTagStepDetailsTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

