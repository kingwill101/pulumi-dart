// ignore_for_file: unused_element, unnecessary_cast


class JobStatusFailure {
  /// Job failure time
  final int? failedAt;
  /// Failure Information Details
  final String? message;
  /// Failure Reason
  final String? reason;

  /// Creates a new [JobStatusFailure].
  /// [failedAt] Job failure time
  /// [message] Failure Information Details
  /// [reason] Failure Reason
  JobStatusFailure({
    this.failedAt,
    this.message,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedAt': ?failedAt,
      'message': ?message,
      'reason': ?reason,
    };
  }

  factory JobStatusFailure.fromMap(Map<String, dynamic> map) {
    return JobStatusFailure(
      failedAt: map['failedAt'] == null ? null : map['failedAt'] as int,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}

