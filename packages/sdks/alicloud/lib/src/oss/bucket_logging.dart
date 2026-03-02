// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLogging {
  /// The name of the bucket that will receive the log objects.
  final pulumi.Input<String> targetBucket;
  /// To specify a key prefix for log objects.
  final pulumi.Input<String>? targetPrefix;

  /// Creates a new [BucketLogging].
  /// [targetBucket] The name of the bucket that will receive the log objects.
  /// [targetPrefix] To specify a key prefix for log objects.
  BucketLogging({
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
      targetBucket: (map['targetBucket'] as String).input(),
      targetPrefix: map['targetPrefix'] == null ? null : (map['targetPrefix']! as String).input(),
    );
  }
}

