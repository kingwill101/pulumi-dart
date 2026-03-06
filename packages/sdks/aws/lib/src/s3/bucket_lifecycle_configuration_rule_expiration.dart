// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationRuleExpiration {
  /// Date the object is to be moved or deleted. The date value must be in [RFC3339 full-date format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6) e.g. `2023-08-22`.
  final pulumi.Input<String>? date;
  /// Lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
  final pulumi.Input<int>? days;
  /// Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to `true`, the delete marker will be expired; if set to `false` the policy takes no action.
  final pulumi.Input<bool>? expiredObjectDeleteMarker;

  /// Creates a new [BucketLifecycleConfigurationRuleExpiration].
  /// [date] Date the object is to be moved or deleted. The date value must be in [RFC3339 full-date format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6) e.g. `2023-08-22`.
  /// [days] Lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
  /// [expiredObjectDeleteMarker] Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to `true`, the delete marker will be expired; if set to `false` the policy takes no action.
  const BucketLifecycleConfigurationRuleExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'days': ?days,
      'expiredObjectDeleteMarker': ?expiredObjectDeleteMarker,
    };
  }

  factory BucketLifecycleConfigurationRuleExpiration.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleExpiration(
      date: (() { final guardedValue = map['date']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expiredObjectDeleteMarker: (() { final guardedValue = map['expiredObjectDeleteMarker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

