// ignore_for_file: unused_element, unnecessary_cast


/// Execution policy for an execute pipeline activity.
class ExecutePipelineActivityPolicy {
  /// When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  final bool? secureInput;

  /// Creates a new [ExecutePipelineActivityPolicy].
  /// [secureInput] When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  ExecutePipelineActivityPolicy({
    this.secureInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureInput': ?secureInput,
    };
  }

  factory ExecutePipelineActivityPolicy.fromMap(Map<String, dynamic> map) {
    return ExecutePipelineActivityPolicy(
      secureInput: map['secureInput'] == null ? null : map['secureInput'] as bool,
    );
  }
}

