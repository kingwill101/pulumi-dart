// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSites.
class GetSitesResult {
  final String globalNetworkId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IDs of the sites.
  final List<String> ids;
  final Map<String, String>? tags;

  GetSitesResult({
    required this.globalNetworkId,
    required this.id,
    required this.ids,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    map['id'] = id;
    map['ids'] = ids;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSitesResult.fromMap(Map<String, dynamic> map) {
    return GetSitesResult(
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
