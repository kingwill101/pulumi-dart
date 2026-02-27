// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for TagTemplate.
class TagTemplateArgs {
  /// Display name for this template. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.
  final Input<String>? displayName;

  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. The map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. The IDs have the following limitations: * Can contain uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1 character and at most 64 characters long. * Must start with a letter or underscore.
  final Input<Map<String, String>> fields;

  /// Indicates whether tags created with this template are public. Public tags do not require tag template access to appear in ListTags API response. Additionally, you can search for a public tag by value with a simple search query in addition to using a ``tag:`` predicate.
  final Input<bool>? isPubliclyReadable;
  final Input<String>? location;

  /// The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.
  final Input<String>? name;
  final Input<String>? project;

  /// Required. The ID of the tag template to create. The ID must contain only lowercase letters (a-z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
  final Input<String> tagTemplateId;

  TagTemplateArgs({
    this.displayName,
    required this.fields,
    this.isPubliclyReadable,
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
    final isPubliclyReadableValue = isPubliclyReadable;
    if (isPubliclyReadableValue != null) {
      map['isPubliclyReadable'] = isPubliclyReadableValue;
    }
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

  factory TagTemplateArgs.fromMap(Map<String, dynamic> map) {
    return TagTemplateArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      fields: Input.asInput<Map<String, String>>(map['fields']),
      isPubliclyReadable:
          Input.asOptionalInput<bool>(map['isPubliclyReadable']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      tagTemplateId: Input.asInput<String>(map['tagTemplateId']),
    );
  }
}
