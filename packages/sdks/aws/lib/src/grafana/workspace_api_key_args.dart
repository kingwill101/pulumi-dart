// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_workspace_api_key_workspace_api_key_args_doc}
/// The set of arguments for WorkspaceApiKey.
/// {@endtemplate}
/// {@macro pulumi_grafana_workspace_api_key_workspace_api_key_args_doc}
class WorkspaceApiKeyArgs {
  /// Specifies the name of the API key. Key names must be unique to the workspace.
  final pulumi.Input<String> keyName;

  /// Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  final pulumi.Input<String> keyRole;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  final pulumi.Input<int> secondsToLive;

  /// The ID of the workspace that the API key is valid for.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiKeyArgs].
  /// [keyName] Specifies the name of the API key. Key names must be unique to the workspace.
  /// [keyRole] Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondsToLive] Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  /// [workspaceId] The ID of the workspace that the API key is valid for.
  WorkspaceApiKeyArgs({
    required this.keyName,
    required this.keyRole,
    this.region,
    required this.secondsToLive,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyRole': keyRole,
      'region': ?region,
      'secondsToLive': secondsToLive,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiKeyArgs(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyRole: pulumi.Input.fromValue(map['keyRole'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondsToLive: pulumi.Input.fromValue(map['secondsToLive'] as int),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
