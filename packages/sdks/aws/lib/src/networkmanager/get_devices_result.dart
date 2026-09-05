// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDevices.
class GetDevicesResult {
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IDs of the devices.
  final List<String>? ids;
  final String? siteId;
  final Map<String, String>? tags;

  /// Creates a new [GetDevicesResult].
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the devices.
  /// [siteId] Optional.
  /// [tags] Optional.
  const GetDevicesResult({
    this.globalNetworkId,
    this.id,
    this.ids,
    this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'ids': ?ids,
      'siteId': ?siteId,
      'tags': ?tags,
    };
  }

  factory GetDevicesResult.fromMap(Map<String, dynamic> map) {
    return GetDevicesResult(
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
