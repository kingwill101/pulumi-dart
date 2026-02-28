// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_state_discoveryengine_v1beta.dart';
import 'google_cloud_discoveryengine_v1beta_conversation_message.dart';

/// {@template pulumi_discoveryengine_v1beta_conversation_discoveryengine_v1beta_args_doc}
/// The set of arguments for Conversation.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_conversation_discoveryengine_v1beta_args_doc}
class ConversationDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String>? location;
  /// Conversation messages.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1betaConversationMessage>>? messages;
  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The state of the Conversation.
  final pulumi.Input<ConversationStateDiscoveryengineV1beta>? state;
  /// A unique identifier for tracking users.
  final pulumi.Input<String>? userPseudoId;

  /// Creates a new [ConversationDiscoveryengineV1betaArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [location] Optional.
  /// [messages] Conversation messages.
  /// [name] Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  /// [project] Optional.
  /// [state] The state of the Conversation.
  /// [userPseudoId] A unique identifier for tracking users.
  ConversationDiscoveryengineV1betaArgs({
    required String collectionId,
    required String dataStoreId,
    String? location,
    List<GoogleCloudDiscoveryengineV1betaConversationMessage>? messages,
    String? name,
    String? project,
    ConversationStateDiscoveryengineV1beta? state,
    String? userPseudoId,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      location = pulumi.Input.asOptionalInput<String>(location),
      messages = pulumi.Input.asOptionalInput<List<GoogleCloudDiscoveryengineV1betaConversationMessage>>(messages),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<ConversationStateDiscoveryengineV1beta>(state),
      userPseudoId = pulumi.Input.asOptionalInput<String>(userPseudoId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'location': ?location,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDiscoveryengineV1betaConversationMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1betaConversationMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'state': ?pulumi.Input.mapOptionalInputValue<ConversationStateDiscoveryengineV1beta, String>(state, (value) => value.value),
      'userPseudoId': ?userPseudoId,
    };
  }

  factory ConversationDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ConversationDiscoveryengineV1betaArgs(
      collectionId: map['collectionId'] as String,
      dataStoreId: map['dataStoreId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      messages: map['messages'] == null ? null : pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1betaConversationMessage>(map['messages'], (value) => GoogleCloudDiscoveryengineV1betaConversationMessage.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] == null ? null : ConversationStateDiscoveryengineV1beta.fromValue(map['state'] as String),
      userPseudoId: map['userPseudoId'] == null ? null : map['userPseudoId'] as String,
    );
  }
}

