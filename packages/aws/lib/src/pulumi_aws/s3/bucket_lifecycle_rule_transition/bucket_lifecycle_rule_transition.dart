// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleRuleTransition {
  /// Specifies the date after which you want the corresponding action to take effect.
  final String? date;

  /// Specifies the number of days after object creation when the specific rule action takes effect.
  final int? days;

  /// Specifies the Amazon S3 [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_Transition.html#AmazonS3-Type-Transition-StorageClass) to which you want the object to transition.
  final String storageClass;

  BucketLifecycleRuleTransition({
    this.date,
    this.days,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dateValue = date;
    if (dateValue != null) {
      map['date'] = dateValue;
    }
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    map['storageClass'] = storageClass;
    return map;
  }

  factory BucketLifecycleRuleTransition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleTransition(
      date: map['date'] == null ? null : map['date'] as String,
      days: map['days'] == null ? null : map['days'] as int,
      storageClass: map['storageClass'] as String,
    );
  }
}
