// ignore_for_file: unused_element, unnecessary_cast

/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
class NetworkTagsResponse {
  /// List of network tags.
  final List<String> tags;

  NetworkTagsResponse({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tags'] = tags;
    return map;
  }

  factory NetworkTagsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTagsResponse(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
