// ignore_for_file: unused_element, unnecessary_cast


class GetBucketsBucketLogging {
  /// Bucket for storing access logs.
  final String targetBucket;
  /// Prefix of the saved access log file paths.
  final String targetPrefix;

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
      targetBucket: map['targetBucket'] as String,
      targetPrefix: map['targetPrefix'] as String,
    );
  }
}

