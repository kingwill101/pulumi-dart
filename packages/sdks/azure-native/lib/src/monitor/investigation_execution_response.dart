// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the execution of the investigation
class InvestigationExecutionResponse {
  /// The time at which the investigation execution completed (in UTC)
  final pulumi.Input<String>? completedAt;
  /// The state of the investigation execution
  final pulumi.Input<String> runState;

  /// Creates a new [InvestigationExecutionResponse].
  /// [completedAt] The time at which the investigation execution completed (in UTC)
  /// [runState] The state of the investigation execution
  InvestigationExecutionResponse({
    this.completedAt,
    required this.runState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedAt': ?completedAt,
      'runState': runState,
    };
  }

  factory InvestigationExecutionResponse.fromMap(Map<String, dynamic> map) {
    return InvestigationExecutionResponse(
      completedAt: map['completedAt'] == null ? null : (map['completedAt']! as String).input(),
      runState: (map['runState'] as String).input(),
    );
  }
}

