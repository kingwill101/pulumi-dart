// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_session_entity_type_args_doc}
/// Arguments for getSessionEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_session_entity_type_args_doc}
class GetSessionEntityTypeArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetSessionEntityTypeArgs].
  /// [entityTypeId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  GetSessionEntityTypeArgs({
    required String entityTypeId,
    required String environmentId,
    required String location,
    String? project,
    required String sessionId,
    required String userId,
  })  : entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sessionId = pulumi.Input.asInput<String>(sessionId),
        userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    map['userId'] = userId;
    return map;
  }

  factory GetSessionEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeArgs(
      entityTypeId: map['entityTypeId'] as String,
      environmentId: map['environmentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sessionId: map['sessionId'] as String,
      userId: map['userId'] as String,
    );
  }
}
