// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLogging {
  /// Name of the bucket that will receive the log objects.
  final pulumi.Input<String> targetBucket;
  /// To specify a key prefix for log objects.
  final pulumi.Input<String>? targetPrefix;

  /// Creates a new [BucketLogging].
  /// [targetBucket] Name of the bucket that will receive the log objects.
  /// [targetPrefix] To specify a key prefix for log objects.
  const BucketLogging({
    required this.targetBucket,
    this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetBucket': targetBucket,
      'targetPrefix': ?targetPrefix,
    };
  }

  factory BucketLogging.fromMap(Map<String, dynamic> map) {
    return BucketLogging(
      targetBucket: pulumi.Input.fromValue(map['targetBucket'] as String),
      targetPrefix: (() { final guardedValue = map['targetPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
