// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getQueue.
class GetQueueResult2 {
  /// The Arn of the queue.
  final String arn;
  final String id;

  /// The same as <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>.
  final String name;
  final String region;

  /// The status of the queue.
  final String status;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  final Map<String, String> tags;

  GetQueueResult2({
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

  factory GetQueueResult2.fromMap(Map<String, dynamic> map) {
    return GetQueueResult2(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
