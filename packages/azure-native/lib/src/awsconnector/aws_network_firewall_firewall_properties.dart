// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_mapping.dart';
import 'tag.dart';

/// Definition of awsNetworkFirewallFirewall
class AwsNetworkFirewallFirewallProperties {
  /// Property deleteProtection
  final bool? deleteProtection;
  /// Property description
  final String? description;
  /// Property endpointIds
  final List<String>? endpointIds;
  /// A resource ARN.
  final String? firewallArn;
  /// Property firewallId
  final String? firewallId;
  /// Property firewallName
  final String? firewallName;
  /// A resource ARN.
  final String? firewallPolicyArn;
  /// Property firewallPolicyChangeProtection
  final bool? firewallPolicyChangeProtection;
  /// Property subnetChangeProtection
  final bool? subnetChangeProtection;
  /// Property subnetMappings
  final List<SubnetMapping>? subnetMappings;
  /// Property tags
  final List<Tag>? tags;
  /// Property vpcId
  final String? vpcId;

  /// Creates a new [AwsNetworkFirewallFirewallProperties].
  /// [deleteProtection] Property deleteProtection
  /// [description] Property description
  /// [endpointIds] Property endpointIds
  /// [firewallArn] A resource ARN.
  /// [firewallId] Property firewallId
  /// [firewallName] Property firewallName
  /// [firewallPolicyArn] A resource ARN.
  /// [firewallPolicyChangeProtection] Property firewallPolicyChangeProtection
  /// [subnetChangeProtection] Property subnetChangeProtection
  /// [subnetMappings] Property subnetMappings
  /// [tags] Property tags
  /// [vpcId] Property vpcId
  AwsNetworkFirewallFirewallProperties({
    this.deleteProtection,
    this.description,
    this.endpointIds,
    this.firewallArn,
    this.firewallId,
    this.firewallName,
    this.firewallPolicyArn,
    this.firewallPolicyChangeProtection,
    this.subnetChangeProtection,
    this.subnetMappings,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'description': ?description,
      'endpointIds': ?endpointIds,
      'firewallArn': ?firewallArn,
      'firewallId': ?firewallId,
      'firewallName': ?firewallName,
      'firewallPolicyArn': ?firewallPolicyArn,
      'firewallPolicyChangeProtection': ?firewallPolicyChangeProtection,
      'subnetChangeProtection': ?subnetChangeProtection,
      'subnetMappings': ?subnetMappings == null ? null : pulumi.Input.encodeList<SubnetMapping, Map<String, dynamic>>(subnetMappings!, (value) => value.toMap()),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory AwsNetworkFirewallFirewallProperties.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallFirewallProperties(
      deleteProtection: map['deleteProtection'] == null ? null : map['deleteProtection'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      endpointIds: map['endpointIds'] == null ? null : (map['endpointIds'] as List).cast<String>(),
      firewallArn: map['firewallArn'] == null ? null : map['firewallArn'] as String,
      firewallId: map['firewallId'] == null ? null : map['firewallId'] as String,
      firewallName: map['firewallName'] == null ? null : map['firewallName'] as String,
      firewallPolicyArn: map['firewallPolicyArn'] == null ? null : map['firewallPolicyArn'] as String,
      firewallPolicyChangeProtection: map['firewallPolicyChangeProtection'] == null ? null : map['firewallPolicyChangeProtection'] as bool,
      subnetChangeProtection: map['subnetChangeProtection'] == null ? null : map['subnetChangeProtection'] as bool,
      subnetMappings: map['subnetMappings'] == null ? null : pulumi.Input.decodeList<SubnetMapping>(map['subnetMappings'], (value) => SubnetMapping.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

