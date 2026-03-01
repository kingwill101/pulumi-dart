// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy.dart';

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

  /// Creates a new [GetFirewallPolicyResult].
  /// [arn] Optional.
  /// [description] Description of the firewall policy.
  /// [firewallPolicies] The [policy][2] for the specified firewall policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Required.
  /// [tags] Key-value tags for the firewall policy.
  /// [updateToken] Token used for optimistic locking.
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
    return <String, dynamic>{
      'arn': ?arn,
      'description': description,
      'firewallPolicies':
          pulumi.Input.encodeList<
            GetFirewallPolicyFirewallPolicy,
            Map<String, dynamic>
          >(firewallPolicies, (value) => value.toMap()),
      'id': id,
      'name': ?name,
      'region': region,
      'tags': tags,
      'updateToken': updateToken,
    };
  }

  factory GetFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyResult(
      arn: map['arn'] == null ? null : map['arn'] as String,
      description: map['description'] as String,
      firewallPolicies:
          pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicy>(
            map['firewallPolicies'],
            (value) => GetFirewallPolicyFirewallPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateToken: map['updateToken'] as String,
    );
  }
}
