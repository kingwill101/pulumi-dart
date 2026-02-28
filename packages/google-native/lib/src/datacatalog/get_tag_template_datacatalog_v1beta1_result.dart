// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTagTemplate.
class GetTagTemplateDatacatalogV1beta1Result {
  /// The display name for this template. Defaults to an empty string.
  final String displayName;

  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  final Map<String, String> fields;

  /// The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  final String name;

  /// Creates a new [GetTagTemplateDatacatalogV1beta1Result].
  /// [displayName] The display name for this template. Defaults to an empty string.
  /// [fields] Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  /// [name] The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  GetTagTemplateDatacatalogV1beta1Result({
    required this.displayName,
    required this.fields,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['fields'] = fields;
    map['name'] = name;
    return map;
  }

  factory GetTagTemplateDatacatalogV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetTagTemplateDatacatalogV1beta1Result(
      displayName: map['displayName'] as String,
      fields: (map['fields'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
