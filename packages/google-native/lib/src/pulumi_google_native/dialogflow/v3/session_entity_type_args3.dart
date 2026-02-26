// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode3.dart';

/// The set of arguments for SessionEntityType.
class SessionEntityTypeArgs3 {
  final Input<String> agentId;

  /// The collection of entities to override or supplement the custom entity type.
  final Input<List<GoogleCloudDialogflowCxV3EntityTypeEntity>> entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final Input<SessionEntityTypeEntityOverrideMode3> entityOverrideMode;
  final Input<String> environmentId;
  final Input<String>? location;

  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> sessionId;

  SessionEntityTypeArgs3({
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
    map['entities'] = Input.mapInputValue<
            List<GoogleCloudDialogflowCxV3EntityTypeEntity>,
            List<Map<String, dynamic>>>(
        entities,
        (value) => Input.encodeList<GoogleCloudDialogflowCxV3EntityTypeEntity,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['entityOverrideMode'] =
        Input.mapInputValue<SessionEntityTypeEntityOverrideMode3, String>(
            entityOverrideMode, (value) => value.value);
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

  factory SessionEntityTypeArgs3.fromMap(Map<String, dynamic> map) {
    return SessionEntityTypeArgs3(
      agentId: Input.asInput<String>(map['agentId']),
      entities: Input.asInput<List<GoogleCloudDialogflowCxV3EntityTypeEntity>>(
          map['entities']),
      entityOverrideMode: Input.asInput<SessionEntityTypeEntityOverrideMode3>(
          map['entityOverrideMode']),
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionId: Input.asInput<String>(map['sessionId']),
    );
  }
}
