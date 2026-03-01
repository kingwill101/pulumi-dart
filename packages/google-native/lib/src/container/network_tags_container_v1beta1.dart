// ignore_for_file: unused_element, unnecessary_cast

/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/docs/reference/rest/v1/NodeConfig)).
class NetworkTagsContainerV1beta1 {
  /// List of network tags.
  final List<String>? tags;

  /// Creates a new [NetworkTagsContainerV1beta1].
  /// [tags] List of network tags.
  NetworkTagsContainerV1beta1({this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tags': ?tags};
  }

  factory NetworkTagsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkTagsContainerV1beta1(
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
