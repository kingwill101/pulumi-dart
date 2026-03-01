// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappcheck_v1beta_get_debug_token_firebaseappcheck_v1beta_args_doc}
/// Arguments for getDebugToken.
/// {@endtemplate}
/// {@macro pulumi_firebaseappcheck_v1beta_get_debug_token_firebaseappcheck_v1beta_args_doc}
class GetDebugTokenFirebaseappcheckV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> debugTokenId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDebugTokenFirebaseappcheckV1betaArgs].
  /// [appId] Required.
  /// [debugTokenId] Required.
  /// [project] Optional.
  GetDebugTokenFirebaseappcheckV1betaArgs({
    required String appId,
    required String debugTokenId,
    String? project,
  }) : appId = pulumi.Input.asInput<String>(appId),
       debugTokenId = pulumi.Input.asInput<String>(debugTokenId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'debugTokenId': debugTokenId,
      'project': ?project,
    };
  }

  factory GetDebugTokenFirebaseappcheckV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDebugTokenFirebaseappcheckV1betaArgs(
      appId: map['appId'] as String,
      debugTokenId: map['debugTokenId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
