// ignore_for_file: unused_element, unnecessary_cast


/// The resource status information.
class ResourceStatusResponse {
  /// The last update time for this condition.
  final String lastUpdatedAt;
  /// A human readable message indicating details about the status.
  final String message;
  /// The reason for the condition's status.
  final String reason;
  /// Severity with which to treat failures of this type of condition.
  final String severity;
  /// Status of the condition.
  final String status;
  /// The type of the condition.
  final String type;

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
      lastUpdatedAt: map['lastUpdatedAt'] as String,
      message: map['message'] as String,
      reason: map['reason'] as String,
      severity: map['severity'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

