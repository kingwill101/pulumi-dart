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
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ids'] = ids;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final protocolTypeValue = protocolType;
    if (protocolTypeValue != null) {
      map['protocolType'] = protocolTypeValue;
    }
    map['region'] = region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetApisResult.fromMap(Map<String, dynamic> map) {
    return GetApisResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      protocolType:
          map['protocolType'] == null ? null : map['protocolType'] as String,
      region: map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
