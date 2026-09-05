// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApis.
class GetApisResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of API identifiers.
  final List<String>? ids;
  final String? name;
  final String? protocolType;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetApisResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of API identifiers.
  /// [name] Optional.
  /// [protocolType] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  const GetApisResult({
    this.id,
    this.ids,
    this.name,
    this.protocolType,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ids': ?ids,
      'name': ?name,
      'protocolType': ?protocolType,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetApisResult.fromMap(Map<String, dynamic> map) {
    return GetApisResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
