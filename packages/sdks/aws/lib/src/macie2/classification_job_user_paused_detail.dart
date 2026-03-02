// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobUserPausedDetail {
  final pulumi.Input<String>? jobExpiresAt;
  final pulumi.Input<String>? jobImminentExpirationHealthEventArn;
  final pulumi.Input<String>? jobPausedAt;

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
      'jobImminentExpirationHealthEventArn': ?jobImminentExpirationHealthEventArn,
      'jobPausedAt': ?jobPausedAt,
    };
  }

  factory ClassificationJobUserPausedDetail.fromMap(Map<String, dynamic> map) {
    return ClassificationJobUserPausedDetail(
      jobExpiresAt: map['jobExpiresAt'] == null ? null : ((map['jobExpiresAt'] as String).input()).input(),
      jobImminentExpirationHealthEventArn: map['jobImminentExpirationHealthEventArn'] == null ? null : ((map['jobImminentExpirationHealthEventArn'] as String).input()).input(),
      jobPausedAt: map['jobPausedAt'] == null ? null : ((map['jobPausedAt'] as String).input()).input(),
    );
  }
}

