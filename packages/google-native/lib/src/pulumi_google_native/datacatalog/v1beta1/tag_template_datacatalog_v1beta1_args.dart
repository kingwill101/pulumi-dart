// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TagTemplate.
class TagTemplateDatacatalogV1beta1Args {
  /// The display name for this template. Defaults to an empty string.
  final pulumi.Input<String>? displayName;

  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  final pulumi.Input<Map<String, String>> fields;
  final pulumi.Input<String>? location;

  /// The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. The id of the tag template to create.
  final pulumi.Input<String> tagTemplateId;

  TagTemplateDatacatalogV1beta1Args({
    this.displayName,
    required this.fields,
    this.location,
    this.name,
    this.project,
    required this.tagTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['fields'] = fields;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tagTemplateId'] = tagTemplateId;
    return map;
  }

  factory TagTemplateDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TagTemplateDatacatalogV1beta1Args(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      fields: pulumi.Input.asInput<Map<String, String>>(map['fields']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tagTemplateId: pulumi.Input.asInput<String>(map['tagTemplateId']),
    );
  }
}
