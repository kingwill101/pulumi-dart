// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyTag.
class GetPolicyTagDatacatalogV1beta1Result {
  /// Resource names of child policy tags of this policy tag.
  final List<String> childPolicyTags;
  /// Description of this policy tag. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description. If not set, defaults to an empty description.
  final String description;
  /// User defined name of this policy tag. It must: be unique within the parent taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  final String displayName;
  /// Resource name of this policy tag, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{id}".
  final String name;
  /// Resource name of this policy tag's parent policy tag (e.g. for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag). If empty, it means this policy tag is a top level policy tag (e.g. this field is empty for the "Geolocation" policy tag in the example above). If not set, defaults to an empty string.
  final String parentPolicyTag;

  /// Creates a new [GetPolicyTagDatacatalogV1beta1Result].
  /// [childPolicyTags] Resource names of child policy tags of this policy tag.
  /// [description] Description of this policy tag. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description. If not set, defaults to an empty description.
  /// [displayName] User defined name of this policy tag. It must: be unique within the parent taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  /// [name] Resource name of this policy tag, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{id}".
  /// [parentPolicyTag] Resource name of this policy tag's parent policy tag (e.g. for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag). If empty, it means this policy tag is a top level policy tag (e.g. this field is empty for the "Geolocation" policy tag in the example above). If not set, defaults to an empty string.
  GetPolicyTagDatacatalogV1beta1Result({
    required this.childPolicyTags,
    required this.description,
    required this.displayName,
    required this.name,
    required this.parentPolicyTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childPolicyTags': childPolicyTags,
      'description': description,
      'displayName': displayName,
      'name': name,
      'parentPolicyTag': parentPolicyTag,
    };
  }

  factory GetPolicyTagDatacatalogV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetPolicyTagDatacatalogV1beta1Result(
      childPolicyTags: (map['childPolicyTags'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      parentPolicyTag: map['parentPolicyTag'] as String,
    );
  }
}

