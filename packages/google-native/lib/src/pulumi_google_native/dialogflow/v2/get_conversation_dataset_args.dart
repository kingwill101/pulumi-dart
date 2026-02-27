// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConversationDataset.
class GetConversationDatasetArgs {
  final Input<String> conversationDatasetId;
  final Input<String> location;
  final Input<String>? project;

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
          Input.asInput<String>(map['conversationDatasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
