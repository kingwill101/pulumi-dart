// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_debug_session_args_doc}
/// Arguments for getDebugSession.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_debug_session_args_doc}
class GetDebugSessionArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> debugsessionId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> revisionId;

  /// Creates a new [GetDebugSessionArgs].
  /// [apiId] Required.
  /// [debugsessionId] Required.
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [revisionId] Required.
  GetDebugSessionArgs({
    required String apiId,
    required String debugsessionId,
    required String environmentId,
    required String organizationId,
    required String revisionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      debugsessionId = pulumi.Input.asInput<String>(debugsessionId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      revisionId = pulumi.Input.asInput<String>(revisionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'debugsessionId': debugsessionId,
      'environmentId': environmentId,
      'organizationId': organizationId,
      'revisionId': revisionId,
    };
  }

  factory GetDebugSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetDebugSessionArgs(
      apiId: map['apiId'] as String,
      debugsessionId: map['debugsessionId'] as String,
      environmentId: map['environmentId'] as String,
      organizationId: map['organizationId'] as String,
      revisionId: map['revisionId'] as String,
    );
  }
}

