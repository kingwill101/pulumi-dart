// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EntryGroup.
class EntryGroupArgs {
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  final pulumi.Input<String>? description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011".
  final pulumi.Input<String>? displayName;

  /// The id of the entry group to create. The id must begin with a letter or underscore,
  /// contain only English letters, numbers and underscores, and be at most 64 characters.
  final pulumi.Input<String> entryGroupId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// EntryGroup location region.
  final pulumi.Input<String>? region;

  EntryGroupArgs({
    this.description,
    this.displayName,
    required this.entryGroupId,
    this.project,
    this.region,
  });

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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EntryGroupArgs.fromMap(Map<String, dynamic> map) {
    return EntryGroupArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      entryGroupId: pulumi.Input.asInput<String>(map['entryGroupId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
