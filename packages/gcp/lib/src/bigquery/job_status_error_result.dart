// ignore_for_file: unused_element, unnecessary_cast

class JobStatusErrorResult {
  /// The geographic location of the job. The default value is US.
  final String? location;

  /// A human-readable description of the error.
  final String? message;

  /// A short error code that summarizes the error.
  final String? reason;

  /// Creates a new [JobStatusErrorResult].
  /// [location] The geographic location of the job. The default value is US.
  /// [message] A human-readable description of the error.
  /// [reason] A short error code that summarizes the error.
  JobStatusErrorResult({this.location, this.message, this.reason});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'message': ?message,
      'reason': ?reason,
    };
  }

  factory JobStatusErrorResult.fromMap(Map<String, dynamic> map) {
    return JobStatusErrorResult(
      location: map['location'] == null ? null : map['location'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
