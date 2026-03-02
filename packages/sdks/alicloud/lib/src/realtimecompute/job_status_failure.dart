// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatusFailure {
  /// Job failure time
  final pulumi.Input<int>? failedAt;
  /// Failure Information Details
  final pulumi.Input<String>? message;
  /// Failure Reason
  final pulumi.Input<String>? reason;

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
      failedAt: map['failedAt'] == null ? null : (map['failedAt']! as int).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
    );
  }
}

