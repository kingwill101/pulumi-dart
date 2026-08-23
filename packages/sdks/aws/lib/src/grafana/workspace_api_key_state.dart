// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceApiKey resources.
class WorkspaceApiKeyState {
  /// The key token in JSON format. Use this value as a bearer token to authenticate HTTP requests to the workspace.
  final pulumi.Input<String>? key;
  /// Specifies the name of the API key. Key names must be unique to the workspace.
  final pulumi.Input<String>? keyName;
  /// Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  final pulumi.Input<String>? keyRole;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  final pulumi.Input<int>? secondsToLive;
  /// The ID of the workspace that the API key is valid for.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceApiKeyState].
  /// [key] The key token in JSON format. Use this value as a bearer token to authenticate HTTP requests to the workspace.
  /// [keyName] Specifies the name of the API key. Key names must be unique to the workspace.
  /// [keyRole] Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondsToLive] Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  /// [workspaceId] The ID of the workspace that the API key is valid for.
  const WorkspaceApiKeyState({
    this.key,
    this.keyName,
    this.keyRole,
    this.region,
    this.secondsToLive,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'keyName': ?keyName,
      'keyRole': ?keyRole,
      'region': ?region,
      'secondsToLive': ?secondsToLive,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceApiKeyState.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiKeyState(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyRole: (() { final guardedValue = map['keyRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondsToLive: (() { final guardedValue = map['secondsToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
