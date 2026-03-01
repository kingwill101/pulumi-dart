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
  CommunityArgs({
    pulumi.Output<String>? addressSpace,
    pulumi.Output<ApprovalSettings>? approvalSettings,
    pulumi.Output<String>? communityName,
    pulumi.Output<List<RoleAssignmentItem>>? communityRoleAssignments,
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? firewallSku,
    pulumi.Output<List<GovernedServiceItem>>? governedServiceList,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<MaintenanceModeConfigurationModel>? maintenanceModeConfiguration,
    pulumi.Output<String>? policyOverride,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      addressSpace = pulumi.Input.asOptionalInput<String>(addressSpace),
      approvalSettings = pulumi.Input.asOptionalInput<ApprovalSettings>(approvalSettings),
      communityName = pulumi.Input.asOptionalInput<String>(communityName),
      communityRoleAssignments = pulumi.Input.asOptionalInput<List<RoleAssignmentItem>>(communityRoleAssignments),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      firewallSku = pulumi.Input.asOptionalInput<String>(firewallSku),
      governedServiceList = pulumi.Input.asOptionalInput<List<GovernedServiceItem>>(governedServiceList),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceModeConfiguration = pulumi.Input.asOptionalInput<MaintenanceModeConfigurationModel>(maintenanceModeConfiguration),
      policyOverride = pulumi.Input.asOptionalInput<String>(policyOverride),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      addressSpace: map['addressSpace'] == null ? null : pulumi.Output.create<String>(map['addressSpace'] as String),
      approvalSettings: map['approvalSettings'] == null ? null : pulumi.Output.create<ApprovalSettings>(ApprovalSettings.fromMap((map['approvalSettings'] as Map).cast<String, dynamic>())),
      communityName: map['communityName'] == null ? null : pulumi.Output.create<String>(map['communityName'] as String),
      communityRoleAssignments: map['communityRoleAssignments'] == null ? null : pulumi.Output.create<List<RoleAssignmentItem>>(pulumi.Input.decodeList<RoleAssignmentItem>(map['communityRoleAssignments'], (value) => RoleAssignmentItem.fromMap((value as Map).cast<String, dynamic>()))),
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      firewallSku: map['firewallSku'] == null ? null : pulumi.Output.create<String>(map['firewallSku'] as String),
      governedServiceList: map['governedServiceList'] == null ? null : pulumi.Output.create<List<GovernedServiceItem>>(pulumi.Input.decodeList<GovernedServiceItem>(map['governedServiceList'], (value) => GovernedServiceItem.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceModeConfiguration: map['maintenanceModeConfiguration'] == null ? null : pulumi.Output.create<MaintenanceModeConfigurationModel>(MaintenanceModeConfigurationModel.fromMap((map['maintenanceModeConfiguration'] as Map).cast<String, dynamic>())),
      policyOverride: map['policyOverride'] == null ? null : pulumi.Output.create<String>(map['policyOverride'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

