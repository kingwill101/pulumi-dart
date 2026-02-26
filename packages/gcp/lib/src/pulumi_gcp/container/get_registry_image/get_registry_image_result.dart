// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegistryImage.
class GetRegistryImageResult {
  final String? digest;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The URL at which the image can be accessed.
  final String imageUrl;
  final String name;
  final String project;
  final String? region;
  final String? tag;

  GetRegistryImageResult({
    this.digest,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.project,
    this.region,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    map['id'] = id;
    map['imageUrl'] = imageUrl;
    map['name'] = name;
    map['project'] = project;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory GetRegistryImageResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageResult(
      digest: map['digest'] == null ? null : map['digest'] as String,
      id: map['id'] as String,
      imageUrl: map['imageUrl'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
