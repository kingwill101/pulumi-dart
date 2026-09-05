// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLinks.
class GetLinksResult {
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IDs of the links.
  final List<String>? ids;
  final String? providerName;
  final String? siteId;
  final Map<String, String>? tags;
  final String? type;

  /// Creates a new [GetLinksResult].
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the links.
  /// [providerName] Optional.
  /// [siteId] Optional.
  /// [tags] Optional.
  /// [type] Optional.
  const GetLinksResult({
    this.globalNetworkId,
    this.id,
    this.ids,
    this.providerName,
    this.siteId,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'ids': ?ids,
      'providerName': ?providerName,
      'siteId': ?siteId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetLinksResult.fromMap(Map<String, dynamic> map) {
    return GetLinksResult(
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
