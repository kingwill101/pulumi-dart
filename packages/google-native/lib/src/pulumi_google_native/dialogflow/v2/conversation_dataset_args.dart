// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for ConversationDataset.
class ConversationDatasetArgs {
  /// Optional. The description of the dataset. Maximum of 10000 bytes.
  final Input<String>? description;

  /// The display name of the dataset. Maximum of 64 bytes.
  final Input<String> displayName;
  final Input<String>? location;
  final Input<String>? project;

  ConversationDatasetArgs({
    this.description,
    required this.displayName,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
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

  factory ConversationDatasetArgs.fromMap(Map<String, dynamic> map) {
    return ConversationDatasetArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
