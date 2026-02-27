// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EntryGroup.
class EntryGroupDatacatalogV1beta1Args {
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. Default value is an empty string.
  final pulumi.Input<String>? description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  final pulumi.Input<String>? displayName;

  /// Required. The id of the entry group to create. The id must begin with a letter or underscore, contain only English letters, numbers and underscores, and be at most 64 characters.
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String>? location;

  /// The resource name of the entry group in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id} Note that this EntryGroup and its child resources may not actually be stored in the location in this name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  EntryGroupDatacatalogV1beta1Args({
    this.description,
    this.displayName,
    required this.entryGroupId,
    this.location,
    this.name,
    this.project,
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

  factory EntryGroupDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EntryGroupDatacatalogV1beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      entryGroupId: pulumi.Input.asInput<String>(map['entryGroupId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
