// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_mapping.dart';
import 'tag.dart';

/// Definition of awsNetworkFirewallFirewall
class AwsNetworkFirewallFirewallProperties {
  /// Property deleteProtection
  final pulumi.Input<bool>? deleteProtection;

  /// Property description
  final pulumi.Input<String>? description;

  /// Property endpointIds
  final pulumi.Input<List<String>>? endpointIds;

  /// A resource ARN.
  final pulumi.Input<String>? firewallArn;

  /// Property firewallId
  final pulumi.Input<String>? firewallId;

  /// Property firewallName
  final pulumi.Input<String>? firewallName;

  /// A resource ARN.
  final pulumi.Input<String>? firewallPolicyArn;

  /// Property firewallPolicyChangeProtection
  final pulumi.Input<bool>? firewallPolicyChangeProtection;

  /// Property subnetChangeProtection
  final pulumi.Input<bool>? subnetChangeProtection;

  /// Property subnetMappings
  final pulumi.Input<List<SubnetMapping>>? subnetMappings;

  /// Property tags
  final pulumi.Input<List<Tag>>? tags;

  /// Property vpcId
  final pulumi.Input<String>? vpcId;

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
      'subnetMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubnetMapping>,
            List<Map<String, dynamic>>
          >(
            subnetMappings,
            (value) =>
                pulumi.Input.encodeList<SubnetMapping, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<Tag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'vpcId': ?vpcId,
    };
  }

  factory AwsNetworkFirewallFirewallProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsNetworkFirewallFirewallProperties(
      deleteProtection: (() {
        final guardedValue = map['deleteProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointIds: (() {
        final guardedValue = map['endpointIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      firewallArn: (() {
        final guardedValue = map['firewallArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firewallId: (() {
        final guardedValue = map['firewallId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firewallName: (() {
        final guardedValue = map['firewallName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firewallPolicyArn: (() {
        final guardedValue = map['firewallPolicyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firewallPolicyChangeProtection: (() {
        final guardedValue = map['firewallPolicyChangeProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subnetChangeProtection: (() {
        final guardedValue = map['subnetChangeProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subnetMappings: (() {
        final guardedValue = map['subnetMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubnetMapping>(
            guardedValue,
            (value) =>
                SubnetMapping.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Tag>(
            guardedValue,
            (value) => Tag.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
