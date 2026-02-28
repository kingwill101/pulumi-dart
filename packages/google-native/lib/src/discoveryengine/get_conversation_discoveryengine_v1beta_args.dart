// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1beta_get_conversation_discoveryengine_v1beta_args_doc}
/// Arguments for getConversation.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_get_conversation_discoveryengine_v1beta_args_doc}
class GetConversationDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationDiscoveryengineV1betaArgs].
  /// [collectionId] Required.
  /// [conversationId] Required.
  /// [dataStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationDiscoveryengineV1betaArgs({
    required String collectionId,
    required String conversationId,
    required String dataStoreId,
    required String location,
    String? project,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      conversationId = pulumi.Input.asInput<String>(conversationId),
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'conversationId': conversationId,
      'dataStoreId': dataStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationDiscoveryengineV1betaArgs(
      collectionId: map['collectionId'] as String,
      conversationId: map['conversationId'] as String,
      dataStoreId: map['dataStoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

