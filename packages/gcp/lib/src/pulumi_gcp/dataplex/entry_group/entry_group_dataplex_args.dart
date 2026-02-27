// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EntryGroup.
class EntryGroupDataplexArgs {
  /// Description of the EntryGroup.
  final pulumi.Input<String>? description;

  /// User friendly display name.
  final pulumi.Input<String>? displayName;

  /// The entry group id of the entry group.
  final pulumi.Input<String>? entryGroupId;

  /// User-defined labels for the EntryGroup.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where entry group will be created in.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  EntryGroupDataplexArgs({
    this.description,
    this.displayName,
    this.entryGroupId,
    this.labels,
    this.location,
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
    final entryGroupIdValue = entryGroupId;
    if (entryGroupIdValue != null) {
      map['entryGroupId'] = entryGroupIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EntryGroupDataplexArgs.fromMap(Map<String, dynamic> map) {
    return EntryGroupDataplexArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      entryGroupId: pulumi.Input.asOptionalInput<String>(map['entryGroupId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
