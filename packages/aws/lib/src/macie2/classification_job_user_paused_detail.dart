// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobUserPausedDetail {
  final String? jobExpiresAt;
  final String? jobImminentExpirationHealthEventArn;
  final String? jobPausedAt;

  /// Creates a new [ClassificationJobUserPausedDetail].
  /// [jobExpiresAt] Optional.
  /// [jobImminentExpirationHealthEventArn] Optional.
  /// [jobPausedAt] Optional.
  ClassificationJobUserPausedDetail({
    this.jobExpiresAt,
    this.jobImminentExpirationHealthEventArn,
    this.jobPausedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobExpiresAt': ?jobExpiresAt,
      'jobImminentExpirationHealthEventArn':
          ?jobImminentExpirationHealthEventArn,
      'jobPausedAt': ?jobPausedAt,
    };
  }

  factory ClassificationJobUserPausedDetail.fromMap(Map<String, dynamic> map) {
    return ClassificationJobUserPausedDetail(
      jobExpiresAt: map['jobExpiresAt'] == null
          ? null
          : map['jobExpiresAt'] as String,
      jobImminentExpirationHealthEventArn:
          map['jobImminentExpirationHealthEventArn'] == null
          ? null
          : map['jobImminentExpirationHealthEventArn'] as String,
      jobPausedAt: map['jobPausedAt'] == null
          ? null
          : map['jobPausedAt'] as String,
    );
  }
}
