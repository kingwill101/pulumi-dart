// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mhsmiprule_response.dart';
import 'mhsmvirtual_network_rule_response.dart';

/// A set of rules governing the network accessibility of a managed hsm pool.
class MHSMNetworkRuleSetResponse {
  /// Tells what traffic can bypass network rules. This can be 'AzureServices' or 'None'.  If not specified the default is 'AzureServices'.
  final pulumi.Input<String>? bypass;
  /// The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  final pulumi.Input<String>? defaultAction;
  /// The list of IP address rules.
  final pulumi.Input<List<MHSMIPRuleResponse>>? ipRules;
  /// The list of virtual network rules.
  final pulumi.Input<List<MHSMVirtualNetworkRuleResponse>>? virtualNetworkRules;

  /// Creates a new [MHSMNetworkRuleSetResponse].
  /// [bypass] Tells what traffic can bypass network rules. This can be 'AzureServices' or 'None'.  If not specified the default is 'AzureServices'.
  /// [defaultAction] The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  /// [ipRules] The list of IP address rules.
  /// [virtualNetworkRules] The list of virtual network rules.
  MHSMNetworkRuleSetResponse({
    this.bypass,
    this.defaultAction,
    this.ipRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<MHSMIPRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<MHSMIPRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<MHSMVirtualNetworkRuleResponse>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<MHSMVirtualNetworkRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MHSMNetworkRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return MHSMNetworkRuleSetResponse(
      bypass: (() { final guardedValue = map['bypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MHSMIPRuleResponse>(guardedValue, (value) => MHSMIPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MHSMVirtualNetworkRuleResponse>(guardedValue, (value) => MHSMVirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

