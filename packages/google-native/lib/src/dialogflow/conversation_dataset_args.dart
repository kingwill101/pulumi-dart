// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_conversation_dataset_args_doc}
/// The set of arguments for ConversationDataset.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_conversation_dataset_args_doc}
class ConversationDatasetArgs {
  /// Optional. The description of the dataset. Maximum of 10000 bytes.
  final pulumi.Input<String>? description;

  /// The display name of the dataset. Maximum of 64 bytes.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [ConversationDatasetArgs].
  /// [description] Optional. The description of the dataset. Maximum of 10000 bytes.
  /// [displayName] The display name of the dataset. Maximum of 64 bytes.
  /// [location] Optional.
  /// [project] Optional.
  ConversationDatasetArgs({
    String? description,
    required String displayName,
    String? location,
    String? project,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
