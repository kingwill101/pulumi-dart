// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of UserPausedDetails
class UserPausedDetailsResponse {
  /// &lt;p&gt;The date and time, in UTC and extended ISO 8601 format, when the job or job run will expire and be cancelled if you don't resume it first.&lt;/p&gt;
  final pulumi.Input<String>? jobExpiresAt;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the Health event that Amazon Macie sent to notify you of the job or job run's pending expiration and cancellation. This value is null if a job has been paused for less than 23 days.&lt;/p&gt;
  final pulumi.Input<String>? jobImminentExpirationHealthEventArn;
  /// &lt;p&gt;The date and time, in UTC and extended ISO 8601 format, when you paused the job.&lt;/p&gt;
  final pulumi.Input<String>? jobPausedAt;

  /// Creates a new [UserPausedDetailsResponse].
  /// [jobExpiresAt] &lt;p&gt;The date and time, in UTC and extended ISO 8601 format, when the job or job run will expire and be cancelled if you don't resume it first.&lt;/p&gt;
  /// [jobImminentExpirationHealthEventArn] &lt;p&gt;The Amazon Resource Name (ARN) of the Health event that Amazon Macie sent to notify you of the job or job run's pending expiration and cancellation. This value is null if a job has been paused for less than 23 days.&lt;/p&gt;
  /// [jobPausedAt] &lt;p&gt;The date and time, in UTC and extended ISO 8601 format, when you paused the job.&lt;/p&gt;
  const UserPausedDetailsResponse({
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

  factory UserPausedDetailsResponse.fromMap(Map<String, dynamic> map) {
    return UserPausedDetailsResponse(
      jobExpiresAt: (() { final guardedValue = map['jobExpiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobImminentExpirationHealthEventArn: (() { final guardedValue = map['jobImminentExpirationHealthEventArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobPausedAt: (() { final guardedValue = map['jobPausedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

