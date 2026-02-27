// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConversationDataset.
class GetConversationDatasetArgs {
  final pulumi.Input<String> conversationDatasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConversationDatasetArgs({
    required this.conversationDatasetId,
    required this.location,
    this.project,
  });

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
      conversationDatasetId:
          pulumi.Input.asInput<String>(map['conversationDatasetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
