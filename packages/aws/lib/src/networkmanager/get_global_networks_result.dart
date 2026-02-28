// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGlobalNetworks.
class GetGlobalNetworksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IDs of the global networks.
  final List<String> ids;
  final Map<String, String>? tags;

  /// Creates a new [GetGlobalNetworksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the global networks.
  /// [tags] Optional.
  GetGlobalNetworksResult({
    required this.id,
    required this.ids,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ids'] = ids;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetGlobalNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
