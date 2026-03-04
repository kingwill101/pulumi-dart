// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the assignment resource
class AssignmentStatusResponse {
  /// Reason for the status
  final pulumi.Input<String>? message;

  /// State of the assignment resource
  final pulumi.Input<String> state;

  /// Creates a new [AssignmentStatusResponse].
  /// [message] Reason for the status
  /// [state] State of the assignment resource
  AssignmentStatusResponse({this.message, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'message': ?message, 'state': state};
  }

  factory AssignmentStatusResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentStatusResponse(
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
