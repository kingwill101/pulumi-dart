// ignore_for_file: unused_element, unnecessary_cast

/// Represent a user-facing Error.
class ErrorResponse {
  /// Additional information about the error.
  final Map<String, String> details;

  /// The time when the error occurred.
  final String errorTime;

  /// A unique identifier for this specific error, allowing it to be traced throughout the system in logs and API responses.
  final String errorUuid;

  /// A message containing more information about the error that occurred.
  final String message;

  /// A title that explains the reason for the error.
  final String reason;

  ErrorResponse({
    required this.details,
    required this.errorTime,
    required this.errorUuid,
    required this.message,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['errorTime'] = errorTime;
    map['errorUuid'] = errorUuid;
    map['message'] = message;
    map['reason'] = reason;
    return map;
  }

  factory ErrorResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponse(
      details: (map['details'] as Map).cast<String, String>(),
      errorTime: map['errorTime'] as String,
      errorUuid: map['errorUuid'] as String,
      message: map['message'] as String,
      reason: map['reason'] as String,
    );
  }
}
