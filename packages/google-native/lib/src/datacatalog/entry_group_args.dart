// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_entry_group_args_doc}
/// The set of arguments for EntryGroup.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_entry_group_args_doc}
class EntryGroupArgs {
  /// Entry group description. Can consist of several sentences or paragraphs that describe the entry group contents. Default value is an empty string.
  final pulumi.Input<String>? description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  final pulumi.Input<String>? displayName;

  /// Required. The ID of the entry group to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String>? location;

  /// The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [EntryGroupArgs].
  /// [description] Entry group description. Can consist of several sentences or paragraphs that describe the entry group contents. Default value is an empty string.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  /// [entryGroupId] Required. The ID of the entry group to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
  /// [location] Optional.
  /// [name] The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.
  /// [project] Optional.
  EntryGroupArgs({
    String? description,
    String? displayName,
    required String entryGroupId,
    String? location,
    String? name,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['entryGroupId'] = entryGroupId;
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
    return map;
  }

  factory EntryGroupArgs.fromMap(Map<String, dynamic> map) {
    return EntryGroupArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      entryGroupId: map['entryGroupId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
