// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTagTemplate.
class GetTagTemplateResult {
  /// Display name for this template. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.
  final String displayName;

  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. The map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. The IDs have the following limitations: * Can contain uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1 character and at most 64 characters long. * Must start with a letter or underscore.
  final Map<String, String> fields;

  /// Indicates whether tags created with this template are public. Public tags do not require tag template access to appear in ListTags API response. Additionally, you can search for a public tag by value with a simple search query in addition to using a ``tag:`` predicate.
  final bool isPubliclyReadable;

  /// The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.
  final String name;

  GetTagTemplateResult({
    required this.displayName,
    required this.fields,
    required this.isPubliclyReadable,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['fields'] = fields;
    map['isPubliclyReadable'] = isPubliclyReadable;
    map['name'] = name;
    return map;
  }

  factory GetTagTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetTagTemplateResult(
      displayName: map['displayName'] as String,
      fields: (map['fields'] as Map).cast<String, String>(),
      isPubliclyReadable: map['isPubliclyReadable'] as bool,
      name: map['name'] as String,
    );
  }
}
