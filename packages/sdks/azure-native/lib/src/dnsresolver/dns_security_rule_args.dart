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
    required this.action,
    required this.dnsResolverDomainLists,
    required this.dnsResolverPolicyName,
    this.dnsSecurityRuleName,
    this.dnsSecurityRuleState,
    this.location,
    required this.priority,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          pulumi.Input.mapInputValue<
            DnsSecurityRuleAction,
            Map<String, dynamic>
          >(action, (value) => value.toMap()),
      'dnsResolverDomainLists':
          pulumi.Input.mapInputValue<
            List<SubResource>,
            List<Map<String, dynamic>>
          >(
            dnsResolverDomainLists,
            (value) =>
                pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      action: pulumi.Input.fromValue(
        DnsSecurityRuleAction.fromMap(
          (map['action']! as Map).cast<String, dynamic>(),
        ),
      ),
      dnsResolverDomainLists: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResource>(
          map['dnsResolverDomainLists']!,
          (value) =>
              SubResource.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      dnsResolverPolicyName: pulumi.Input.fromValue(
        map['dnsResolverPolicyName'] as String,
      ),
      dnsSecurityRuleName: (() {
        final guardedValue = map['dnsSecurityRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsSecurityRuleState: (() {
        final guardedValue = map['dnsSecurityRuleState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
