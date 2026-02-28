// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_conversation_profile_args_doc}
/// Arguments for getConversationProfile.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_conversation_profile_args_doc}
class GetConversationProfileArgs {
  final pulumi.Input<String> conversationProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversationProfileArgs].
  /// [conversationProfileId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversationProfileArgs({
    required String conversationProfileId,
    required String location,
    String? project,
  })  : conversationProfileId =
            pulumi.Input.asInput<String>(conversationProfileId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationProfileId'] = conversationProfileId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConversationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationProfileArgs(
      conversationProfileId: map['conversationProfileId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
