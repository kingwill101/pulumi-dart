// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2LifecycleRuleNoncurrentVersionTransition {
  /// Number of days noncurrent object versions transition.
  final pulumi.Input<int>? days;
  /// Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketV2LifecycleRuleNoncurrentVersionTransition].
  /// [days] Number of days noncurrent object versions transition.
  /// [storageClass] Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  const BucketV2LifecycleRuleNoncurrentVersionTransition({
    this.days,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'storageClass': storageClass,
    };
  }

  factory BucketV2LifecycleRuleNoncurrentVersionTransition.fromMap(Map<String, dynamic> map) {
    return BucketV2LifecycleRuleNoncurrentVersionTransition(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
