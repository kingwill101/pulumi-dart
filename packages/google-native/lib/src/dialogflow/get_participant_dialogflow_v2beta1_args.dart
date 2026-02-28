// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_participant_dialogflow_v2beta1_args_doc}
/// Arguments for getParticipant.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_participant_dialogflow_v2beta1_args_doc}
class GetParticipantDialogflowV2beta1Args {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> participantId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetParticipantDialogflowV2beta1Args].
  /// [conversationId] Required.
  /// [location] Required.
  /// [participantId] Required.
  /// [project] Optional.
  GetParticipantDialogflowV2beta1Args({
    required String conversationId,
    required String location,
    required String participantId,
    String? project,
  })  : conversationId = pulumi.Input.asInput<String>(conversationId),
        location = pulumi.Input.asInput<String>(location),
        participantId = pulumi.Input.asInput<String>(participantId),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      conversationId: map['conversationId'] as String,
      location: map['location'] as String,
      participantId: map['participantId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
