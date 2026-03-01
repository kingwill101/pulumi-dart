// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_settings_response.dart';
import 'monitoring_settings_response.dart';
import 'resource_move_details_response.dart';
import 'security_settings_response.dart';
import 'storage_setting_response.dart';

/// Backup Vault
class BackupVaultResponse {
  /// Security Level of Backup Vault
  final String bcdrSecurityLevel;
  /// Feature Settings
  final FeatureSettingsResponse? featureSettings;
  /// Is vault protected by resource guard
  final bool isVaultProtectedByResourceGuard;
  /// Monitoring Settings
  final MonitoringSettingsResponse? monitoringSettings;
  /// Provisioning state of the BackupVault resource
  final String provisioningState;
  /// List of replicated regions for Backup Vault
  final List<String>? replicatedRegions;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Resource move details for backup vault
  final ResourceMoveDetailsResponse resourceMoveDetails;
  /// Resource move state for backup vault
  final String resourceMoveState;
  /// Secure Score of Backup Vault
  final String secureScore;
  /// Security Settings
  final SecuritySettingsResponse? securitySettings;
  /// Storage Settings
  final List<StorageSettingResponse> storageSettings;

  /// Creates a new [BackupVaultResponse].
  /// [bcdrSecurityLevel] Security Level of Backup Vault
  /// [featureSettings] Feature Settings
  /// [isVaultProtectedByResourceGuard] Is vault protected by resource guard
  /// [monitoringSettings] Monitoring Settings
  /// [provisioningState] Provisioning state of the BackupVault resource
  /// [replicatedRegions] List of replicated regions for Backup Vault
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [resourceMoveDetails] Resource move details for backup vault
  /// [resourceMoveState] Resource move state for backup vault
  /// [secureScore] Secure Score of Backup Vault
  /// [securitySettings] Security Settings
  /// [storageSettings] Storage Settings
  BackupVaultResponse({
    required this.bcdrSecurityLevel,
    this.featureSettings,
    required this.isVaultProtectedByResourceGuard,
    this.monitoringSettings,
    required this.provisioningState,
    this.replicatedRegions,
    this.resourceGuardOperationRequests,
    required this.resourceMoveDetails,
    required this.resourceMoveState,
    required this.secureScore,
    this.securitySettings,
    required this.storageSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bcdrSecurityLevel': bcdrSecurityLevel,
      'featureSettings': ?featureSettings == null ? null : featureSettings!.toMap(),
      'isVaultProtectedByResourceGuard': isVaultProtectedByResourceGuard,
      'monitoringSettings': ?monitoringSettings == null ? null : monitoringSettings!.toMap(),
      'provisioningState': provisioningState,
      'replicatedRegions': ?replicatedRegions,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'resourceMoveDetails': resourceMoveDetails.toMap(),
      'resourceMoveState': resourceMoveState,
      'secureScore': secureScore,
      'securitySettings': ?securitySettings == null ? null : securitySettings!.toMap(),
      'storageSettings': pulumi.Input.encodeList<StorageSettingResponse, Map<String, dynamic>>(storageSettings, (value) => value.toMap()),
    };
  }

  factory BackupVaultResponse.fromMap(Map<String, dynamic> map) {
    return BackupVaultResponse(
      bcdrSecurityLevel: map['bcdrSecurityLevel'] as String,
      featureSettings: map['featureSettings'] == null ? null : FeatureSettingsResponse.fromMap((map['featureSettings'] as Map).cast<String, dynamic>()),
      isVaultProtectedByResourceGuard: map['isVaultProtectedByResourceGuard'] as bool,
      monitoringSettings: map['monitoringSettings'] == null ? null : MonitoringSettingsResponse.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      replicatedRegions: map['replicatedRegions'] == null ? null : (map['replicatedRegions'] as List).cast<String>(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      resourceMoveDetails: ResourceMoveDetailsResponse.fromMap((map['resourceMoveDetails'] as Map).cast<String, dynamic>()),
      resourceMoveState: map['resourceMoveState'] as String,
      secureScore: map['secureScore'] as String,
      securitySettings: map['securitySettings'] == null ? null : SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      storageSettings: pulumi.Input.decodeList<StorageSettingResponse>(map['storageSettings'], (value) => StorageSettingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

