// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueue.
class GetQueueResult {
  /// ARN of the queue.
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Map of tags for the resource.
  final Map<String, String> tags;
  /// URL of the queue.
  final String url;

  /// Creates a new [GetQueueResult].
  /// [arn] ARN of the queue.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Map of tags for the resource.
  /// [url] URL of the queue.
  const GetQueueResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
      'url': url,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      url: map['url'] as String,
    );
  }
}

