// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConversation.
class GetConversationDiscoveryengineV1alphaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConversationDiscoveryengineV1alphaArgs({
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

  factory GetConversationDiscoveryengineV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetConversationDiscoveryengineV1alphaArgs(
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      conversationId: pulumi.Input.asInput<String>(map['conversationId']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
