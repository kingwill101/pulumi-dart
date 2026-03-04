// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model that represents the Experiment action target details error model.
class ExperimentExecutionActionTargetDetailsErrorResponse {
  /// The error code.
  final pulumi.Input<String> code;

  /// The error message
  final pulumi.Input<String> message;

  /// Creates a new [ExperimentExecutionActionTargetDetailsErrorResponse].
  /// [code] The error code.
  /// [message] The error message
  ExperimentExecutionActionTargetDetailsErrorResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'message': message};
  }

  factory ExperimentExecutionActionTargetDetailsErrorResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExperimentExecutionActionTargetDetailsErrorResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
