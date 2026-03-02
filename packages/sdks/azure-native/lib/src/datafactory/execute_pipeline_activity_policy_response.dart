// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution policy for an execute pipeline activity.
class ExecutePipelineActivityPolicyResponse {
  /// When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  final pulumi.Input<bool>? secureInput;

  /// Creates a new [ExecutePipelineActivityPolicyResponse].
  /// [secureInput] When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  ExecutePipelineActivityPolicyResponse({
    this.secureInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureInput': ?secureInput,
    };
  }

  factory ExecutePipelineActivityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ExecutePipelineActivityPolicyResponse(
      secureInput: map['secureInput'] == null ? null : (map['secureInput'] as bool).input(),
    );
  }
}

