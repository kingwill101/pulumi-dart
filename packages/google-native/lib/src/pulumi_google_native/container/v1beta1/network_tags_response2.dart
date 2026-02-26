// ignore_for_file: unused_element, unnecessary_cast

/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/docs/reference/rest/v1/NodeConfig)).
class NetworkTagsResponse2 {
  /// List of network tags.
  final List<String> tags;

  NetworkTagsResponse2({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tags'] = tags;
    return map;
  }

  factory NetworkTagsResponse2.fromMap(Map<String, dynamic> map) {
    return NetworkTagsResponse2(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
