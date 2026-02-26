// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DebugToken.
class DebugTokenArgs {
  final Input<String> appId;

  /// A human readable display name used to identify this debug token.
  final Input<String> displayName;

  /// The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  final Input<String>? name;
  final Input<String>? project;

  /// Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  final Input<String> token;

  DebugTokenArgs({
    required this.appId,
    required this.displayName,
    this.name,
    this.project,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['displayName'] = displayName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['token'] = token;
    return map;
  }

  factory DebugTokenArgs.fromMap(Map<String, dynamic> map) {
    return DebugTokenArgs(
      appId: Input.asInput<String>(map['appId']),
      displayName: Input.asInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      token: Input.asInput<String>(map['token']),
    );
  }
}
