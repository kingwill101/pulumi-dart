// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_response.dart';
import 'tag_response.dart';

/// Definition of awsNetworkFirewallFirewallPolicy
class AwsNetworkFirewallFirewallPolicyPropertiesResponse {
  /// Property description
  final String? description;
  /// Property firewallPolicy
  final FirewallPolicyResponse? firewallPolicy;
  /// A resource ARN.
  final String? firewallPolicyArn;
  /// Property firewallPolicyId
  final String? firewallPolicyId;
  /// Property firewallPolicyName
  final String? firewallPolicyName;
  /// Property tags
  final List<TagResponse>? tags;

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
      'firewallPolicy': ?firewallPolicy == null ? null : firewallPolicy!.toMap(),
      'firewallPolicyArn': ?firewallPolicyArn,
      'firewallPolicyId': ?firewallPolicyId,
      'firewallPolicyName': ?firewallPolicyName,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsNetworkFirewallFirewallPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallFirewallPolicyPropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      firewallPolicy: map['firewallPolicy'] == null ? null : FirewallPolicyResponse.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>()),
      firewallPolicyArn: map['firewallPolicyArn'] == null ? null : map['firewallPolicyArn'] as String,
      firewallPolicyId: map['firewallPolicyId'] == null ? null : map['firewallPolicyId'] as String,
      firewallPolicyName: map['firewallPolicyName'] == null ? null : map['firewallPolicyName'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

