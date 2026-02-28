// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConnections.
class GetConnectionsResult {
  final String? deviceId;
  final String globalNetworkId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IDs of the connections.
  final List<String> ids;
  final Map<String, String>? tags;

  /// Creates a new [GetConnectionsResult].
  /// [deviceId] Optional.
  /// [globalNetworkId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the connections.
  /// [tags] Optional.
  GetConnectionsResult({
    this.deviceId,
    required this.globalNetworkId,
    required this.id,
    required this.ids,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceIdValue = deviceId;
    if (deviceIdValue != null) {
      map['deviceId'] = deviceIdValue;
    }
    map['globalNetworkId'] = globalNetworkId;
    map['id'] = id;
    map['ids'] = ids;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionsResult(
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
