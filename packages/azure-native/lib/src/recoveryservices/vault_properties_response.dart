// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_settings_response.dart';
import 'private_endpoint_connection_vault_properties_response.dart';
import 'restore_settings_response.dart';
import 'security_settings_response.dart';
import 'upgrade_details_response.dart';
import 'vault_properties_response_encryption.dart';
import 'vault_properties_response_move_details.dart';
import 'vault_properties_response_redundancy_settings.dart';

/// Properties of the vault.
class VaultPropertiesResponse {
  /// Backup storage version
  final String backupStorageVersion;
  /// Security levels of Recovery Services Vault for business continuity and disaster recovery
  final String bcdrSecurityLevel;
  /// Customer Managed Key details of the resource.
  final VaultPropertiesResponseEncryption? encryption;
  /// Monitoring Settings of the vault
  final MonitoringSettingsResponse? monitoringSettings;
  /// The details of the latest move operation performed on the Azure Resource
  final VaultPropertiesResponseMoveDetails? moveDetails;
  /// The State of the Resource after the move operation
  final String moveState;
  /// List of private endpoint connection.
  final List<PrivateEndpointConnectionVaultPropertiesResponse> privateEndpointConnections;
  /// Private endpoint state for backup.
  final String privateEndpointStateForBackup;
  /// Private endpoint state for site recovery.
  final String privateEndpointStateForSiteRecovery;
  /// Provisioning State.
  final String provisioningState;
  /// property to enable or disable resource provider inbound network traffic from public clients
  final String? publicNetworkAccess;
  /// The redundancy Settings of a Vault
  final VaultPropertiesResponseRedundancySettings? redundancySettings;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Restore Settings of the vault
  final RestoreSettingsResponse? restoreSettings;
  /// Secure Score of Recovery Services Vault
  final String secureScore;
  /// Security Settings of the vault
  final SecuritySettingsResponse? securitySettings;
  /// Details for upgrading vault.
  final UpgradeDetailsResponse? upgradeDetails;

  /// Creates a new [VaultPropertiesResponse].
  /// [backupStorageVersion] Backup storage version
  /// [bcdrSecurityLevel] Security levels of Recovery Services Vault for business continuity and disaster recovery
  /// [encryption] Customer Managed Key details of the resource.
  /// [monitoringSettings] Monitoring Settings of the vault
  /// [moveDetails] The details of the latest move operation performed on the Azure Resource
  /// [moveState] The State of the Resource after the move operation
  /// [privateEndpointConnections] List of private endpoint connection.
  /// [privateEndpointStateForBackup] Private endpoint state for backup.
  /// [privateEndpointStateForSiteRecovery] Private endpoint state for site recovery.
  /// [provisioningState] Provisioning State.
  /// [publicNetworkAccess] property to enable or disable resource provider inbound network traffic from public clients
  /// [redundancySettings] The redundancy Settings of a Vault
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [restoreSettings] Restore Settings of the vault
  /// [secureScore] Secure Score of Recovery Services Vault
  /// [securitySettings] Security Settings of the vault
  /// [upgradeDetails] Details for upgrading vault.
  VaultPropertiesResponse({
    required this.backupStorageVersion,
    required this.bcdrSecurityLevel,
    this.encryption,
    this.monitoringSettings,
    this.moveDetails,
    required this.moveState,
    required this.privateEndpointConnections,
    required this.privateEndpointStateForBackup,
    required this.privateEndpointStateForSiteRecovery,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.redundancySettings,
    this.resourceGuardOperationRequests,
    this.restoreSettings,
    required this.secureScore,
    this.securitySettings,
    this.upgradeDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupStorageVersion': backupStorageVersion,
      'bcdrSecurityLevel': bcdrSecurityLevel,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'monitoringSettings': ?monitoringSettings == null ? null : monitoringSettings!.toMap(),
      'moveDetails': ?moveDetails == null ? null : moveDetails!.toMap(),
      'moveState': moveState,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionVaultPropertiesResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateEndpointStateForBackup': privateEndpointStateForBackup,
      'privateEndpointStateForSiteRecovery': privateEndpointStateForSiteRecovery,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancySettings': ?redundancySettings == null ? null : redundancySettings!.toMap(),
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'restoreSettings': ?restoreSettings == null ? null : restoreSettings!.toMap(),
      'secureScore': secureScore,
      'securitySettings': ?securitySettings == null ? null : securitySettings!.toMap(),
      'upgradeDetails': ?upgradeDetails == null ? null : upgradeDetails!.toMap(),
    };
  }

  factory VaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponse(
      backupStorageVersion: map['backupStorageVersion'] as String,
      bcdrSecurityLevel: map['bcdrSecurityLevel'] as String,
      encryption: map['encryption'] == null ? null : VaultPropertiesResponseEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      monitoringSettings: map['monitoringSettings'] == null ? null : MonitoringSettingsResponse.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>()),
      moveDetails: map['moveDetails'] == null ? null : VaultPropertiesResponseMoveDetails.fromMap((map['moveDetails'] as Map).cast<String, dynamic>()),
      moveState: map['moveState'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionVaultPropertiesResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionVaultPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateEndpointStateForBackup: map['privateEndpointStateForBackup'] as String,
      privateEndpointStateForSiteRecovery: map['privateEndpointStateForSiteRecovery'] as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      redundancySettings: map['redundancySettings'] == null ? null : VaultPropertiesResponseRedundancySettings.fromMap((map['redundancySettings'] as Map).cast<String, dynamic>()),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      restoreSettings: map['restoreSettings'] == null ? null : RestoreSettingsResponse.fromMap((map['restoreSettings'] as Map).cast<String, dynamic>()),
      secureScore: map['secureScore'] as String,
      securitySettings: map['securitySettings'] == null ? null : SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      upgradeDetails: map['upgradeDetails'] == null ? null : UpgradeDetailsResponse.fromMap((map['upgradeDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

