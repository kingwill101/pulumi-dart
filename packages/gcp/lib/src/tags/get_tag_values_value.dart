// ignore_for_file: unused_element, unnecessary_cast

class GetTagValuesValue {
  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String createTime;

  /// User-assigned description of the TagValue.
  final String description;

  /// an identifier for the resource with format `tagValues/{{name}}`
  final String name;

  /// Namespaced name of the TagValue.
  final String namespacedName;

  /// The resource name of the parent tagKey in format `tagKey/{name}`.
  final String parent;

  /// User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  final String shortName;

  /// Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String updateTime;

  /// Creates a new [GetTagValuesValue].
  /// [createTime] Creation time.
  /// [description] User-assigned description of the TagValue.
  /// [name] an identifier for the resource with format `tagValues/{{name}}`
  /// [namespacedName] Namespaced name of the TagValue.
  /// [parent] The resource name of the parent tagKey in format `tagKey/{name}`.
  /// [shortName] User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey.
  /// [updateTime] Update time.
  GetTagValuesValue({
    required this.createTime,
    required this.description,
    required this.name,
    required this.namespacedName,
    required this.parent,
    required this.shortName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['namespacedName'] = namespacedName;
    map['parent'] = parent;
    map['shortName'] = shortName;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTagValuesValue.fromMap(Map<String, dynamic> map) {
    return GetTagValuesValue(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      namespacedName: map['namespacedName'] as String,
      parent: map['parent'] as String,
      shortName: map['shortName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
