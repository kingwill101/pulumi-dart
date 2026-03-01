// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_conversation_model_args_doc}
/// Arguments for getConversationModel.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_conversation_model_args_doc}
class GetConversationModelArgs {
  final pulumi.Input<String> conversationModelId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationModelArgs].
  /// [conversationModelId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationModelArgs({
    required String conversationModelId,
    required String location,
    String? project,
  }) : conversationModelId = pulumi.Input.asInput<String>(conversationModelId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationModelId': conversationModelId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationModelArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationModelArgs(
      conversationModelId: map['conversationModelId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
