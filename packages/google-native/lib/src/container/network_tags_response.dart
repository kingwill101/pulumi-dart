// ignore_for_file: unused_element, unnecessary_cast


/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
class NetworkTagsResponse {
  /// List of network tags.
  final List<String> tags;

  /// Creates a new [NetworkTagsResponse].
  /// [tags] List of network tags.
  NetworkTagsResponse({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
    };
  }

  factory NetworkTagsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTagsResponse(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}

