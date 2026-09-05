// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleNoncurrentVersionExpiration {
  /// Number of days noncurrent object versions expire.
  final pulumi.Input<int?>? days;

  /// Creates a new [BucketLifecycleRuleNoncurrentVersionExpiration].
  /// [days] Number of days noncurrent object versions expire.
  const BucketLifecycleRuleNoncurrentVersionExpiration({
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
    };
  }

  factory BucketLifecycleRuleNoncurrentVersionExpiration.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleNoncurrentVersionExpiration(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
