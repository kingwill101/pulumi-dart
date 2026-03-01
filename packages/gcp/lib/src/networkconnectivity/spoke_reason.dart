// ignore_for_file: unused_element, unnecessary_cast

class SpokeReason {
  /// The code associated with this reason.
  final String? code;

  /// Human-readable details about this reason.
  final String? message;

  /// Additional information provided by the user in the RejectSpoke call.
  final String? userDetails;

  /// Creates a new [SpokeReason].
  /// [code] The code associated with this reason.
  /// [message] Human-readable details about this reason.
  /// [userDetails] Additional information provided by the user in the RejectSpoke call.
  SpokeReason({this.code, this.message, this.userDetails});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'userDetails': ?userDetails,
    };
  }

  factory SpokeReason.fromMap(Map<String, dynamic> map) {
    return SpokeReason(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      userDetails: map['userDetails'] == null
          ? null
          : map['userDetails'] as String,
    );
  }
}
