// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy.dart';

/// Result data returned by getFirewallPolicy.
class GetFirewallPolicyResult {
  final String? arn;
  /// Description of the firewall policy.
  final String? description;
  /// The policy for the specified firewall policy.
  final List<GetFirewallPolicyFirewallPolicy>? firewallPolicies;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Key-value tags for the firewall policy.
  final Map<String, String>? tags;
  /// Token used for optimistic locking.
  final String? updateToken;

  /// Creates a new [GetFirewallPolicyResult].
  /// [arn] Optional.
  /// [description] Description of the firewall policy.
  /// [firewallPolicies] The policy for the specified firewall policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Key-value tags for the firewall policy.
  /// [updateToken] Token used for optimistic locking.
  const GetFirewallPolicyResult({
    this.arn,
    this.description,
    this.firewallPolicies,
    this.id,
    this.name,
    this.region,
    this.tags,
    this.updateToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'firewallPolicies': ?(() { final guardedValue = firewallPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'updateToken': ?updateToken,
    };
  }

  factory GetFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallPolicies: (() { final guardedValue = map['firewallPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicy>(guardedValue, (value) => GetFirewallPolicyFirewallPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateToken: (() { final guardedValue = map['updateToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
