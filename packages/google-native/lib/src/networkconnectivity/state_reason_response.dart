// ignore_for_file: unused_element, unnecessary_cast

/// The reason a spoke is inactive.
class StateReasonResponse {
  /// The code associated with this reason.
  final String code;

  /// Human-readable details about this reason.
  final String message;

  /// Additional information provided by the user in the RejectSpoke call.
  final String userDetails;

  /// Creates a new [StateReasonResponse].
  /// [code] The code associated with this reason.
  /// [message] Human-readable details about this reason.
  /// [userDetails] Additional information provided by the user in the RejectSpoke call.
  StateReasonResponse({
    required this.code,
    required this.message,
    required this.userDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    map['userDetails'] = userDetails;
    return map;
  }

  factory StateReasonResponse.fromMap(Map<String, dynamic> map) {
    return StateReasonResponse(
      code: map['code'] as String,
      message: map['message'] as String,
      userDetails: map['userDetails'] as String,
    );
  }
}
