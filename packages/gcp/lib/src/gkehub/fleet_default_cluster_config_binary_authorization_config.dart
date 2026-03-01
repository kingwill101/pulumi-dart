// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_default_cluster_config_binary_authorization_config_policy_binding.dart';

class FleetDefaultClusterConfigBinaryAuthorizationConfig {
  /// Mode of operation for binauthz policy evaluation.
  /// Possible values are: `DISABLED`, `POLICY_BINDINGS`.
  final String? evaluationMode;

  /// Binauthz policies that apply to this cluster.
  /// Structure is documented below.
  final List<FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding>?
  policyBindings;

  /// Creates a new [FleetDefaultClusterConfigBinaryAuthorizationConfig].
  /// [evaluationMode] Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Binauthz policies that apply to this cluster.
  FleetDefaultClusterConfigBinaryAuthorizationConfig({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?evaluationMode,
      'policyBindings': ?policyBindings == null
          ? null
          : pulumi.Input.encodeList<
              FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding,
              Map<String, dynamic>
            >(policyBindings!, (value) => value.toMap()),
    };
  }

  factory FleetDefaultClusterConfigBinaryAuthorizationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetDefaultClusterConfigBinaryAuthorizationConfig(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : map['evaluationMode'] as String,
      policyBindings: map['policyBindings'] == null
          ? null
          : pulumi.Input.decodeList<
              FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding
            >(
              map['policyBindings'],
              (value) =>
                  FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
