// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConversationModel.
class GetConversationModelArgs {
  final pulumi.Input<String> conversationModelId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConversationModelArgs({
    required this.conversationModelId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationModelId'] = conversationModelId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConversationModelArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationModelArgs(
      conversationModelId:
          pulumi.Input.asInput<String>(map['conversationModelId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
