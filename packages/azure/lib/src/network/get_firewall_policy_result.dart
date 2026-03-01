// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_dn.dart';
import 'get_firewall_policy_threat_intelligence_allowlist.dart';

/// Result data returned by getFirewallPolicy.
class GetFirewallPolicyResult {
  final String basePolicyId;
  final List<String> childPolicies;
  final List<GetFirewallPolicyDn> dns;
  final List<String> firewalls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String resourceGroupName;
  final List<String> ruleCollectionGroups;
  /// A mapping of tags assigned to the Firewall Policy.
  final Map<String, String> tags;
  final List<GetFirewallPolicyThreatIntelligenceAllowlist> threatIntelligenceAllowlists;
  final String threatIntelligenceMode;

  /// Creates a new [GetFirewallPolicyResult].
  /// [basePolicyId] Required.
  /// [childPolicies] Required.
  /// [dns] Required.
  /// [firewalls] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [ruleCollectionGroups] Required.
  /// [tags] A mapping of tags assigned to the Firewall Policy.
  /// [threatIntelligenceAllowlists] Required.
  /// [threatIntelligenceMode] Required.
  GetFirewallPolicyResult({
    required this.basePolicyId,
    required this.childPolicies,
    required this.dns,
    required this.firewalls,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.ruleCollectionGroups,
    required this.tags,
    required this.threatIntelligenceAllowlists,
    required this.threatIntelligenceMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyId': basePolicyId,
      'childPolicies': childPolicies,
      'dns': pulumi.Input.encodeList<GetFirewallPolicyDn, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'firewalls': firewalls,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionGroups': ruleCollectionGroups,
      'tags': tags,
      'threatIntelligenceAllowlists': pulumi.Input.encodeList<GetFirewallPolicyThreatIntelligenceAllowlist, Map<String, dynamic>>(threatIntelligenceAllowlists, (value) => value.toMap()),
      'threatIntelligenceMode': threatIntelligenceMode,
    };
  }

  factory GetFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyResult(
      basePolicyId: map['basePolicyId'] as String,
      childPolicies: (map['childPolicies'] as List).cast<String>(),
      dns: pulumi.Input.decodeList<GetFirewallPolicyDn>(map['dns'], (value) => GetFirewallPolicyDn.fromMap((value as Map).cast<String, dynamic>())),
      firewalls: (map['firewalls'] as List).cast<String>(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleCollectionGroups: (map['ruleCollectionGroups'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      threatIntelligenceAllowlists: pulumi.Input.decodeList<GetFirewallPolicyThreatIntelligenceAllowlist>(map['threatIntelligenceAllowlists'], (value) => GetFirewallPolicyThreatIntelligenceAllowlist.fromMap((value as Map).cast<String, dynamic>())),
      threatIntelligenceMode: map['threatIntelligenceMode'] as String,
    );
  }
}

