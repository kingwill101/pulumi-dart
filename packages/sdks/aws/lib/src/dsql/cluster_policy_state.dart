// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_policy_timeouts.dart';

/// Input properties used for looking up and filtering ClusterPolicy resources.
class ClusterPolicyState {
  /// Whether to bypass the policy lockout safety check. Setting this value to `true` increases the risk that the cluster becomes unmanageable. Defaults to `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutSafetyCheck;
  /// Identifier of the Aurora DSQL Cluster.
  final pulumi.Input<String>? identifier;
  /// Resource-based policy document as JSON.
  final pulumi.Input<String>? policy;
  /// Version of the policy document.
  final pulumi.Input<String>? policyVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<ClusterPolicyTimeouts>? timeouts;

  /// Creates a new [ClusterPolicyState].
  /// [bypassPolicyLockoutSafetyCheck] Whether to bypass the policy lockout safety check. Setting this value to `true` increases the risk that the cluster becomes unmanageable. Defaults to `false`.
  /// [identifier] Identifier of the Aurora DSQL Cluster.
  /// [policy] Resource-based policy document as JSON.
  /// [policyVersion] Version of the policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const ClusterPolicyState({
    this.bypassPolicyLockoutSafetyCheck,
    this.identifier,
    this.policy,
    this.policyVersion,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPolicyLockoutSafetyCheck': ?bypassPolicyLockoutSafetyCheck,
      'identifier': ?identifier,
      'policy': ?policy,
      'policyVersion': ?policyVersion,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ClusterPolicyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ClusterPolicyState.fromMap(Map<String, dynamic> map) {
    return ClusterPolicyState(
      bypassPolicyLockoutSafetyCheck: (() { final guardedValue = map['bypassPolicyLockoutSafetyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyVersion: (() { final guardedValue = map['policyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
