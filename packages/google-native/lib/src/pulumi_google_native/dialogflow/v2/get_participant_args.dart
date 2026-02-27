// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getParticipant.
class GetParticipantArgs {
  final Input<String> conversationId;
  final Input<String> location;
  final Input<String> participantId;
  final Input<String>? project;

  GetParticipantArgs({
    required this.conversationId,
    required this.location,
    required this.participantId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationId'] = conversationId;
    map['location'] = location;
    map['participantId'] = participantId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetParticipantArgs.fromMap(Map<String, dynamic> map) {
    return GetParticipantArgs(
      conversationId: Input.asInput<String>(map['conversationId']),
      location: Input.asInput<String>(map['location']),
      participantId: Input.asInput<String>(map['participantId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
