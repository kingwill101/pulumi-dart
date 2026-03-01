// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
class BucketLogging {
  /// The destination bucket where the current bucket's logs should be placed.
  final String? logBucket;

  /// A prefix for log object names.
  final String? logObjectPrefix;

  /// Creates a new [BucketLogging].
  /// [logBucket] The destination bucket where the current bucket's logs should be placed.
  /// [logObjectPrefix] A prefix for log object names.
  BucketLogging({this.logBucket, this.logObjectPrefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': ?logBucket,
      'logObjectPrefix': ?logObjectPrefix,
    };
  }

  factory BucketLogging.fromMap(Map<String, dynamic> map) {
    return BucketLogging(
      logBucket: map['logBucket'] == null ? null : map['logBucket'] as String,
      logObjectPrefix: map['logObjectPrefix'] == null
          ? null
          : map['logObjectPrefix'] as String,
    );
  }
}
