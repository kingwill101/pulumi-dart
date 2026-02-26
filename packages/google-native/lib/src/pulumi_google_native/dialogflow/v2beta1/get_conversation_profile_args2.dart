// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConversationProfile.
class GetConversationProfileArgs2 {
  final Input<String> conversationProfileId;
  final Input<String> location;
  final Input<String>? project;

  GetConversationProfileArgs2({
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

  factory GetConversationProfileArgs2.fromMap(Map<String, dynamic> map) {
    return GetConversationProfileArgs2(
      conversationProfileId:
          Input.asInput<String>(map['conversationProfileId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
