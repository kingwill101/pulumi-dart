// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_nat_rcaction_response.dart';
import 'azure_firewall_nat_rule_response.dart';

/// NAT rule collection resource.
class AzureFirewallNatRuleCollectionResponse {
  /// The action type of a NAT rule collection.
  final pulumi.Input<AzureFirewallNatRCActionResponse>? action;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Priority of the NAT rule collection resource.
  final pulumi.Input<int>? priority;
  /// The provisioning state of the NAT rule collection resource.
  final pulumi.Input<String> provisioningState;
  /// Collection of rules used by a NAT rule collection.
  final pulumi.Input<List<AzureFirewallNatRuleResponse>>? rules;

  /// Creates a new [AzureFirewallNatRuleCollectionResponse].
  /// [action] The action type of a NAT rule collection.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  /// [priority] Priority of the NAT rule collection resource.
  /// [provisioningState] The provisioning state of the NAT rule collection resource.
  /// [rules] Collection of rules used by a NAT rule collection.
  AzureFirewallNatRuleCollectionResponse({
    this.action,
    required this.etag,
    this.id,
    this.name,
    this.priority,
    required this.provisioningState,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<AzureFirewallNatRCActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallNatRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AzureFirewallNatRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureFirewallNatRuleCollectionResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRuleCollectionResponse(
      action: map['action'] == null ? null : (AzureFirewallNatRCActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<AzureFirewallNatRuleResponse>(map['rules'], (value) => AzureFirewallNatRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

