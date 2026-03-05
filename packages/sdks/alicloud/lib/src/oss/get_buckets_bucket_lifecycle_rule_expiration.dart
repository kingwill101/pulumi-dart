// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucketLifecycleRuleExpiration {
  /// Date after which the rule to take effect. The format is like 2017-03-09.
  final pulumi.Input<String> date;
  /// Indicate the number of days after the last object update until the rules take effect.
  final pulumi.Input<int> days;

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
      date: pulumi.Input.fromValue(map['date'] as String),
      days: pulumi.Input.fromValue(map['days'] as int),
    );
  }
}

