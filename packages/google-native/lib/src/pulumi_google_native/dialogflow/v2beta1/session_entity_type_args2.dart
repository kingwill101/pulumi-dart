// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode2.dart';

/// The set of arguments for SessionEntityType.
class SessionEntityTypeArgs2 {
  /// The collection of entities associated with this session entity type.
  final Input<List<GoogleCloudDialogflowV2beta1EntityTypeEntity>> entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final Input<SessionEntityTypeEntityOverrideMode2> entityOverrideMode;
  final Input<String> environmentId;
  final Input<String>? location;

  /// The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  final Input<String> name;
  final Input<String>? project;
  final Input<String> sessionId;
  final Input<String> userId;

  SessionEntityTypeArgs2({
    required this.entities,
    required this.entityOverrideMode,
    required this.environmentId,
    this.location,
    required this.name,
    this.project,
    required this.sessionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entities'] = Input.mapInputValue<
            List<GoogleCloudDialogflowV2beta1EntityTypeEntity>,
            List<Map<String, dynamic>>>(
        entities,
        (value) => Input.encodeList<
            GoogleCloudDialogflowV2beta1EntityTypeEntity,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['entityOverrideMode'] =
        Input.mapInputValue<SessionEntityTypeEntityOverrideMode2, String>(
            entityOverrideMode, (value) => value.value);
    map['environmentId'] = environmentId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    map['userId'] = userId;
    return map;
  }

  factory SessionEntityTypeArgs2.fromMap(Map<String, dynamic> map) {
    return SessionEntityTypeArgs2(
      entities:
          Input.asInput<List<GoogleCloudDialogflowV2beta1EntityTypeEntity>>(
              map['entities']),
      entityOverrideMode: Input.asInput<SessionEntityTypeEntityOverrideMode2>(
          map['entityOverrideMode']),
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionId: Input.asInput<String>(map['sessionId']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
