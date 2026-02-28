// ignore_for_file: unused_element, unnecessary_cast

class BucketLogging {
  /// Name of the bucket that will receive the log objects.
  final String targetBucket;

  /// To specify a key prefix for log objects.
  final String? targetPrefix;

  /// Creates a new [BucketLogging].
  /// [targetBucket] Name of the bucket that will receive the log objects.
  /// [targetPrefix] To specify a key prefix for log objects.
  BucketLogging({
    required this.targetBucket,
    this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetBucket'] = targetBucket;
    final targetPrefixValue = targetPrefix;
    if (targetPrefixValue != null) {
      map['targetPrefix'] = targetPrefixValue;
    }
    return map;
  }

  factory BucketLogging.fromMap(Map<String, dynamic> map) {
    return BucketLogging(
      targetBucket: map['targetBucket'] as String,
      targetPrefix:
          map['targetPrefix'] == null ? null : map['targetPrefix'] as String,
    );
  }
}
