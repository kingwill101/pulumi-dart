// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConversation.
class GetConversationDialogflowV2beta1Args {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConversationDialogflowV2beta1Args({
    required this.conversationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationId'] = conversationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConversationDialogflowV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConversationDialogflowV2beta1Args(
      conversationId: pulumi.Input.asInput<String>(map['conversationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
