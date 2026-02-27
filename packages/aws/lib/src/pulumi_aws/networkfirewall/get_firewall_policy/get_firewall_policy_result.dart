// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_firewall_policy_firewall_policy/get_firewall_policy_firewall_policy.dart';

/// Result data returned by getFirewallPolicy.
class GetFirewallPolicyResult {
  final String? arn;

  /// Description of the firewall policy.
  final String description;

  /// The [policy][2] for the specified firewall policy.
  final List<GetFirewallPolicyFirewallPolicy> firewallPolicies;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;
  final String region;

  /// Key-value tags for the firewall policy.
  final Map<String, String> tags;

  /// Token used for optimistic locking.
  final String updateToken;

  GetFirewallPolicyResult({
    this.arn,
    required this.description,
    required this.firewallPolicies,
    required this.id,
    this.name,
    required this.region,
    required this.tags,
    required this.updateToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    map['description'] = description;
    map['firewallPolicies'] = pulumi.Input.encodeList<
        GetFirewallPolicyFirewallPolicy,
        Map<String, dynamic>>(firewallPolicies, (value) => value.toMap());
    map['id'] = id;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['region'] = region;
    map['tags'] = tags;
    map['updateToken'] = updateToken;
    return map;
  }

  factory GetFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyResult(
      arn: map['arn'] == null ? null : map['arn'] as String,
      description: map['description'] as String,
      firewallPolicies:
          pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicy>(
              map['firewallPolicies'],
              (value) => GetFirewallPolicyFirewallPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateToken: map['updateToken'] as String,
    );
  }
}
