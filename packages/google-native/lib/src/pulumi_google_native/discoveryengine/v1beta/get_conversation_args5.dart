// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConversation.
class GetConversationArgs5 {
  final Input<String> collectionId;
  final Input<String> conversationId;
  final Input<String> dataStoreId;
  final Input<String> location;
  final Input<String>? project;

  GetConversationArgs5({
    required this.collectionId,
    required this.conversationId,
    required this.dataStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['conversationId'] = conversationId;
    map['dataStoreId'] = dataStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConversationArgs5.fromMap(Map<String, dynamic> map) {
    return GetConversationArgs5(
      collectionId: Input.asInput<String>(map['collectionId']),
      conversationId: Input.asInput<String>(map['conversationId']),
      dataStoreId: Input.asInput<String>(map['dataStoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
