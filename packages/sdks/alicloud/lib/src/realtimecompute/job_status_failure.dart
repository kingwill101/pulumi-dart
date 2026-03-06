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
  const JobStatusFailure({
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
      failedAt: (() { final guardedValue = map['failedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

