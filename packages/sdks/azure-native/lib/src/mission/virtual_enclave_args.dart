// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enclave_default_settings_model.dart';
import 'enclave_virtual_network_model.dart';
import 'governed_service_item.dart';
import 'maintenance_mode_configuration_model.dart';
import 'managed_service_identity.dart';
import 'role_assignment_item.dart';

/// {@template pulumi_mission_virtual_enclave_args_doc}
/// The set of arguments for VirtualEnclave.
/// {@endtemplate}
/// {@macro pulumi_mission_virtual_enclave_args_doc}
class VirtualEnclaveArgs {
  /// Deploy Bastion service (True or False).
  final pulumi.Input<bool>? bastionEnabled;
  /// Community Resource Id.
  final pulumi.Input<String> communityResourceId;
  /// Enclave default settings.
  final pulumi.Input<EnclaveDefaultSettingsModel>? enclaveDefaultSettings;
  /// Enclave role assignments
  final pulumi.Input<List<RoleAssignmentItem>>? enclaveRoleAssignments;
  /// Virtual Network.
  final pulumi.Input<EnclaveVirtualNetworkModel> enclaveVirtualNetwork;
  /// Enclave specific policies
  final pulumi.Input<List<GovernedServiceItem>>? governedServiceList;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maintenance Mode configuration.
  final pulumi.Input<MaintenanceModeConfigurationModel>? maintenanceModeConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the enclaveResource Resource
  final pulumi.Input<String>? virtualEnclaveName;
  /// Workload role assignments
  final pulumi.Input<List<RoleAssignmentItem>>? workloadRoleAssignments;

  /// Creates a new [VirtualEnclaveArgs].
  /// [bastionEnabled] Deploy Bastion service (True or False).
  /// [communityResourceId] Community Resource Id.
  /// [enclaveDefaultSettings] Enclave default settings.
  /// [enclaveRoleAssignments] Enclave role assignments
  /// [enclaveVirtualNetwork] Virtual Network.
  /// [governedServiceList] Enclave specific policies
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [maintenanceModeConfiguration] Maintenance Mode configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualEnclaveName] The name of the enclaveResource Resource
  /// [workloadRoleAssignments] Workload role assignments
  VirtualEnclaveArgs({
    this.bastionEnabled,
    required this.communityResourceId,
    this.enclaveDefaultSettings,
    this.enclaveRoleAssignments,
    required this.enclaveVirtualNetwork,
    this.governedServiceList,
    this.identity,
    this.location,
    this.maintenanceModeConfiguration,
    required this.resourceGroupName,
    this.tags,
    this.virtualEnclaveName,
    this.workloadRoleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bastionEnabled': ?bastionEnabled,
      'communityResourceId': communityResourceId,
      'enclaveDefaultSettings': ?pulumi.Input.mapOptionalInputValue<EnclaveDefaultSettingsModel, Map<String, dynamic>>(enclaveDefaultSettings, (value) => value.toMap()),
      'enclaveRoleAssignments': ?pulumi.Input.mapOptionalInputValue<List<RoleAssignmentItem>, List<Map<String, dynamic>>>(enclaveRoleAssignments, (value) => pulumi.Input.encodeList<RoleAssignmentItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enclaveVirtualNetwork': pulumi.Input.mapInputValue<EnclaveVirtualNetworkModel, Map<String, dynamic>>(enclaveVirtualNetwork, (value) => value.toMap()),
      'governedServiceList': ?pulumi.Input.mapOptionalInputValue<List<GovernedServiceItem>, List<Map<String, dynamic>>>(governedServiceList, (value) => pulumi.Input.encodeList<GovernedServiceItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceModeConfiguration': ?pulumi.Input.mapOptionalInputValue<MaintenanceModeConfigurationModel, Map<String, dynamic>>(maintenanceModeConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualEnclaveName': ?virtualEnclaveName,
      'workloadRoleAssignments': ?pulumi.Input.mapOptionalInputValue<List<RoleAssignmentItem>, List<Map<String, dynamic>>>(workloadRoleAssignments, (value) => pulumi.Input.encodeList<RoleAssignmentItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualEnclaveArgs.fromMap(Map<String, dynamic> map) {
    return VirtualEnclaveArgs(
      bastionEnabled: map['bastionEnabled'] == null ? null : (map['bastionEnabled']! as bool).input(),
      communityResourceId: (map['communityResourceId'] as String).input(),
      enclaveDefaultSettings: map['enclaveDefaultSettings'] == null ? null : (EnclaveDefaultSettingsModel.fromMap((map['enclaveDefaultSettings']! as Map).cast<String, dynamic>())).input(),
      enclaveRoleAssignments: map['enclaveRoleAssignments'] == null ? null : (pulumi.Input.decodeList<RoleAssignmentItem>(map['enclaveRoleAssignments']!, (value) => RoleAssignmentItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enclaveVirtualNetwork: (EnclaveVirtualNetworkModel.fromMap((map['enclaveVirtualNetwork'] as Map).cast<String, dynamic>())).input(),
      governedServiceList: map['governedServiceList'] == null ? null : (pulumi.Input.decodeList<GovernedServiceItem>(map['governedServiceList']!, (value) => GovernedServiceItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceModeConfiguration: map['maintenanceModeConfiguration'] == null ? null : (MaintenanceModeConfigurationModel.fromMap((map['maintenanceModeConfiguration']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualEnclaveName: map['virtualEnclaveName'] == null ? null : (map['virtualEnclaveName']! as String).input(),
      workloadRoleAssignments: map['workloadRoleAssignments'] == null ? null : (pulumi.Input.decodeList<RoleAssignmentItem>(map['workloadRoleAssignments']!, (value) => RoleAssignmentItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

