// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_state.dart';
import 'google_cloud_discoveryengine_v1alpha_conversation_message.dart';

/// The set of arguments for Conversation.
class ConversationDiscoveryengineV1alphaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String>? location;

  /// Conversation messages.
  final pulumi
      .Input<List<GoogleCloudDiscoveryengineV1alphaConversationMessage>>?
      messages;

  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The state of the Conversation.
  final pulumi.Input<ConversationState>? state;

  /// A unique identifier for tracking users.
  final pulumi.Input<String>? userPseudoId;

  ConversationDiscoveryengineV1alphaArgs({
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
      map['messages'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDiscoveryengineV1alphaConversationMessage>,
              List<Map<String, dynamic>>>(
          messagesValue,
          (value) => pulumi.Input.encodeList<
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
      map['state'] =
          pulumi.Input.mapOptionalInputValue<ConversationState, String>(
              stateValue, (value) => value.value);
    }
    final userPseudoIdValue = userPseudoId;
    if (userPseudoIdValue != null) {
      map['userPseudoId'] = userPseudoIdValue;
    }
    return map;
  }

  factory ConversationDiscoveryengineV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return ConversationDiscoveryengineV1alphaArgs(
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      messages: pulumi.Input.asOptionalInput<
              List<GoogleCloudDiscoveryengineV1alphaConversationMessage>>(
          map['messages']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      state: pulumi.Input.asOptionalInput<ConversationState>(map['state']),
      userPseudoId: pulumi.Input.asOptionalInput<String>(map['userPseudoId']),
    );
  }
}
