// ignore_for_file: unused_element, unnecessary_cast

/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/docs/reference/rest/v1/NodeConfig)).
class NetworkTags2 {
  /// List of network tags.
  final List<String>? tags;

  NetworkTags2({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NetworkTags2.fromMap(Map<String, dynamic> map) {
    return NetworkTags2(
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
