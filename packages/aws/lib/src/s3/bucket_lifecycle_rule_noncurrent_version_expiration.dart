// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days noncurrent object versions expire.
  final int? days;

  /// Creates a new [BucketLifecycleRuleNoncurrentVersionExpiration].
  /// [days] Specifies the number of days noncurrent object versions expire.
  BucketLifecycleRuleNoncurrentVersionExpiration({
    this.days,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    return map;
  }

  factory BucketLifecycleRuleNoncurrentVersionExpiration.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleRuleNoncurrentVersionExpiration(
      days: map['days'] == null ? null : map['days'] as int,
    );
  }
}
