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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewallPolicyArn: (() { final guardedValue = map['firewallPolicyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicyName: (() { final guardedValue = map['firewallPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

