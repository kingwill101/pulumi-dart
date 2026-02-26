// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPolicyTag.
class GetPolicyTagResult {
  /// Resource names of child policy tags of this policy tag.
  final List<String> childPolicyTags;

  /// Description of this policy tag. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  final String description;

  /// User-defined name of this policy tag. The name can't start or end with spaces and must be unique within the parent taxonomy, contain only Unicode letters, numbers, underscores, dashes and spaces, and be at most 200 bytes long when encoded in UTF-8.
  final String displayName;

  /// Resource name of this policy tag in the URL format. The policy tag manager generates unique taxonomy IDs and policy tag IDs.
  final String name;

  /// Resource name of this policy tag's parent policy tag. If empty, this is a top level tag. If not set, defaults to an empty string. For example, for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag, and, for "Geolocation", this field is empty.
  final String parentPolicyTag;

  GetPolicyTagResult({
    required this.childPolicyTags,
    required this.description,
    required this.displayName,
    required this.name,
    required this.parentPolicyTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['childPolicyTags'] = childPolicyTags;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['parentPolicyTag'] = parentPolicyTag;
    return map;
  }

  factory GetPolicyTagResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyTagResult(
      childPolicyTags: (map['childPolicyTags'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      parentPolicyTag: map['parentPolicyTag'] as String,
    );
  }
}
