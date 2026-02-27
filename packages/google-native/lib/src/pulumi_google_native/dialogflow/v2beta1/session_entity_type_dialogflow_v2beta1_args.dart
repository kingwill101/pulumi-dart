// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode_dialogflow_v2beta1.dart';

/// The set of arguments for SessionEntityType.
class SessionEntityTypeDialogflowV2beta1Args {
  /// The collection of entities associated with this session entity type.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1EntityTypeEntity>>
      entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final pulumi.Input<SessionEntityTypeEntityOverrideModeDialogflowV2beta1>
      entityOverrideMode;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;

  /// The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  SessionEntityTypeDialogflowV2beta1Args({
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
    map['entities'] = pulumi.Input.mapInputValue<
            List<GoogleCloudDialogflowV2beta1EntityTypeEntity>,
            List<Map<String, dynamic>>>(
        entities,
        (value) => pulumi.Input.encodeList<
            GoogleCloudDialogflowV2beta1EntityTypeEntity,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['entityOverrideMode'] = pulumi.Input.mapInputValue<
        SessionEntityTypeEntityOverrideModeDialogflowV2beta1,
        String>(entityOverrideMode, (value) => value.value);
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

  factory SessionEntityTypeDialogflowV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return SessionEntityTypeDialogflowV2beta1Args(
      entities: pulumi.Input.asInput<
          List<GoogleCloudDialogflowV2beta1EntityTypeEntity>>(map['entities']),
      entityOverrideMode: pulumi.Input.asInput<
              SessionEntityTypeEntityOverrideModeDialogflowV2beta1>(
          map['entityOverrideMode']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionId: pulumi.Input.asInput<String>(map['sessionId']),
      userId: pulumi.Input.asInput<String>(map['userId']),
    );
  }
}
