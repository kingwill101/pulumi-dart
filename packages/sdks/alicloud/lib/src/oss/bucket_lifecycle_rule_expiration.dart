// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleExpiration {
  /// Specifies the time before which the rules take effect. The date must conform to the ISO8601 format and always be UTC 00:00. For example: 2002-10-11T00:00:00.000Z indicates that parts created before 2002-10-11T00:00:00.000Z are deleted, and parts created after this time (including this time) are not deleted.
  final pulumi.Input<String>? createdBeforeDate;
  /// Specifies the date after which you want the corresponding action to take effect. The value obeys ISO8601 format like `2017-03-09`.
  final pulumi.Input<String>? date;
  /// Specifies the number of days noncurrent object versions transition.
  final pulumi.Input<int>? days;
  /// On a versioned bucket (versioning-enabled or versioning-suspended bucket), you can add this element in the lifecycle configuration to direct OSS to delete expired object delete markers. This cannot be specified with Days, Date or CreatedBeforeDate in a Lifecycle Expiration Policy.
  ///
  /// `NOTE`: One and only one of "date", "days", "created_before_date" and "expired_object_delete_marker" can be specified in one expiration configuration.
  final pulumi.Input<bool>? expiredObjectDeleteMarker;

  /// Creates a new [BucketLifecycleRuleExpiration].
  /// [createdBeforeDate] Specifies the time before which the rules take effect. The date must conform to the ISO8601 format and always be UTC 00:00. For example: 2002-10-11T00:00:00.000Z indicates that parts created before 2002-10-11T00:00:00.000Z are deleted, and parts created after this time (including this time) are not deleted.
  /// [date] Specifies the date after which you want the corresponding action to take effect. The value obeys ISO8601 format like `2017-03-09`.
  /// [days] Specifies the number of days noncurrent object versions transition.
  /// [expiredObjectDeleteMarker] On a versioned bucket (versioning-enabled or versioning-suspended bucket), you can add this element in the lifecycle configuration to direct OSS to delete expired object delete markers. This cannot be specified with Days, Date or CreatedBeforeDate in a Lifecycle Expiration Policy.
  BucketLifecycleRuleExpiration({
    this.createdBeforeDate,
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBeforeDate': ?createdBeforeDate,
      'date': ?date,
      'days': ?days,
      'expiredObjectDeleteMarker': ?expiredObjectDeleteMarker,
    };
  }

  factory BucketLifecycleRuleExpiration.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleExpiration(
      createdBeforeDate: map['createdBeforeDate'] == null ? null : (map['createdBeforeDate']! as String).input(),
      date: map['date'] == null ? null : (map['date']! as String).input(),
      days: map['days'] == null ? null : (map['days']! as int).input(),
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null ? null : (map['expiredObjectDeleteMarker']! as bool).input(),
    );
  }
}

