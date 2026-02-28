// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_participant_args_doc}
/// Arguments for getParticipant.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_participant_args_doc}
class GetParticipantArgs {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> participantId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetParticipantArgs].
  /// [conversationId] Required.
  /// [location] Required.
  /// [participantId] Required.
  /// [project] Optional.
  GetParticipantArgs({
    required String conversationId,
    required String location,
    required String participantId,
    String? project,
  }) :
      conversationId = pulumi.Input.asInput<String>(conversationId),
      location = pulumi.Input.asInput<String>(location),
      participantId = pulumi.Input.asInput<String>(participantId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationId': conversationId,
      'location': location,
      'participantId': participantId,
      'project': ?project,
    };
  }

  factory GetParticipantArgs.fromMap(Map<String, dynamic> map) {
    return GetParticipantArgs(
      conversationId: map['conversationId'] as String,
      location: map['location'] as String,
      participantId: map['participantId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

