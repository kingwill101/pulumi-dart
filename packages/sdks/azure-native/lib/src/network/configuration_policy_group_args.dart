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
    pulumi.Output<String>? configurationPolicyGroupName,
    pulumi.Output<String>? id,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<List<VpnServerConfigurationPolicyGroupMember>>? policyMembers,
    pulumi.Output<int>? priority,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vpnServerConfigurationName,
  }) :
      configurationPolicyGroupName = pulumi.Input.asOptionalInput<String>(configurationPolicyGroupName),
      id = pulumi.Input.asOptionalInput<String>(id),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyMembers = pulumi.Input.asOptionalInput<List<VpnServerConfigurationPolicyGroupMember>>(policyMembers),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vpnServerConfigurationName = pulumi.Input.asInput<String>(vpnServerConfigurationName);

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
      configurationPolicyGroupName: map['configurationPolicyGroupName'] == null ? null : pulumi.Output.create<String>(map['configurationPolicyGroupName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyMembers: map['policyMembers'] == null ? null : pulumi.Output.create<List<VpnServerConfigurationPolicyGroupMember>>(pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMember>(map['policyMembers'], (value) => VpnServerConfigurationPolicyGroupMember.fromMap((value as Map).cast<String, dynamic>()))),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vpnServerConfigurationName: pulumi.Output.create<String>(map['vpnServerConfigurationName'] as String),
    );
  }
}

