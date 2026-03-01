// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamConsumer.
class GetStreamConsumerResult {
  final String arn;
  /// Approximate timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of when the stream consumer was created.
  final String creationTimestamp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Current status of the stream consumer.
  final String status;
  final String streamArn;
  final Map<String, String> tags;

  /// Creates a new [GetStreamConsumerResult].
  /// [arn] Required.
  /// [creationTimestamp] Approximate timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of when the stream consumer was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [status] Current status of the stream consumer.
  /// [streamArn] Required.
  /// [tags] Required.
  GetStreamConsumerResult({
    required this.arn,
    required this.creationTimestamp,
    required this.id,
    required this.name,
    required this.region,
    required this.status,
    required this.streamArn,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationTimestamp': creationTimestamp,
      'id': id,
      'name': name,
      'region': region,
      'status': status,
      'streamArn': streamArn,
      'tags': tags,
    };
  }

  factory GetStreamConsumerResult.fromMap(Map<String, dynamic> map) {
    return GetStreamConsumerResult(
      arn: map['arn'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      streamArn: map['streamArn'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

