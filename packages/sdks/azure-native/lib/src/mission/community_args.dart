// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_settings.dart';
import 'governed_service_item.dart';
import 'maintenance_mode_configuration_model.dart';
import 'managed_service_identity.dart';
import 'role_assignment_item.dart';

/// {@template pulumi_mission_community_args_doc}
/// The set of arguments for Community.
/// {@endtemplate}
/// {@macro pulumi_mission_community_args_doc}
class CommunityArgs {
  /// Address Space.
  final pulumi.Input<String>? addressSpace;
  /// Approval requirements for various actions on the community's resources.
  final pulumi.Input<ApprovalSettings>? approvalSettings;
  /// The name of the communityResource Resource
  final pulumi.Input<String>? communityName;
  /// Community role assignments
  final pulumi.Input<List<RoleAssignmentItem>>? communityRoleAssignments;
  /// DNS Servers.
  final pulumi.Input<List<String>>? dnsServers;
  /// SKU of the community's Azure Firewall (Basic, Standard, Premium). Standard is the default
  final pulumi.Input<String>? firewallSku;
  /// List of services governed by a community.
  final pulumi.Input<List<GovernedServiceItem>>? governedServiceList;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maintenance Mode configuration.
  final pulumi.Input<MaintenanceModeConfigurationModel>? maintenanceModeConfiguration;
  /// Policy override setting for the community. Specifies whether to apply enclave-specific policies or disable policy enforcement.
  final pulumi.Input<String>? policyOverride;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CommunityArgs].
  /// [addressSpace] Address Space.
  /// [approvalSettings] Approval requirements for various actions on the community's resources.
  /// [communityName] The name of the communityResource Resource
  /// [communityRoleAssignments] Community role assignments
  /// [dnsServers] DNS Servers.
  /// [firewallSku] SKU of the community's Azure Firewall (Basic, Standard, Premium). Standard is the default
  /// [governedServiceList] List of services governed by a community.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [maintenanceModeConfiguration] Maintenance Mode configuration.
  /// [policyOverride] Policy override setting for the community. Specifies whether to apply enclave-specific policies or disable policy enforcement.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const CommunityArgs({
    this.addressSpace,
    this.approvalSettings,
    this.communityName,
    this.communityRoleAssignments,
    this.dnsServers,
    this.firewallSku,
    this.governedServiceList,
    this.identity,
    this.location,
    this.maintenanceModeConfiguration,
    this.policyOverride,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'approvalSettings': ?pulumi.Input.mapOptionalInputValue<ApprovalSettings, Map<String, dynamic>>(approvalSettings, (value) => value.toMap()),
      'communityName': ?communityName,
      'communityRoleAssignments': ?pulumi.Input.mapOptionalInputValue<List<RoleAssignmentItem>, List<Map<String, dynamic>>>(communityRoleAssignments, (value) => pulumi.Input.encodeList<RoleAssignmentItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsServers': ?dnsServers,
      'firewallSku': ?firewallSku,
      'governedServiceList': ?pulumi.Input.mapOptionalInputValue<List<GovernedServiceItem>, List<Map<String, dynamic>>>(governedServiceList, (value) => pulumi.Input.encodeList<GovernedServiceItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceModeConfiguration': ?pulumi.Input.mapOptionalInputValue<MaintenanceModeConfigurationModel, Map<String, dynamic>>(maintenanceModeConfiguration, (value) => value.toMap()),
      'policyOverride': ?policyOverride,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CommunityArgs.fromMap(Map<String, dynamic> map) {
    return CommunityArgs(
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approvalSettings: (() { final guardedValue = map['approvalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApprovalSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      communityName: (() { final guardedValue = map['communityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      communityRoleAssignments: (() { final guardedValue = map['communityRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoleAssignmentItem>(guardedValue, (value) => RoleAssignmentItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      firewallSku: (() { final guardedValue = map['firewallSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      governedServiceList: (() { final guardedValue = map['governedServiceList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GovernedServiceItem>(guardedValue, (value) => GovernedServiceItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceModeConfiguration: (() { final guardedValue = map['maintenanceModeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceModeConfigurationModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyOverride: (() { final guardedValue = map['policyOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
