// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_chain_chain_config_node_node_config_deny_policy.dart';

class GetChainsChainChainConfigNodeNodeConfig {
  /// Blocking rules for scanning nodes in delivery chain nodes. **Note:** When `node_name` is `VULNERABILITY_SCANNING`, the parameters in `deny_policy` need to be filled in.
  final pulumi.Input<List<GetChainsChainChainConfigNodeNodeConfigDenyPolicy>> denyPolicies;

  /// Creates a new [GetChainsChainChainConfigNodeNodeConfig].
  /// [denyPolicies] Blocking rules for scanning nodes in delivery chain nodes. **Note:** When `node_name` is `VULNERABILITY_SCANNING`, the parameters in `deny_policy` need to be filled in.
  GetChainsChainChainConfigNodeNodeConfig({
    required this.denyPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denyPolicies': pulumi.Input.mapInputValue<List<GetChainsChainChainConfigNodeNodeConfigDenyPolicy>, List<Map<String, dynamic>>>(denyPolicies, (value) => pulumi.Input.encodeList<GetChainsChainChainConfigNodeNodeConfigDenyPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetChainsChainChainConfigNodeNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetChainsChainChainConfigNodeNodeConfig(
      denyPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetChainsChainChainConfigNodeNodeConfigDenyPolicy>(map['denyPolicies']!, (value) => GetChainsChainChainConfigNodeNodeConfigDenyPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

