// ignore_for_file: unused_element, unnecessary_cast


/// Definition of UserPausedDetails
class UserPausedDetails {
  /// <p>The date and time, in UTC and extended ISO 8601 format, when the job or job run will expire and be cancelled if you don't resume it first.</p>
  final String? jobExpiresAt;
  /// <p>The Amazon Resource Name (ARN) of the Health event that Amazon Macie sent to notify you of the job or job run's pending expiration and cancellation. This value is null if a job has been paused for less than 23 days.</p>
  final String? jobImminentExpirationHealthEventArn;
  /// <p>The date and time, in UTC and extended ISO 8601 format, when you paused the job.</p>
  final String? jobPausedAt;

  /// Creates a new [UserPausedDetails].
  /// [jobExpiresAt] <p>The date and time, in UTC and extended ISO 8601 format, when the job or job run will expire and be cancelled if you don't resume it first.</p>
  /// [jobImminentExpirationHealthEventArn] <p>The Amazon Resource Name (ARN) of the Health event that Amazon Macie sent to notify you of the job or job run's pending expiration and cancellation. This value is null if a job has been paused for less than 23 days.</p>
  /// [jobPausedAt] <p>The date and time, in UTC and extended ISO 8601 format, when you paused the job.</p>
  UserPausedDetails({
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

  factory UserPausedDetails.fromMap(Map<String, dynamic> map) {
    return UserPausedDetails(
      jobExpiresAt: map['jobExpiresAt'] == null ? null : map['jobExpiresAt'] as String,
      jobImminentExpirationHealthEventArn: map['jobImminentExpirationHealthEventArn'] == null ? null : map['jobImminentExpirationHealthEventArn'] as String,
      jobPausedAt: map['jobPausedAt'] == null ? null : map['jobPausedAt'] as String,
    );
  }
}

