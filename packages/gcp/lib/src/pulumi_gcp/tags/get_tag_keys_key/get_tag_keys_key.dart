// ignore_for_file: unused_element, unnecessary_cast

class GetTagKeysKey {
  /// Regular expression constraint for dynamic tag values, follows RE2 syntax. If present, it implicitly allows dynamic values (constrained by the regex).
  final String allowedValuesRegex;

  /// Creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String createTime;

  /// User-assigned description of the TagKey.
  final String description;

  /// an identifier for the resource with format `tagKeys/{{name}}`
  final String name;

  /// Namespaced name of the TagKey which is in the format `{parentNamespace}/{shortName}`.
  final String namespacedName;

  /// The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  final String parent;

  /// A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines.
  final String purpose;

  /// Purpose data corresponds to the policy system that the tag is intended for. See documentation for Purpose for formatting of this field.
  final Map<String, String> purposeData;

  /// The user friendly name for a TagKey. The short name should be unique for TagKeys wihting the same tag namespace.
  final String shortName;

  /// Update time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String updateTime;

  GetTagKeysKey({
    required this.allowedValuesRegex,
    required this.createTime,
    required this.description,
    required this.name,
    required this.namespacedName,
    required this.parent,
    required this.purpose,
    required this.purposeData,
    required this.shortName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedValuesRegex'] = allowedValuesRegex;
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['namespacedName'] = namespacedName;
    map['parent'] = parent;
    map['purpose'] = purpose;
    map['purposeData'] = purposeData;
    map['shortName'] = shortName;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTagKeysKey.fromMap(Map<String, dynamic> map) {
    return GetTagKeysKey(
      allowedValuesRegex: map['allowedValuesRegex'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      namespacedName: map['namespacedName'] as String,
      parent: map['parent'] as String,
      purpose: map['purpose'] as String,
      purposeData: (map['purposeData'] as Map).cast<String, String>(),
      shortName: map['shortName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
