// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'conversation_state.dart';
import 'google_cloud_discoveryengine_v1alpha_conversation_message.dart';

/// The set of arguments for Conversation.
class ConversationArgs4 {
  final Input<String> collectionId;
  final Input<String> dataStoreId;
  final Input<String>? location;

  /// Conversation messages.
  final Input<List<GoogleCloudDiscoveryengineV1alphaConversationMessage>>?
      messages;

  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final Input<String>? name;
  final Input<String>? project;

  /// The state of the Conversation.
  final Input<ConversationState>? state;

  /// A unique identifier for tracking users.
  final Input<String>? userPseudoId;

  ConversationArgs4({
    required this.collectionId,
    required this.dataStoreId,
    this.location,
    this.messages,
    this.name,
    this.project,
    this.state,
    this.userPseudoId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['dataStoreId'] = dataStoreId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = Input.mapOptionalInputValue<
              List<GoogleCloudDiscoveryengineV1alphaConversationMessage>,
              List<Map<String, dynamic>>>(
          messagesValue,
          (value) => Input.encodeList<
              GoogleCloudDiscoveryengineV1alphaConversationMessage,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<ConversationState, String>(
          stateValue, (value) => value.value);
    }
    final userPseudoIdValue = userPseudoId;
    if (userPseudoIdValue != null) {
      map['userPseudoId'] = userPseudoIdValue;
    }
    return map;
  }

  factory ConversationArgs4.fromMap(Map<String, dynamic> map) {
    return ConversationArgs4(
      collectionId: Input.asInput<String>(map['collectionId']),
      dataStoreId: Input.asInput<String>(map['dataStoreId']),
      location: Input.asOptionalInput<String>(map['location']),
      messages: Input.asOptionalInput<
              List<GoogleCloudDiscoveryengineV1alphaConversationMessage>>(
          map['messages']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      state: Input.asOptionalInput<ConversationState>(map['state']),
      userPseudoId: Input.asOptionalInput<String>(map['userPseudoId']),
    );
  }
}
