// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../fleet_default_cluster_config_binary_authorization_config_policy_binding/fleet_default_cluster_config_binary_authorization_config_policy_binding.dart';

class FleetDefaultClusterConfigBinaryAuthorizationConfig {
  /// Mode of operation for binauthz policy evaluation.
  /// Possible values are: `DISABLED`, `POLICY_BINDINGS`.
  final String? evaluationMode;

  /// Binauthz policies that apply to this cluster.
  /// Structure is documented below.
  final List<FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding>?
      policyBindings;

  FleetDefaultClusterConfigBinaryAuthorizationConfig({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final evaluationModeValue = evaluationMode;
    if (evaluationModeValue != null) {
      map['evaluationMode'] = evaluationModeValue;
    }
    final policyBindingsValue = policyBindings;
    if (policyBindingsValue != null) {
      map['policyBindings'] = pulumi.Input.encodeList<
          FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding,
          Map<String, dynamic>>(policyBindingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FleetDefaultClusterConfigBinaryAuthorizationConfig.fromMap(
      Map<String, dynamic> map) {
    return FleetDefaultClusterConfigBinaryAuthorizationConfig(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : map['evaluationMode'] as String,
      policyBindings: map['policyBindings'] == null
          ? null
          : pulumi.Input.decodeList<
                  FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding>(
              map['policyBindings'],
              (value) =>
                  FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
