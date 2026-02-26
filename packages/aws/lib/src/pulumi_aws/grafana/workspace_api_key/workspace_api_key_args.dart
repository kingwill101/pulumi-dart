// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for WorkspaceApiKey.
class WorkspaceApiKeyArgs {
  /// Specifies the name of the API key. Key names must be unique to the workspace.
  final Input<String> keyName;

  /// Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  final Input<String> keyRole;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  final Input<int> secondsToLive;

  /// The ID of the workspace that the API key is valid for.
  final Input<String> workspaceId;

  WorkspaceApiKeyArgs({
    required this.keyName,
    required this.keyRole,
    this.region,
    required this.secondsToLive,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyName'] = keyName;
    map['keyRole'] = keyRole;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secondsToLive'] = secondsToLive;
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory WorkspaceApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiKeyArgs(
      keyName: Input.asInput<String>(map['keyName']),
      keyRole: Input.asInput<String>(map['keyRole']),
      region: Input.asOptionalInput<String>(map['region']),
      secondsToLive: Input.asInput<int>(map['secondsToLive']),
      workspaceId: Input.asInput<String>(map['workspaceId']),
    );
  }
}
