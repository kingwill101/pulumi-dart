// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2LifecycleRuleTransition {
  /// Specifies the date after which you want the corresponding action to take effect.
  final pulumi.Input<String>? date;
  /// Specifies the number of days after object creation when the specific rule action takes effect.
  final pulumi.Input<int>? days;
  /// Specifies the Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketV2LifecycleRuleTransition].
  /// [date] Specifies the date after which you want the corresponding action to take effect.
  /// [days] Specifies the number of days after object creation when the specific rule action takes effect.
  /// [storageClass] Specifies the Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  BucketV2LifecycleRuleTransition({
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

  factory BucketV2LifecycleRuleTransition.fromMap(Map<String, dynamic> map) {
    return BucketV2LifecycleRuleTransition(
      date: map['date'] == null ? null : (map['date'] as String).input(),
      days: map['days'] == null ? null : (map['days'] as int).input(),
      storageClass: (map['storageClass'] as String).input(),
    );
  }
}

