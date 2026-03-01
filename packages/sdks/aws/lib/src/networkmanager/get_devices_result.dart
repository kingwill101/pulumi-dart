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

  /// Creates a new [GetDevicesResult].
  /// [globalNetworkId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the devices.
  /// [siteId] Optional.
  /// [tags] Optional.
  GetDevicesResult({
    required this.globalNetworkId,
    required this.id,
    required this.ids,
    this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'id': id,
      'ids': ids,
      'siteId': ?siteId,
      'tags': ?tags,
    };
  }

  factory GetDevicesResult.fromMap(Map<String, dynamic> map) {
    return GetDevicesResult(
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      siteId: map['siteId'] == null ? null : map['siteId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

