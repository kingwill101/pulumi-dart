// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_response.dart';
import 'tag_response.dart';

/// Definition of awsNetworkFirewallFirewallPolicy
class AwsNetworkFirewallFirewallPolicyPropertiesResponse {
  /// Property description
  final pulumi.Input<String>? description;
  /// Property firewallPolicy
  final pulumi.Input<FirewallPolicyResponse>? firewallPolicy;
  /// A resource ARN.
  final pulumi.Input<String>? firewallPolicyArn;
  /// Property firewallPolicyId
  final pulumi.Input<String>? firewallPolicyId;
  /// Property firewallPolicyName
  final pulumi.Input<String>? firewallPolicyName;
  /// Property tags
  final pulumi.Input<List<TagResponse>>? tags;

  /// Creates a new [AwsNetworkFirewallFirewallPolicyPropertiesResponse].
  /// [description] Property description
  /// [firewallPolicy] Property firewallPolicy
  /// [firewallPolicyArn] A resource ARN.
  /// [firewallPolicyId] Property firewallPolicyId
  /// [firewallPolicyName] Property firewallPolicyName
  /// [tags] Property tags
  AwsNetworkFirewallFirewallPolicyPropertiesResponse({
    this.description,
    this.firewallPolicy,
    this.firewallPolicyArn,
    this.firewallPolicyId,
    this.firewallPolicyName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyResponse, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'firewallPolicyArn': ?firewallPolicyArn,
      'firewallPolicyId': ?firewallPolicyId,
      'firewallPolicyName': ?firewallPolicyName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsNetworkFirewallFirewallPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallFirewallPolicyPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewallPolicyArn: (() { final guardedValue = map['firewallPolicyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicyName: (() { final guardedValue = map['firewallPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

