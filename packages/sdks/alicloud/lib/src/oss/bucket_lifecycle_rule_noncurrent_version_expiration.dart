// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days noncurrent object versions transition.
  final pulumi.Input<int> days;

  /// Creates a new [BucketLifecycleRuleNoncurrentVersionExpiration].
  /// [days] Specifies the number of days noncurrent object versions transition.
  BucketLifecycleRuleNoncurrentVersionExpiration({required this.days});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'days': days};
  }

  factory BucketLifecycleRuleNoncurrentVersionExpiration.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleRuleNoncurrentVersionExpiration(
      days: pulumi.Input.fromValue(map['days'] as int),
    );
  }
}
