// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceServiceAccountToken resources.
class WorkspaceServiceAccountTokenState {
  /// Specifies when the service account token was created.
  final pulumi.Input<String?>? createdAt;
  /// Specifies when the service account token will expire.
  final pulumi.Input<String?>? expiresAt;
  /// The key for the service account token. Used when making calls to the Grafana HTTP APIs to authenticate and authorize the requests.
  final pulumi.Input<String?>? key;
  /// A name for the token to create. The name must be unique within the workspace.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Sets how long the token will be valid, in seconds. You can set the time up to 30 days in the future.
  final pulumi.Input<int?>? secondsToLive;
  /// The ID of the service account for which to create a token.
  final pulumi.Input<String?>? serviceAccountId;
  /// Identifier of the service account token in the given Grafana workspace.
  final pulumi.Input<String?>? serviceAccountTokenId;
  /// The Grafana workspace with which the service account token is associated.
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [WorkspaceServiceAccountTokenState].
  /// [createdAt] Specifies when the service account token was created.
  /// [expiresAt] Specifies when the service account token will expire.
  /// [key] The key for the service account token. Used when making calls to the Grafana HTTP APIs to authenticate and authorize the requests.
  /// [name] A name for the token to create. The name must be unique within the workspace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondsToLive] Sets how long the token will be valid, in seconds. You can set the time up to 30 days in the future.
  /// [serviceAccountId] The ID of the service account for which to create a token.
  /// [serviceAccountTokenId] Identifier of the service account token in the given Grafana workspace.
  /// [workspaceId] The Grafana workspace with which the service account token is associated.
  const WorkspaceServiceAccountTokenState({
    this.createdAt,
    this.expiresAt,
    this.key,
    this.name,
    this.region,
    this.secondsToLive,
    this.serviceAccountId,
    this.serviceAccountTokenId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'expiresAt': ?expiresAt,
      'key': ?key,
      'name': ?name,
      'region': ?region,
      'secondsToLive': ?secondsToLive,
      'serviceAccountId': ?serviceAccountId,
      'serviceAccountTokenId': ?serviceAccountTokenId,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceServiceAccountTokenState.fromMap(Map<String, dynamic> map) {
    return WorkspaceServiceAccountTokenState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondsToLive: (() { final guardedValue = map['secondsToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountTokenId: (() { final guardedValue = map['serviceAccountTokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
