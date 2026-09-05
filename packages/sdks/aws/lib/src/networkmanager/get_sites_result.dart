// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSites.
class GetSitesResult {
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IDs of the sites.
  final List<String>? ids;
  final Map<String, String>? tags;

  /// Creates a new [GetSitesResult].
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the sites.
  /// [tags] Optional.
  const GetSitesResult({
    this.globalNetworkId,
    this.id,
    this.ids,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'ids': ?ids,
      'tags': ?tags,
    };
  }

  factory GetSitesResult.fromMap(Map<String, dynamic> map) {
    return GetSitesResult(
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
