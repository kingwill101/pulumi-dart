// ignore_for_file: unused_element, unnecessary_cast


class BucketLifecycleRuleNoncurrentVersionTransition {
  /// Specifies the number of days noncurrent object versions transition.
  final int? days;
  /// Specifies the Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  final String storageClass;

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
      days: map['days'] == null ? null : map['days'] as int,
      storageClass: map['storageClass'] as String,
    );
  }
}

