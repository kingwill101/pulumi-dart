// ignore_for_file: unused_element, unnecessary_cast


class GetBucketsBucketLifecycleRuleExpiration {
  /// Date after which the rule to take effect. The format is like 2017-03-09.
  final String date;
  /// Indicate the number of days after the last object update until the rules take effect.
  final int days;

  /// Creates a new [GetBucketsBucketLifecycleRuleExpiration].
  /// [date] Date after which the rule to take effect. The format is like 2017-03-09.
  /// [days] Indicate the number of days after the last object update until the rules take effect.
  GetBucketsBucketLifecycleRuleExpiration({
    required this.date,
    required this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'days': days,
    };
  }

  factory GetBucketsBucketLifecycleRuleExpiration.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketLifecycleRuleExpiration(
      date: map['date'] as String,
      days: map['days'] as int,
    );
  }
}

