// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_security_rule_action.dart';
import 'sub_resource.dart';

/// {@template pulumi_dnsresolver_dns_security_rule_args_doc}
/// The set of arguments for DnsSecurityRule.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_dns_security_rule_args_doc}
class DnsSecurityRuleArgs {
  /// The action to take on DNS requests that match the DNS security rule.
  final pulumi.Input<DnsSecurityRuleAction> action;
  /// DNS resolver policy domains lists that the DNS security rule applies to.
  final pulumi.Input<List<SubResource>> dnsResolverDomainLists;
  /// The name of the DNS resolver policy.
  final pulumi.Input<String> dnsResolverPolicyName;
  /// The name of the DNS security rule.
  final pulumi.Input<String>? dnsSecurityRuleName;
  /// The state of DNS security rule.
  final pulumi.Input<String>? dnsSecurityRuleState;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The priority of the DNS security rule.
  final pulumi.Input<int> priority;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DnsSecurityRuleArgs].
  /// [action] The action to take on DNS requests that match the DNS security rule.
  /// [dnsResolverDomainLists] DNS resolver policy domains lists that the DNS security rule applies to.
  /// [dnsResolverPolicyName] The name of the DNS resolver policy.
  /// [dnsSecurityRuleName] The name of the DNS security rule.
  /// [dnsSecurityRuleState] The state of DNS security rule.
  /// [location] The geo-location where the resource lives
  /// [priority] The priority of the DNS security rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DnsSecurityRuleArgs({
    required pulumi.Output<DnsSecurityRuleAction> action,
    required pulumi.Output<List<SubResource>> dnsResolverDomainLists,
    required pulumi.Output<String> dnsResolverPolicyName,
    pulumi.Output<String>? dnsSecurityRuleName,
    pulumi.Output<String>? dnsSecurityRuleState,
    pulumi.Output<String>? location,
    required pulumi.Output<int> priority,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      action = pulumi.Input.asInput<DnsSecurityRuleAction>(action),
      dnsResolverDomainLists = pulumi.Input.asInput<List<SubResource>>(dnsResolverDomainLists),
      dnsResolverPolicyName = pulumi.Input.asInput<String>(dnsResolverPolicyName),
      dnsSecurityRuleName = pulumi.Input.asOptionalInput<String>(dnsSecurityRuleName),
      dnsSecurityRuleState = pulumi.Input.asOptionalInput<String>(dnsSecurityRuleState),
      location = pulumi.Input.asOptionalInput<String>(location),
      priority = pulumi.Input.asInput<int>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<DnsSecurityRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'dnsResolverDomainLists': pulumi.Input.mapInputValue<List<SubResource>, List<Map<String, dynamic>>>(dnsResolverDomainLists, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsResolverPolicyName': dnsResolverPolicyName,
      'dnsSecurityRuleName': ?dnsSecurityRuleName,
      'dnsSecurityRuleState': ?dnsSecurityRuleState,
      'location': ?location,
      'priority': priority,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DnsSecurityRuleArgs.fromMap(Map<String, dynamic> map) {
    return DnsSecurityRuleArgs(
      action: pulumi.Output.create<DnsSecurityRuleAction>(DnsSecurityRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>())),
      dnsResolverDomainLists: pulumi.Output.create<List<SubResource>>(pulumi.Input.decodeList<SubResource>(map['dnsResolverDomainLists'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))),
      dnsResolverPolicyName: pulumi.Output.create<String>(map['dnsResolverPolicyName'] as String),
      dnsSecurityRuleName: map['dnsSecurityRuleName'] == null ? null : pulumi.Output.create<String>(map['dnsSecurityRuleName'] as String),
      dnsSecurityRuleState: map['dnsSecurityRuleState'] == null ? null : pulumi.Output.create<String>(map['dnsSecurityRuleState'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

