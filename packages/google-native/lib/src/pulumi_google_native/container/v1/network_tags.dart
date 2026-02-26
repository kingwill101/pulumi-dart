// ignore_for_file: unused_element, unnecessary_cast

/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
class NetworkTags {
  /// List of network tags.
  final List<String>? tags;

  NetworkTags({
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

  factory NetworkTags.fromMap(Map<String, dynamic> map) {
    return NetworkTags(
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
