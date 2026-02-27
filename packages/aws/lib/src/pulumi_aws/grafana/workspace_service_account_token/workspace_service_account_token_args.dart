// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for WorkspaceServiceAccountToken.
class WorkspaceServiceAccountTokenArgs {
  /// A name for the token to create. The name must be unique within the workspace.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Sets how long the token will be valid, in seconds. You can set the time up to 30 days in the future.
  final pulumi.Input<int> secondsToLive;

  /// The ID of the service account for which to create a token.
  final pulumi.Input<String> serviceAccountId;

  /// The Grafana workspace with which the service account token is associated.
  final pulumi.Input<String> workspaceId;

  WorkspaceServiceAccountTokenArgs({
    this.name,
    this.region,
    required this.secondsToLive,
    required this.serviceAccountId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secondsToLive'] = secondsToLive;
    map['serviceAccountId'] = serviceAccountId;
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory WorkspaceServiceAccountTokenArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceServiceAccountTokenArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secondsToLive: pulumi.Input.asInput<int>(map['secondsToLive']),
      serviceAccountId: pulumi.Input.asInput<String>(map['serviceAccountId']),
      workspaceId: pulumi.Input.asInput<String>(map['workspaceId']),
    );
  }
}
