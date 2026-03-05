// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApis.
class GetApisResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of API identifiers.
  final List<String> ids;
  final String? name;
  final String? protocolType;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetApisResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of API identifiers.
  /// [name] Optional.
  /// [protocolType] Optional.
  /// [region] Required.
  /// [tags] Optional.
  GetApisResult({
    required this.id,
    required this.ids,
    this.name,
    this.protocolType,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'name': ?name,
      'protocolType': ?protocolType,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetApisResult.fromMap(Map<String, dynamic> map) {
    return GetApisResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

