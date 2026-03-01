// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days noncurrent object versions expire.
  final int? days;

  /// Creates a new [BucketLifecycleRuleNoncurrentVersionExpiration].
  /// [days] Specifies the number of days noncurrent object versions expire.
  BucketLifecycleRuleNoncurrentVersionExpiration({this.days});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'days': ?days};
  }

  factory BucketLifecycleRuleNoncurrentVersionExpiration.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleRuleNoncurrentVersionExpiration(
      days: map['days'] == null ? null : map['days'] as int,
    );
  }
}
