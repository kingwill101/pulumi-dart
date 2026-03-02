// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result of Stage execution
class StageStatusResponse {
  /// Error message
  final pulumi.Input<String>? errorMessage;
  /// The inputs of the StageHistory, Inputs holds a key-value map of user-defined parameters for the initial stage
  final pulumi.Input<dynamic>? inputs;
  /// whether this stage is active or inactive
  final pulumi.Input<String>? isActive;
  /// Next stage
  final pulumi.Input<String>? nextstage;
  /// The outputs of the StageHistory, it is different as the different input stages.
  final pulumi.Input<dynamic>? outputs;
  /// Current stage
  final pulumi.Input<String>? stage;
  /// Deployment status
  final pulumi.Input<int>? status;
  /// Status message
  final pulumi.Input<String>? statusMessage;

  /// Creates a new [StageStatusResponse].
  /// [errorMessage] Error message
  /// [inputs] The inputs of the StageHistory, Inputs holds a key-value map of user-defined parameters for the initial stage
  /// [isActive] whether this stage is active or inactive
  /// [nextstage] Next stage
  /// [outputs] The outputs of the StageHistory, it is different as the different input stages.
  /// [stage] Current stage
  /// [status] Deployment status
  /// [statusMessage] Status message
  StageStatusResponse({
    this.errorMessage,
    this.inputs,
    this.isActive,
    this.nextstage,
    this.outputs,
    this.stage,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'inputs': ?inputs,
      'isActive': ?isActive,
      'nextstage': ?nextstage,
      'outputs': ?outputs,
      'stage': ?stage,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory StageStatusResponse.fromMap(Map<String, dynamic> map) {
    return StageStatusResponse(
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
      inputs: map['inputs'] == null ? null : (map['inputs']!).input(),
      isActive: map['isActive'] == null ? null : (map['isActive']! as String).input(),
      nextstage: map['nextstage'] == null ? null : (map['nextstage']! as String).input(),
      outputs: map['outputs'] == null ? null : (map['outputs']!).input(),
      stage: map['stage'] == null ? null : (map['stage']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
      statusMessage: map['statusMessage'] == null ? null : (map['statusMessage']! as String).input(),
    );
  }
}

