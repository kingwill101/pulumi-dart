// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_conversation_dataset_args_doc}
/// Arguments for getConversationDataset.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_conversation_dataset_args_doc}
class GetConversationDatasetArgs {
  final pulumi.Input<String> conversationDatasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationDatasetArgs].
  /// [conversationDatasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationDatasetArgs({
    required String conversationDatasetId,
    required String location,
    String? project,
  })  : conversationDatasetId =
            pulumi.Input.asInput<String>(conversationDatasetId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationDatasetId'] = conversationDatasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConversationDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationDatasetArgs(
      conversationDatasetId: map['conversationDatasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
