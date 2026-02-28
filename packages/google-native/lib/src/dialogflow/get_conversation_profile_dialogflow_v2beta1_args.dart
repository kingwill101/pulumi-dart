// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_conversation_profile_dialogflow_v2beta1_args_doc}
/// Arguments for getConversationProfile.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_conversation_profile_dialogflow_v2beta1_args_doc}
class GetConversationProfileDialogflowV2beta1Args {
  final pulumi.Input<String> conversationProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationProfileDialogflowV2beta1Args].
  /// [conversationProfileId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationProfileDialogflowV2beta1Args({
    required String conversationProfileId,
    required String location,
    String? project,
  }) :
      conversationProfileId = pulumi.Input.asInput<String>(conversationProfileId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationProfileId': conversationProfileId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversationProfileDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConversationProfileDialogflowV2beta1Args(
      conversationProfileId: map['conversationProfileId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

