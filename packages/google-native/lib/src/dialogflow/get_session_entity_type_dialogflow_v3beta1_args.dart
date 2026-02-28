// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_session_entity_type_dialogflow_v3beta1_args_doc}
/// Arguments for getSessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_session_entity_type_dialogflow_v3beta1_args_doc}
class GetSessionEntityTypeDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  /// Creates a new [GetSessionEntityTypeDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [entityTypeId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  GetSessionEntityTypeDialogflowV3beta1Args({
    required String agentId,
    required String entityTypeId,
    required String environmentId,
    required String location,
    String? project,
    required String sessionId,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sessionId = pulumi.Input.asInput<String>(sessionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['entityTypeId'] = entityTypeId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    return map;
  }

  factory GetSessionEntityTypeDialogflowV3beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetSessionEntityTypeDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      entityTypeId: map['entityTypeId'] as String,
      environmentId: map['environmentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sessionId: map['sessionId'] as String,
    );
  }
}
