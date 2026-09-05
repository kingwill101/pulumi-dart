// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleTransition {
  /// Date after which you want the corresponding action to take effect.
  final pulumi.Input<String?>? date;
  /// Number of days after object creation when the specific rule action takes effect.
  final pulumi.Input<int?>? days;
  /// Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketLifecycleRuleTransition].
  /// [date] Date after which you want the corresponding action to take effect.
  /// [days] Number of days after object creation when the specific rule action takes effect.
  /// [storageClass] Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  const BucketLifecycleRuleTransition({
    this.date,
    this.days,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'days': ?days,
      'storageClass': storageClass,
    };
  }

  factory BucketLifecycleRuleTransition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleTransition(
      date: (() { final guardedValue = map['date']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
