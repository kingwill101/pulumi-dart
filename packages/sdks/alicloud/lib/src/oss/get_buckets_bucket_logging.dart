// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucketLogging {
  /// Bucket for storing access logs.
  final pulumi.Input<String> targetBucket;

  /// Prefix of the saved access log file paths.
  final pulumi.Input<String> targetPrefix;

  /// Creates a new [GetBucketsBucketLogging].
  /// [targetBucket] Bucket for storing access logs.
  /// [targetPrefix] Prefix of the saved access log file paths.
  GetBucketsBucketLogging({
    required this.targetBucket,
    required this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetBucket': targetBucket,
      'targetPrefix': targetPrefix,
    };
  }

  factory GetBucketsBucketLogging.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketLogging(
      targetBucket: pulumi.Input.fromValue(map['targetBucket'] as String),
      targetPrefix: pulumi.Input.fromValue(map['targetPrefix'] as String),
    );
  }
}
