// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getQueue.
class GetQueueMediaconvertResult {
  /// The Arn of the queue.
  final String arn;
  final String id;

  /// The same as `id`.
  final String name;
  final String region;

  /// The status of the queue.
  final String status;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final Map<String, String> tags;

  GetQueueMediaconvertResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['status'] = status;
    map['tags'] = tags;
    return map;
  }

  factory GetQueueMediaconvertResult.fromMap(Map<String, dynamic> map) {
    return GetQueueMediaconvertResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
