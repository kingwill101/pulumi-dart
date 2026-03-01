// ignore_for_file: unused_element, unnecessary_cast


/// Result of Stage execution
class StageStatusResponse {
  /// Error message
  final String? errorMessage;
  /// The inputs of the StageHistory, Inputs holds a key-value map of user-defined parameters for the initial stage
  final dynamic inputs;
  /// whether this stage is active or inactive
  final String? isActive;
  /// Next stage
  final String? nextstage;
  /// The outputs of the StageHistory, it is different as the different input stages.
  final dynamic outputs;
  /// Current stage
  final String? stage;
  /// Deployment status
  final int? status;
  /// Status message
  final String? statusMessage;

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
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      inputs: map['inputs'] == null ? null : map['inputs'],
      isActive: map['isActive'] == null ? null : map['isActive'] as String,
      nextstage: map['nextstage'] == null ? null : map['nextstage'] as String,
      outputs: map['outputs'] == null ? null : map['outputs'],
      stage: map['stage'] == null ? null : map['stage'] as String,
      status: map['status'] == null ? null : map['status'] as int,
      statusMessage: map['statusMessage'] == null ? null : map['statusMessage'] as String,
    );
  }
}

