// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDevices.
class GetDevicesResult {
  final String globalNetworkId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IDs of the devices.
  final List<String> ids;
  final String? siteId;
  final Map<String, String>? tags;

  GetDevicesResult({
    required this.globalNetworkId,
    required this.id,
    required this.ids,
    this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    map['id'] = id;
    map['ids'] = ids;
    final siteIdValue = siteId;
    if (siteIdValue != null) {
      map['siteId'] = siteIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDevicesResult.fromMap(Map<String, dynamic> map) {
    return GetDevicesResult(
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      siteId: map['siteId'] == null ? null : map['siteId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
