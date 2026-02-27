// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConversationProfile.
class GetConversationProfileDialogflowV2beta1Args {
  final pulumi.Input<String> conversationProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConversationProfileDialogflowV2beta1Args({
    required this.conversationProfileId,
    required this.location,
    this.project,
  });

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

  factory GetConversationProfileDialogflowV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConversationProfileDialogflowV2beta1Args(
      conversationProfileId:
          pulumi.Input.asInput<String>(map['conversationProfileId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
