// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobUserPausedDetail {
  final String? jobExpiresAt;
  final String? jobImminentExpirationHealthEventArn;
  final String? jobPausedAt;

  ClassificationJobUserPausedDetail({
    this.jobExpiresAt,
    this.jobImminentExpirationHealthEventArn,
    this.jobPausedAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jobExpiresAtValue = jobExpiresAt;
    if (jobExpiresAtValue != null) {
      map['jobExpiresAt'] = jobExpiresAtValue;
    }
    final jobImminentExpirationHealthEventArnValue =
        jobImminentExpirationHealthEventArn;
    if (jobImminentExpirationHealthEventArnValue != null) {
      map['jobImminentExpirationHealthEventArn'] =
          jobImminentExpirationHealthEventArnValue;
    }
    final jobPausedAtValue = jobPausedAt;
    if (jobPausedAtValue != null) {
      map['jobPausedAt'] = jobPausedAtValue;
    }
    return map;
  }

  factory ClassificationJobUserPausedDetail.fromMap(Map<String, dynamic> map) {
    return ClassificationJobUserPausedDetail(
      jobExpiresAt:
          map['jobExpiresAt'] == null ? null : map['jobExpiresAt'] as String,
      jobImminentExpirationHealthEventArn:
          map['jobImminentExpirationHealthEventArn'] == null
              ? null
              : map['jobImminentExpirationHealthEventArn'] as String,
      jobPausedAt:
          map['jobPausedAt'] == null ? null : map['jobPausedAt'] as String,
    );
  }
}
