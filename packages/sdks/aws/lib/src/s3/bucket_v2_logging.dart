// ignore_for_file: unused_element, unnecessary_cast


class BucketV2Logging {
  /// Name of the bucket that will receive the log objects.
  final String targetBucket;
  /// To specify a key prefix for log objects.
  final String? targetPrefix;

  /// Creates a new [BucketV2Logging].
  /// [targetBucket] Name of the bucket that will receive the log objects.
  /// [targetPrefix] To specify a key prefix for log objects.
  BucketV2Logging({
    required this.targetBucket,
    this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetBucket': targetBucket,
      'targetPrefix': ?targetPrefix,
    };
  }

  factory BucketV2Logging.fromMap(Map<String, dynamic> map) {
    return BucketV2Logging(
      targetBucket: map['targetBucket'] as String,
      targetPrefix: map['targetPrefix'] == null ? null : map['targetPrefix'] as String,
    );
  }
}

