// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConversationModel.
class GetConversationModelArgs {
  final Input<String> conversationModelId;
  final Input<String> location;
  final Input<String>? project;

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
      conversationModelId: Input.asInput<String>(map['conversationModelId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
