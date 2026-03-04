// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource status information.
class ResourceStatusResponse {
  /// The last update time for this condition.
  final pulumi.Input<String> lastUpdatedAt;

  /// A human readable message indicating details about the status.
  final pulumi.Input<String> message;

  /// The reason for the condition's status.
  final pulumi.Input<String> reason;

  /// Severity with which to treat failures of this type of condition.
  final pulumi.Input<String> severity;

  /// Status of the condition.
  final pulumi.Input<String> status;

  /// The type of the condition.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceStatusResponse].
  /// [lastUpdatedAt] The last update time for this condition.
  /// [message] A human readable message indicating details about the status.
  /// [reason] The reason for the condition's status.
  /// [severity] Severity with which to treat failures of this type of condition.
  /// [status] Status of the condition.
  /// [type] The type of the condition.
  ResourceStatusResponse({
    required this.lastUpdatedAt,
    required this.message,
    required this.reason,
    required this.severity,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedAt': lastUpdatedAt,
      'message': message,
      'reason': reason,
      'severity': severity,
      'status': status,
      'type': type,
    };
  }

  factory ResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponse(
      lastUpdatedAt: pulumi.Input.fromValue(map['lastUpdatedAt'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
