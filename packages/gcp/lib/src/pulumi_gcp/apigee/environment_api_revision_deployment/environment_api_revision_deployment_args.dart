// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvironmentApiRevisionDeployment.
class EnvironmentApiRevisionDeploymentArgs {
  /// Apigee API proxy name.
  final Input<String> api;

  /// Apigee environment name.
  final Input<String> environment;

  /// Apigee organization ID.
  final Input<String> orgId;

  /// If true, replaces other deployed revisions of this proxy in the environment.
  final Input<bool>? override;

  /// API proxy revision number to deploy.
  final Input<int> revision;

  /// If true, enables sequenced rollout for safe traffic switching.
  final Input<bool>? sequencedRollout;

  /// Optional service account the deployed proxy runs as.
  final Input<String>? serviceAccount;

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
      api: Input.asInput<String>(map['api']),
      environment: Input.asInput<String>(map['environment']),
      orgId: Input.asInput<String>(map['orgId']),
      override: Input.asOptionalInput<bool>(map['override']),
      revision: Input.asInput<int>(map['revision']),
      sequencedRollout: Input.asOptionalInput<bool>(map['sequencedRollout']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
    );
  }
}
