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
  final pulumi.Input<MaintenanceModeConfigurationModel>?
  maintenanceModeConfiguration;

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
      'enclaveDefaultSettings':
          ?pulumi.Input.mapOptionalInputValue<
            EnclaveDefaultSettingsModel,
            Map<String, dynamic>
          >(enclaveDefaultSettings, (value) => value.toMap()),
      'enclaveRoleAssignments':
          ?pulumi.Input.mapOptionalInputValue<
            List<RoleAssignmentItem>,
            List<Map<String, dynamic>>
          >(
            enclaveRoleAssignments,
            (value) =>
                pulumi.Input.encodeList<
                  RoleAssignmentItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enclaveVirtualNetwork':
          pulumi.Input.mapInputValue<
            EnclaveVirtualNetworkModel,
            Map<String, dynamic>
          >(enclaveVirtualNetwork, (value) => value.toMap()),
      'governedServiceList':
          ?pulumi.Input.mapOptionalInputValue<
            List<GovernedServiceItem>,
            List<Map<String, dynamic>>
          >(
            governedServiceList,
            (value) =>
                pulumi.Input.encodeList<
                  GovernedServiceItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceModeConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            MaintenanceModeConfigurationModel,
            Map<String, dynamic>
          >(maintenanceModeConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualEnclaveName': ?virtualEnclaveName,
      'workloadRoleAssignments':
          ?pulumi.Input.mapOptionalInputValue<
            List<RoleAssignmentItem>,
            List<Map<String, dynamic>>
          >(
            workloadRoleAssignments,
            (value) =>
                pulumi.Input.encodeList<
                  RoleAssignmentItem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualEnclaveArgs.fromMap(Map<String, dynamic> map) {
    return VirtualEnclaveArgs(
      bastionEnabled: (() {
        final guardedValue = map['bastionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      communityResourceId: pulumi.Input.fromValue(
        map['communityResourceId'] as String,
      ),
      enclaveDefaultSettings: (() {
        final guardedValue = map['enclaveDefaultSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnclaveDefaultSettingsModel.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enclaveRoleAssignments: (() {
        final guardedValue = map['enclaveRoleAssignments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RoleAssignmentItem>(
            guardedValue,
            (value) => RoleAssignmentItem.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enclaveVirtualNetwork: pulumi.Input.fromValue(
        EnclaveVirtualNetworkModel.fromMap(
          (map['enclaveVirtualNetwork']! as Map).cast<String, dynamic>(),
        ),
      ),
      governedServiceList: (() {
        final guardedValue = map['governedServiceList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GovernedServiceItem>(
            guardedValue,
            (value) => GovernedServiceItem.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceModeConfiguration: (() {
        final guardedValue = map['maintenanceModeConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaintenanceModeConfigurationModel.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualEnclaveName: (() {
        final guardedValue = map['virtualEnclaveName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workloadRoleAssignments: (() {
        final guardedValue = map['workloadRoleAssignments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RoleAssignmentItem>(
            guardedValue,
            (value) => RoleAssignmentItem.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
