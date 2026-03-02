// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy.dart';
import 'tag.dart';

/// Definition of awsNetworkFirewallFirewallPolicy
class AwsNetworkFirewallFirewallPolicyProperties {
  /// Property description
  final pulumi.Input<String>? description;
  /// Property firewallPolicy
  final pulumi.Input<FirewallPolicy>? firewallPolicy;
  /// A resource ARN.
  final pulumi.Input<String>? firewallPolicyArn;
  /// Property firewallPolicyId
  final pulumi.Input<String>? firewallPolicyId;
  /// Property firewallPolicyName
  final pulumi.Input<String>? firewallPolicyName;
  /// Property tags
  final pulumi.Input<List<Tag>>? tags;

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
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<FirewallPolicy, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'firewallPolicyArn': ?firewallPolicyArn,
      'firewallPolicyId': ?firewallPolicyId,
      'firewallPolicyName': ?firewallPolicyName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsNetworkFirewallFirewallPolicyProperties.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallFirewallPolicyProperties(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (FirewallPolicy.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>())).input(),
      firewallPolicyArn: map['firewallPolicyArn'] == null ? null : (map['firewallPolicyArn'] as String).input(),
      firewallPolicyId: map['firewallPolicyId'] == null ? null : (map['firewallPolicyId'] as String).input(),
      firewallPolicyName: map['firewallPolicyName'] == null ? null : (map['firewallPolicyName'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

