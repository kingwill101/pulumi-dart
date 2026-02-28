// ignore_for_file: unused_element, unnecessary_cast

class GetBucketLogging {
  /// The bucket that will receive log objects.
  final String logBucket;

  /// The object prefix for log objects. If it's not provided, by default Google Cloud Storage sets this to this bucket's name.
  final String logObjectPrefix;

  /// Creates a new [GetBucketLogging].
  /// [logBucket] The bucket that will receive log objects.
  /// [logObjectPrefix] The object prefix for log objects. If it's not provided, by default Google Cloud Storage sets this to this bucket's name.
  GetBucketLogging({
    required this.logBucket,
    required this.logObjectPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logBucket'] = logBucket;
    map['logObjectPrefix'] = logObjectPrefix;
    return map;
  }

  factory GetBucketLogging.fromMap(Map<String, dynamic> map) {
    return GetBucketLogging(
      logBucket: map['logBucket'] as String,
      logObjectPrefix: map['logObjectPrefix'] as String,
    );
  }
}
