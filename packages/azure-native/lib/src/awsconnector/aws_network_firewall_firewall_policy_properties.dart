// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy.dart';
import 'tag.dart';

/// Definition of awsNetworkFirewallFirewallPolicy
class AwsNetworkFirewallFirewallPolicyProperties {
  /// Property description
  final String? description;
  /// Property firewallPolicy
  final FirewallPolicy? firewallPolicy;
  /// A resource ARN.
  final String? firewallPolicyArn;
  /// Property firewallPolicyId
  final String? firewallPolicyId;
  /// Property firewallPolicyName
  final String? firewallPolicyName;
  /// Property tags
  final List<Tag>? tags;

  /// Creates a new [AwsNetworkFirewallFirewallPolicyProperties].
  /// [description] Property description
  /// [firewallPolicy] Property firewallPolicy
  /// [firewallPolicyArn] A resource ARN.
  /// [firewallPolicyId] Property firewallPolicyId
  /// [firewallPolicyName] Property firewallPolicyName
  /// [tags] Property tags
  AwsNetworkFirewallFirewallPolicyProperties({
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
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsNetworkFirewallFirewallPolicyProperties.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallFirewallPolicyProperties(
      description: map['description'] == null ? null : map['description'] as String,
      firewallPolicy: map['firewallPolicy'] == null ? null : FirewallPolicy.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>()),
      firewallPolicyArn: map['firewallPolicyArn'] == null ? null : map['firewallPolicyArn'] as String,
      firewallPolicyId: map['firewallPolicyId'] == null ? null : map['firewallPolicyId'] as String,
      firewallPolicyName: map['firewallPolicyName'] == null ? null : map['firewallPolicyName'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

