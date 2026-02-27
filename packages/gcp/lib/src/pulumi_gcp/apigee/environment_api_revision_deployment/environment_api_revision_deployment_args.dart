// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvironmentApiRevisionDeployment.
class EnvironmentApiRevisionDeploymentArgs {
  /// Apigee API proxy name.
  final pulumi.Input<String> api;

  /// Apigee environment name.
  final pulumi.Input<String> environment;

  /// Apigee organization ID.
  final pulumi.Input<String> orgId;

  /// If true, replaces other deployed revisions of this proxy in the environment.
  final pulumi.Input<bool>? override;

  /// API proxy revision number to deploy.
  final pulumi.Input<int> revision;

  /// If true, enables sequenced rollout for safe traffic switching.
  final pulumi.Input<bool>? sequencedRollout;

  /// Optional service account the deployed proxy runs as.
  final pulumi.Input<String>? serviceAccount;

  EnvironmentApiRevisionDeploymentArgs({
    required this.api,
    required this.environment,
    required this.orgId,
    this.override,
    required this.revision,
    this.sequencedRollout,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['api'] = api;
    map['environment'] = environment;
    map['orgId'] = orgId;
    final overrideValue = override;
    if (overrideValue != null) {
      map['override'] = overrideValue;
    }
    map['revision'] = revision;
    final sequencedRolloutValue = sequencedRollout;
    if (sequencedRolloutValue != null) {
      map['sequencedRollout'] = sequencedRolloutValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory EnvironmentApiRevisionDeploymentArgs.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentApiRevisionDeploymentArgs(
      api: pulumi.Input.asInput<String>(map['api']),
      environment: pulumi.Input.asInput<String>(map['environment']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      override: pulumi.Input.asOptionalInput<bool>(map['override']),
      revision: pulumi.Input.asInput<int>(map['revision']),
      sequencedRollout:
          pulumi.Input.asOptionalInput<bool>(map['sequencedRollout']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
    );
  }
}
