// ignore_for_file: unused_element, unnecessary_cast

class BucketV2LifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days noncurrent object versions expire.
  final int? days;

  BucketV2LifecycleRuleNoncurrentVersionExpiration({
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

  factory BucketV2LifecycleRuleNoncurrentVersionExpiration.fromMap(
      Map<String, dynamic> map) {
    return BucketV2LifecycleRuleNoncurrentVersionExpiration(
      days: map['days'] == null ? null : map['days'] as int,
    );
  }
}
