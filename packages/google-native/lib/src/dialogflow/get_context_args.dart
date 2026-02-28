// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_context_args_doc}
/// Arguments for getContext.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_context_args_doc}
class GetContextArgs {
  final pulumi.Input<String> contextId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetContextArgs].
  /// [contextId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  GetContextArgs({
    required String contextId,
    required String environmentId,
    required String location,
    String? project,
    required String sessionId,
    required String userId,
  })  : contextId = pulumi.Input.asInput<String>(contextId),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sessionId = pulumi.Input.asInput<String>(sessionId),
        userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contextId'] = contextId;
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

  factory GetContextArgs.fromMap(Map<String, dynamic> map) {
    return GetContextArgs(
      contextId: map['contextId'] as String,
      environmentId: map['environmentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sessionId: map['sessionId'] as String,
      userId: map['userId'] as String,
    );
  }
}
