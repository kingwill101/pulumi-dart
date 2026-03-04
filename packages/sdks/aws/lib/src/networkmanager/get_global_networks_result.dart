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
  GetGlobalNetworksResult({required this.id, required this.ids, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'ids': ids, 'tags': ?tags};
  }

  factory GetGlobalNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
