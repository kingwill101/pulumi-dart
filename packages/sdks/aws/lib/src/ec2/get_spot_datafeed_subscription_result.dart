// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpotDatafeedSubscription.
class GetSpotDatafeedSubscriptionResult {
  /// The name of the Amazon S3 bucket where the spot instance data feed is located.
  final String? bucket;
  /// The prefix for the data feed files.
  final String? prefix;
  final String? region;

  /// Creates a new [GetSpotDatafeedSubscriptionResult].
  /// [bucket] The name of the Amazon S3 bucket where the spot instance data feed is located.
  /// [prefix] The prefix for the data feed files.
  /// [region] Optional.
  const GetSpotDatafeedSubscriptionResult({
    this.bucket,
    this.prefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'prefix': ?prefix,
      'region': ?region,
    };
  }

  factory GetSpotDatafeedSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSpotDatafeedSubscriptionResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
