// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamKey.
class GetStreamKeyResult {
  /// ARN of the Stream Key.
  final String arn;
  final String channelArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;
  /// Stream Key value.
  final String value;

  /// Creates a new [GetStreamKeyResult].
  /// [arn] ARN of the Stream Key.
  /// [channelArn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [tags] Map of tags assigned to the resource.
  /// [value] Stream Key value.
  GetStreamKeyResult({
    required this.arn,
    required this.channelArn,
    required this.id,
    required this.region,
    required this.tags,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'channelArn': channelArn,
      'id': id,
      'region': region,
      'tags': tags,
      'value': value,
    };
  }

  factory GetStreamKeyResult.fromMap(Map<String, dynamic> map) {
    return GetStreamKeyResult(
      arn: map['arn'] as String,
      channelArn: map['channelArn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      value: map['value'] as String,
    );
  }
}

