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
      jobExpiresAt: (() { final guardedValue = map['jobExpiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobImminentExpirationHealthEventArn: (() { final guardedValue = map['jobImminentExpirationHealthEventArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobPausedAt: (() { final guardedValue = map['jobPausedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

