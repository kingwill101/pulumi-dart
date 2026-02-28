// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity.dart';
import 'session_entity_type_entity_override_mode_dialogflow_v3beta1.dart';

/// {@template pulumi_dialogflow_v3beta1_session_entity_type_dialogflow_v3beta1_args_doc}
/// The set of arguments for SessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_session_entity_type_dialogflow_v3beta1_args_doc}
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

  /// Creates a new [SessionEntityTypeDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [entities] The collection of entities to override or supplement the custom entity type.
  /// [entityOverrideMode] Indicates whether the additional data should override or supplement the custom entity type definition.
  /// [environmentId] Required.
  /// [location] Optional.
  /// [name] The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  /// [project] Optional.
  /// [sessionId] Required.
  SessionEntityTypeDialogflowV3beta1Args({
    required String agentId,
    required List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity> entities,
    required SessionEntityTypeEntityOverrideModeDialogflowV3beta1
        entityOverrideMode,
    required String environmentId,
    String? location,
    String? name,
    String? project,
    required String sessionId,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        entities = pulumi.Input.asInput<
            List<GoogleCloudDialogflowCxV3beta1EntityTypeEntity>>(entities),
        entityOverrideMode = pulumi.Input.asInput<
                SessionEntityTypeEntityOverrideModeDialogflowV3beta1>(
            entityOverrideMode),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        sessionId = pulumi.Input.asInput<String>(sessionId);

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
      agentId: map['agentId'] as String,
      entities: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3beta1EntityTypeEntity>(
          map['entities'],
          (value) => GoogleCloudDialogflowCxV3beta1EntityTypeEntity.fromMap(
              (value as Map).cast<String, dynamic>())),
      entityOverrideMode:
          SessionEntityTypeEntityOverrideModeDialogflowV3beta1.fromValue(
              map['entityOverrideMode'] as String),
      environmentId: map['environmentId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sessionId: map['sessionId'] as String,
    );
  }
}
