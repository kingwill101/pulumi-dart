// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLinks.
class GetLinksResult {
  final String globalNetworkId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IDs of the links.
  final List<String> ids;
  final String? providerName;
  final String? siteId;
  final Map<String, String>? tags;
  final String? type;

  GetLinksResult({
    required this.globalNetworkId,
    required this.id,
    required this.ids,
    this.providerName,
    this.siteId,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    map['id'] = id;
    map['ids'] = ids;
    final providerNameValue = providerName;
    if (providerNameValue != null) {
      map['providerName'] = providerNameValue;
    }
    final siteIdValue = siteId;
    if (siteIdValue != null) {
      map['siteId'] = siteIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetLinksResult.fromMap(Map<String, dynamic> map) {
    return GetLinksResult(
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      providerName:
          map['providerName'] == null ? null : map['providerName'] as String,
      siteId: map['siteId'] == null ? null : map['siteId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
