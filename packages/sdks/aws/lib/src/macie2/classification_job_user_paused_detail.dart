// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobUserPausedDetail {
  /// Date and time, in UTC and extended RFC 3339 format, when the job or job run will expire and be cancelled if it isn't resumed.
  final pulumi.Input<String?>? jobExpiresAt;
  /// ARN of the AWS Health event that Macie sent to notify of the job or job run's imminent expiration.
  final pulumi.Input<String?>? jobImminentExpirationHealthEventArn;
  /// Date and time, in UTC and extended RFC 3339 format, when the job was paused.
  final pulumi.Input<String?>? jobPausedAt;

  /// Creates a new [ClassificationJobUserPausedDetail].
  /// [jobExpiresAt] Date and time, in UTC and extended RFC 3339 format, when the job or job run will expire and be cancelled if it isn't resumed.
  /// [jobImminentExpirationHealthEventArn] ARN of the AWS Health event that Macie sent to notify of the job or job run's imminent expiration.
  /// [jobPausedAt] Date and time, in UTC and extended RFC 3339 format, when the job was paused.
  const ClassificationJobUserPausedDetail({
    this.jobExpiresAt,
    this.jobImminentExpirationHealthEventArn,
    this.jobPausedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobExpiresAt': ?jobExpiresAt,
      'jobImminentExpirationHealthEventArn': ?jobImminentExpirationHealthEventArn,
      'jobPausedAt': ?jobPausedAt,
    };
  }

  factory ClassificationJobUserPausedDetail.fromMap(Map<String, dynamic> map) {
    return ClassificationJobUserPausedDetail(
      jobExpiresAt: (() { final guardedValue = map['jobExpiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobImminentExpirationHealthEventArn: (() { final guardedValue = map['jobImminentExpirationHealthEventArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobPausedAt: (() { final guardedValue = map['jobPausedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
