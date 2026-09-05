// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2LifecycleRuleNoncurrentVersionExpiration {
  /// Number of days noncurrent object versions expire.
  final pulumi.Input<int?>? days;

  /// Creates a new [BucketV2LifecycleRuleNoncurrentVersionExpiration].
  /// [days] Number of days noncurrent object versions expire.
  const BucketV2LifecycleRuleNoncurrentVersionExpiration({
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
    };
  }

  factory BucketV2LifecycleRuleNoncurrentVersionExpiration.fromMap(Map<String, dynamic> map) {
    return BucketV2LifecycleRuleNoncurrentVersionExpiration(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
