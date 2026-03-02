// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_rule_response.dart';

/// A set of rules governing the network accessibility.
class NetworkRuleSetResponse {
  /// The list of virtual network rules.
  final pulumi.Input<List<VirtualNetworkRuleResponse>>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSetResponse].
  /// [virtualNetworkRules] The list of virtual network rules.
  NetworkRuleSetResponse({
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkRuleResponse>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetResponse(
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkRuleResponse>(map['virtualNetworkRules'], (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

