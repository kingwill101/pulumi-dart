// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';
import 'resource_access_rule_response.dart';
import 'virtual_network_rule_response.dart';

/// Network rule set
class NetworkRuleSetResponse {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  final String? bypass;
  /// Specifies the default action of allow or deny when no other rules match.
  final String defaultAction;
  /// Sets the IP ACL rules
  final List<IPRuleResponse>? ipRules;
  /// Sets the resource access rules
  final List<ResourceAccessRuleResponse>? resourceAccessRules;
  /// Sets the virtual network rules
  final List<VirtualNetworkRuleResponse>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSetResponse].
  /// [bypass] Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  /// [defaultAction] Specifies the default action of allow or deny when no other rules match.
  /// [ipRules] Sets the IP ACL rules
  /// [resourceAccessRules] Sets the resource access rules
  /// [virtualNetworkRules] Sets the virtual network rules
  NetworkRuleSetResponse({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.resourceAccessRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': defaultAction,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'resourceAccessRules': ?resourceAccessRules == null ? null : pulumi.Input.encodeList<ResourceAccessRuleResponse, Map<String, dynamic>>(resourceAccessRules!, (value) => value.toMap()),
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetResponse(
      bypass: map['bypass'] == null ? null : map['bypass'] as String,
      defaultAction: map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRuleResponse>(map['ipRules'], (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceAccessRules: map['resourceAccessRules'] == null ? null : pulumi.Input.decodeList<ResourceAccessRuleResponse>(map['resourceAccessRules'], (value) => ResourceAccessRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkRuleResponse>(map['virtualNetworkRules'], (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

