// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode_dialogflow_v2beta1.dart';

/// {@template pulumi_dialogflow_v2beta1_session_entity_type_dialogflow_v2beta1_args_doc}
/// The set of arguments for SessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_session_entity_type_dialogflow_v2beta1_args_doc}
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

  /// Creates a new [SessionEntityTypeDialogflowV2beta1Args].
  /// [entities] The collection of entities associated with this session entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [environmentId] Required.
  /// [location] Optional.
  /// [name] The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  SessionEntityTypeDialogflowV2beta1Args({
    required List<GoogleCloudDialogflowV2beta1EntityTypeEntity> entities,
    required SessionEntityTypeEntityOverrideModeDialogflowV2beta1
    entityOverrideMode,
    required String environmentId,
    String? location,
    required String name,
    String? project,
    required String sessionId,
    required String userId,
  }) : entities =
           pulumi.Input.asInput<
             List<GoogleCloudDialogflowV2beta1EntityTypeEntity>
           >(entities),
       entityOverrideMode =
           pulumi.Input.asInput<
             SessionEntityTypeEntityOverrideModeDialogflowV2beta1
           >(entityOverrideMode),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       sessionId = pulumi.Input.asInput<String>(sessionId),
       userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities':
          pulumi.Input.mapInputValue<
            List<GoogleCloudDialogflowV2beta1EntityTypeEntity>,
            List<Map<String, dynamic>>
          >(
            entities,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1EntityTypeEntity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'entityOverrideMode':
          pulumi.Input.mapInputValue<
            SessionEntityTypeEntityOverrideModeDialogflowV2beta1,
            String
          >(entityOverrideMode, (value) => value.value),
      'environmentId': environmentId,
      'location': ?location,
      'name': name,
      'project': ?project,
      'sessionId': sessionId,
      'userId': userId,
    };
  }

  factory SessionEntityTypeDialogflowV2beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return SessionEntityTypeDialogflowV2beta1Args(
      entities:
          pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1EntityTypeEntity>(
            map['entities'],
            (value) => GoogleCloudDialogflowV2beta1EntityTypeEntity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      entityOverrideMode:
          SessionEntityTypeEntityOverrideModeDialogflowV2beta1.fromValue(
            map['entityOverrideMode'] as String,
          ),
      environmentId: map['environmentId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sessionId: map['sessionId'] as String,
      userId: map['userId'] as String,
    );
  }
}
