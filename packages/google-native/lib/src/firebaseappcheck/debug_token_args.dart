// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappcheck_v1_debug_token_args_doc}
/// The set of arguments for DebugToken.
/// {@endtemplate}
/// {@macro pulumi_firebaseappcheck_v1_debug_token_args_doc}
class DebugTokenArgs {
  final pulumi.Input<String> appId;

  /// A human readable display name used to identify this debug token.
  final pulumi.Input<String> displayName;

  /// The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  final pulumi.Input<String> token;

  /// Creates a new [DebugTokenArgs].
  /// [appId] Required.
  /// [displayName] A human readable display name used to identify this debug token.
  /// [name] The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  /// [project] Optional.
  /// [token] Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  DebugTokenArgs({
    required String appId,
    required String displayName,
    String? name,
    String? project,
    required String token,
  }) : appId = pulumi.Input.asInput<String>(appId),
       displayName = pulumi.Input.asInput<String>(displayName),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       token = pulumi.Input.asInput<String>(token);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'displayName': displayName,
      'name': ?name,
      'project': ?project,
      'token': token,
    };
  }

  factory DebugTokenArgs.fromMap(Map<String, dynamic> map) {
    return DebugTokenArgs(
      appId: map['appId'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      token: map['token'] as String,
    );
  }
}
