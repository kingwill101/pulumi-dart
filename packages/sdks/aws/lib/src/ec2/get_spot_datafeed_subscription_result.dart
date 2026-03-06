// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpotDatafeedSubscription.
class GetSpotDatafeedSubscriptionResult {
  /// The name of the Amazon S3 bucket where the spot instance data feed is located.
  final String bucket;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The prefix for the data feed files.
  final String prefix;
  final String region;

  /// Creates a new [GetSpotDatafeedSubscriptionResult].
  /// [bucket] The name of the Amazon S3 bucket where the spot instance data feed is located.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [prefix] The prefix for the data feed files.
  /// [region] Required.
  const GetSpotDatafeedSubscriptionResult({
    required this.bucket,
    required this.id,
    required this.prefix,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'id': id,
      'prefix': prefix,
      'region': region,
    };
  }

  factory GetSpotDatafeedSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSpotDatafeedSubscriptionResult(
      bucket: map['bucket'] as String,
      id: map['id'] as String,
      prefix: map['prefix'] as String,
      region: map['region'] as String,
    );
  }
}

