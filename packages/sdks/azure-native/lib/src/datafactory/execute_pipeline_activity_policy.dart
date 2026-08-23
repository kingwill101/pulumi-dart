// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution policy for an execute pipeline activity.
class ExecutePipelineActivityPolicy {
  /// When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  final pulumi.Input<bool>? secureInput;

  /// Creates a new [ExecutePipelineActivityPolicy].
  /// [secureInput] When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  const ExecutePipelineActivityPolicy({
    this.secureInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureInput': ?secureInput,
    };
  }

  factory ExecutePipelineActivityPolicy.fromMap(Map<String, dynamic> map) {
    return ExecutePipelineActivityPolicy(
      secureInput: (() { final guardedValue = map['secureInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
