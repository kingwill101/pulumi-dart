// ignore_for_file: unused_element, unnecessary_cast

class BucketV2LifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days noncurrent object versions expire.
  final int? days;

  /// Creates a new [BucketV2LifecycleRuleNoncurrentVersionExpiration].
  /// [days] Specifies the number of days noncurrent object versions expire.
  BucketV2LifecycleRuleNoncurrentVersionExpiration({this.days});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'days': ?days};
  }

  factory BucketV2LifecycleRuleNoncurrentVersionExpiration.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketV2LifecycleRuleNoncurrentVersionExpiration(
      days: map['days'] == null ? null : map['days'] as int,
    );
  }
}
