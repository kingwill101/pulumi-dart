// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleAbortMultipartUpload {
  /// Specifies the time before which the rules take effect. The date must conform to the ISO8601 format and always be UTC 00:00. For example: 2002-10-11T00:00:00.000Z indicates that parts created before 2002-10-11T00:00:00.000Z are deleted, and parts created after this time (including this time) are not deleted.
  final pulumi.Input<String>? createdBeforeDate;

  /// Specifies the number of days noncurrent object versions transition.
  final pulumi.Input<int>? days;

  /// Creates a new [BucketLifecycleRuleAbortMultipartUpload].
  /// [createdBeforeDate] Specifies the time before which the rules take effect. The date must conform to the ISO8601 format and always be UTC 00:00. For example: 2002-10-11T00:00:00.000Z indicates that parts created before 2002-10-11T00:00:00.000Z are deleted, and parts created after this time (including this time) are not deleted.
  /// [days] Specifies the number of days noncurrent object versions transition.
  BucketLifecycleRuleAbortMultipartUpload({this.createdBeforeDate, this.days});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBeforeDate': ?createdBeforeDate,
      'days': ?days,
    };
  }

  factory BucketLifecycleRuleAbortMultipartUpload.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleRuleAbortMultipartUpload(
      createdBeforeDate: (() {
        final guardedValue = map['createdBeforeDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      days: (() {
        final guardedValue = map['days'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
