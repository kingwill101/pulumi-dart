// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode_dialogflow_v3beta1.dart';

/// The set of arguments for SessionEntityType.
class SessionEntityTypeDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;

  /// The collection of entities to override or supplement the custom entity type.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>>
      entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final pulumi.Input<SessionEntityTypeEntityOverrideModeDialogflowV3beta1>
      entityOverrideMode;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;

  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;

  SessionEntityTypeDialogflowV3beta1Args({
    required this.agentId,
    required this.entities,
    required this.entityOverrideMode,
    required this.environmentId,
    this.location,
    this.name,
    this.project,
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['entities'] = pulumi.Input.mapInputValue<
            List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>,
            List<Map<String, dynamic>>>(
        entities,
        (value) => pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3beta1EntityTypeEntity,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['entityOverrideMode'] = pulumi.Input.mapInputValue<
        SessionEntityTypeEntityOverrideModeDialogflowV3beta1,
        String>(entityOverrideMode, (value) => value.value);
    map['environmentId'] = environmentId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    return map;
  }

  factory SessionEntityTypeDialogflowV3beta1Args.fromMap(
      Map<String, dynamic> map) {
    return SessionEntityTypeDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      entities: pulumi.Input.asInput<
              List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>>(
          map['entities']),
      entityOverrideMode: pulumi.Input.asInput<
              SessionEntityTypeEntityOverrideModeDialogflowV3beta1>(
          map['entityOverrideMode']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionId: pulumi.Input.asInput<String>(map['sessionId']),
    );
  }
}
