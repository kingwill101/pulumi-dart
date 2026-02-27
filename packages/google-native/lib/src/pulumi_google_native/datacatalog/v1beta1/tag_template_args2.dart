// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for TagTemplate.
class TagTemplateArgs2 {
  /// The display name for this template. Defaults to an empty string.
  final Input<String>? displayName;

  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  final Input<Map<String, String>> fields;
  final Input<String>? location;

  /// The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  final Input<String>? name;
  final Input<String>? project;

  /// Required. The id of the tag template to create.
  final Input<String> tagTemplateId;

  TagTemplateArgs2({
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

  factory TagTemplateArgs2.fromMap(Map<String, dynamic> map) {
    return TagTemplateArgs2(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      fields: Input.asInput<Map<String, String>>(map['fields']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      tagTemplateId: Input.asInput<String>(map['tagTemplateId']),
    );
  }
}
