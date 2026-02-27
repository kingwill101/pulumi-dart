// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getParticipant.
class GetParticipantDialogflowV2beta1Args {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> participantId;
  final pulumi.Input<String>? project;

  GetParticipantDialogflowV2beta1Args({
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

  factory GetParticipantDialogflowV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetParticipantDialogflowV2beta1Args(
      conversationId: pulumi.Input.asInput<String>(map['conversationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      participantId: pulumi.Input.asInput<String>(map['participantId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
