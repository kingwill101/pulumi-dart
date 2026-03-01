// ignore_for_file: unused_element, unnecessary_cast


class ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days non-current object versions expire.
  final int days;

  /// Creates a new [ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration].
  /// [days] Specifies the number of days non-current object versions expire.
  ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration({
    required this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
    };
  }

  factory ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration.fromMap(Map<String, dynamic> map) {
    return ObjectStorageBucketLifecycleRuleNoncurrentVersionExpiration(
      days: map['days'] as int,
    );
  }
}

