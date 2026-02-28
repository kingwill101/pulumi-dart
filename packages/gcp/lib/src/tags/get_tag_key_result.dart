// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTagKey.
class GetTagKeyResult {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  final String allowedValuesRegex;

  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String createTime;
  final String description;

  /// an identifier for the resource with format `tagKeys/{{name}}`
  final String id;

  /// The generated numeric id for the TagKey.
  final String name;

  /// Namespaced name of the TagKey which is in the format `{parentNamespace}/{shortName}`.
  final String namespacedName;
  final String parent;
  final String shortName;

  /// Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String updateTime;

  /// Creates a new [GetTagKeyResult].
  /// [allowedValuesRegex] Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  /// [createTime] Creation time.
  /// [description] Required.
  /// [id] an identifier for the resource with format `tagKeys/{{name}}`
  /// [name] The generated numeric id for the TagKey.
  /// [namespacedName] Namespaced name of the TagKey which is in the format `{parentNamespace}/{shortName}`.
  /// [parent] Required.
  /// [shortName] Required.
  /// [updateTime] Update time.
  GetTagKeyResult({
    required this.allowedValuesRegex,
    required this.createTime,
    required this.description,
    required this.id,
    required this.name,
    required this.namespacedName,
    required this.parent,
    required this.shortName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedValuesRegex'] = allowedValuesRegex;
    map['createTime'] = createTime;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['namespacedName'] = namespacedName;
    map['parent'] = parent;
    map['shortName'] = shortName;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTagKeyResult.fromMap(Map<String, dynamic> map) {
    return GetTagKeyResult(
      allowedValuesRegex: map['allowedValuesRegex'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namespacedName: map['namespacedName'] as String,
      parent: map['parent'] as String,
      shortName: map['shortName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
