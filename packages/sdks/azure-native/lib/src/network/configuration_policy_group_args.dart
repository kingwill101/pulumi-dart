// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_policy_group_member.dart';

/// {@template pulumi_network_configuration_policy_group_args_doc}
/// The set of arguments for ConfigurationPolicyGroup.
/// {@endtemplate}
/// {@macro pulumi_network_configuration_policy_group_args_doc}
class ConfigurationPolicyGroupArgs {
  /// The name of the ConfigurationPolicyGroup.
  final pulumi.Input<String>? configurationPolicyGroupName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  final pulumi.Input<bool>? isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroupMember>>? policyMembers;
  /// Priority for VpnServerConfigurationPolicyGroup.
  final pulumi.Input<int>? priority;
  /// The resource group name of the ConfigurationPolicyGroup.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VpnServerConfiguration.
  final pulumi.Input<String> vpnServerConfigurationName;

  /// Creates a new [ConfigurationPolicyGroupArgs].
  /// [configurationPolicyGroupName] The name of the ConfigurationPolicyGroup.
  /// [id] Resource ID.
  /// [isDefault] Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [policyMembers] Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  /// [priority] Priority for VpnServerConfigurationPolicyGroup.
  /// [resourceGroupName] The resource group name of the ConfigurationPolicyGroup.
  /// [vpnServerConfigurationName] The name of the VpnServerConfiguration.
  ConfigurationPolicyGroupArgs({
    this.configurationPolicyGroupName,
    this.id,
    this.isDefault,
    this.name,
    this.policyMembers,
    this.priority,
    required this.resourceGroupName,
    required this.vpnServerConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationPolicyGroupName': ?configurationPolicyGroupName,
      'id': ?id,
      'isDefault': ?isDefault,
      'name': ?name,
      'policyMembers': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationPolicyGroupMember>, List<Map<String, dynamic>>>(policyMembers, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'vpnServerConfigurationName': vpnServerConfigurationName,
    };
  }

  factory ConfigurationPolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyGroupArgs(
      configurationPolicyGroupName: (() { final guardedValue = map['configurationPolicyGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyMembers: (() { final guardedValue = map['policyMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMember>(guardedValue, (value) => VpnServerConfigurationPolicyGroupMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vpnServerConfigurationName: pulumi.Input.fromValue(map['vpnServerConfigurationName'] as String),
    );
  }
}

