// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowStepTagStepDetailsTag {
  final pulumi.Input<String> key;
  /// The value that corresponds to the key.
  final pulumi.Input<String> value;

  /// Creates a new [WorkflowStepTagStepDetailsTag].
  /// [key] Required.
  /// [value] The value that corresponds to the key.
  const WorkflowStepTagStepDetailsTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory WorkflowStepTagStepDetailsTag.fromMap(Map<String, dynamic> map) {
    return WorkflowStepTagStepDetailsTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

