// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_state_discoveryengine_v1beta.dart';
import 'google_cloud_discoveryengine_v1beta_conversation_message.dart';

/// The set of arguments for Conversation.
class ConversationDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String>? location;

  /// Conversation messages.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1betaConversationMessage>>?
      messages;

  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The state of the Conversation.
  final pulumi.Input<ConversationStateDiscoveryengineV1beta>? state;

  /// A unique identifier for tracking users.
  final pulumi.Input<String>? userPseudoId;

  ConversationDiscoveryengineV1betaArgs({
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
              List<GoogleCloudDiscoveryengineV1betaConversationMessage>,
              List<Map<String, dynamic>>>(
          messagesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDiscoveryengineV1betaConversationMessage,
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
      map['state'] = pulumi.Input.mapOptionalInputValue<
          ConversationStateDiscoveryengineV1beta,
          String>(stateValue, (value) => value.value);
    }
    final userPseudoIdValue = userPseudoId;
    if (userPseudoIdValue != null) {
      map['userPseudoId'] = userPseudoIdValue;
    }
    return map;
  }

  factory ConversationDiscoveryengineV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return ConversationDiscoveryengineV1betaArgs(
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      messages: pulumi.Input.asOptionalInput<
              List<GoogleCloudDiscoveryengineV1betaConversationMessage>>(
          map['messages']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      state:
          pulumi.Input.asOptionalInput<ConversationStateDiscoveryengineV1beta>(
              map['state']),
      userPseudoId: pulumi.Input.asOptionalInput<String>(map['userPseudoId']),
    );
  }
}
