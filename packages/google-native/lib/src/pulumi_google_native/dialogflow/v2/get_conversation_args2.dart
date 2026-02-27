// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConversation.
class GetConversationArgs2 {
  final Input<String> conversationId;
  final Input<String> location;
  final Input<String>? project;

  GetConversationArgs2({
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

  factory GetConversationArgs2.fromMap(Map<String, dynamic> map) {
    return GetConversationArgs2(
      conversationId: Input.asInput<String>(map['conversationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
