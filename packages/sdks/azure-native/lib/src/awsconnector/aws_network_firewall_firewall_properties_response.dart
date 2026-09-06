// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_mapping_network_firewall_firewall_response.dart';
import 'tag_response.dart';

/// Definition of awsNetworkFirewallFirewall
class AwsNetworkFirewallFirewallPropertiesResponse {
  /// Property deleteProtection
  final pulumi.Input<bool?>? deleteProtection;
  /// Property description
  final pulumi.Input<String?>? description;
  /// Property endpointIds
  final pulumi.Input<List<String>?>? endpointIds;
  /// A resource ARN.
  final pulumi.Input<String?>? firewallArn;
  /// Property firewallId
  final pulumi.Input<String?>? firewallId;
  /// Property firewallName
  final pulumi.Input<String?>? firewallName;
  /// A resource ARN.
  final pulumi.Input<String?>? firewallPolicyArn;
  /// Property firewallPolicyChangeProtection
  final pulumi.Input<bool?>? firewallPolicyChangeProtection;
  /// Property subnetChangeProtection
  final pulumi.Input<bool?>? subnetChangeProtection;
  /// Property subnetMappings
  final pulumi.Input<List<SubnetMappingNetworkFirewallFirewallResponse>?>? subnetMappings;
  /// Property tags
  final pulumi.Input<List<TagResponse>?>? tags;
  /// Property vpcId
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [AwsNetworkFirewallFirewallPropertiesResponse].
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
  const AwsNetworkFirewallFirewallPropertiesResponse({
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
      'subnetMappings': ?pulumi.Input.mapOptionalInputValue<List<SubnetMappingNetworkFirewallFirewallResponse>, List<Map<String, dynamic>>>(subnetMappings, (value) => pulumi.Input.encodeList<SubnetMappingNetworkFirewallFirewallResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsNetworkFirewallFirewallPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsNetworkFirewallFirewallPropertiesResponse(
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointIds: (() { final guardedValue = map['endpointIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      firewallArn: (() { final guardedValue = map['firewallArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallName: (() { final guardedValue = map['firewallName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicyArn: (() { final guardedValue = map['firewallPolicyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicyChangeProtection: (() { final guardedValue = map['firewallPolicyChangeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetChangeProtection: (() { final guardedValue = map['subnetChangeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetMappings: (() { final guardedValue = map['subnetMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetMappingNetworkFirewallFirewallResponse>(guardedValue, (value) => SubnetMappingNetworkFirewallFirewallResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
