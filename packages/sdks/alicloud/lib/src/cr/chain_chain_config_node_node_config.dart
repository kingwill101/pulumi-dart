// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chain_chain_config_node_node_config_deny_policy.dart';

class ChainChainConfigNodeNodeConfig {
  /// Blocking rules for scanning nodes in delivery chain nodes. See `deny_policy` below. **Note:** When `node_name` is `VULNERABILITY_SCANNING`, the parameters in `deny_policy` need to be filled in.
  final pulumi.Input<List<ChainChainConfigNodeNodeConfigDenyPolicy>>? denyPolicies;

  /// Creates a new [ChainChainConfigNodeNodeConfig].
  /// [denyPolicies] Blocking rules for scanning nodes in delivery chain nodes. See `deny_policy` below. **Note:** When `node_name` is `VULNERABILITY_SCANNING`, the parameters in `deny_policy` need to be filled in.
  ChainChainConfigNodeNodeConfig({
    this.denyPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denyPolicies': ?pulumi.Input.mapOptionalInputValue<List<ChainChainConfigNodeNodeConfigDenyPolicy>, List<Map<String, dynamic>>>(denyPolicies, (value) => pulumi.Input.encodeList<ChainChainConfigNodeNodeConfigDenyPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChainChainConfigNodeNodeConfig.fromMap(Map<String, dynamic> map) {
    return ChainChainConfigNodeNodeConfig(
      denyPolicies: (() { final guardedValue = map['denyPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChainChainConfigNodeNodeConfigDenyPolicy>(guardedValue, (value) => ChainChainConfigNodeNodeConfigDenyPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

