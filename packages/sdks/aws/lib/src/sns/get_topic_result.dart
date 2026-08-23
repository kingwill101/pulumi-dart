// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopic.
class GetTopicResult {
  /// ARN of the found topic, suitable for referencing in other resources that support SNS topics.
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// Creates a new [GetTopicResult].
  /// [arn] ARN of the found topic, suitable for referencing in other resources that support SNS topics.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Map of tags for the resource.
  const GetTopicResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
