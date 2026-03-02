// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleNoncurrentVersionTransition {
  /// Specifies the number of days noncurrent object versions transition.
  final pulumi.Input<int>? days;
  /// Specifies the Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketLifecycleRuleNoncurrentVersionTransition].
  /// [days] Specifies the number of days noncurrent object versions transition.
  /// [storageClass] Specifies the Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  BucketLifecycleRuleNoncurrentVersionTransition({
    this.days,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'storageClass': storageClass,
    };
  }

  factory BucketLifecycleRuleNoncurrentVersionTransition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleNoncurrentVersionTransition(
      days: map['days'] == null ? null : (map['days'] as int).input(),
      storageClass: (map['storageClass'] as String).input(),
    );
  }
}

