// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_policy_timeouts.dart';

/// {@template pulumi_dsql_cluster_policy_cluster_policy_args_doc}
/// The set of arguments for ClusterPolicy.
/// {@endtemplate}
/// {@macro pulumi_dsql_cluster_policy_cluster_policy_args_doc}
class ClusterPolicyArgs {
  /// Whether to bypass the policy lockout safety check. Setting this value to `true` increases the risk that the cluster becomes unmanageable. Defaults to `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutSafetyCheck;
  /// Identifier of the Aurora DSQL Cluster.
  final pulumi.Input<String> identifier;
  /// Resource-based policy document as JSON.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<ClusterPolicyTimeouts>? timeouts;

  /// Creates a new [ClusterPolicyArgs].
  /// [bypassPolicyLockoutSafetyCheck] Whether to bypass the policy lockout safety check. Setting this value to `true` increases the risk that the cluster becomes unmanageable. Defaults to `false`.
  /// [identifier] Identifier of the Aurora DSQL Cluster.
  /// [policy] Resource-based policy document as JSON.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const ClusterPolicyArgs({
    this.bypassPolicyLockoutSafetyCheck,
    required this.identifier,
    required this.policy,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'identifier': identifier,
      'policy': policy,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ClusterPolicyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ClusterPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPolicyArgs(
      bypassPolicyLockoutSafetyCheck: (() { final guardedValue = map['bypassPolicyLockoutSafetyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
