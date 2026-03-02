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
  final pulumi.Input<String> bcdrSecurityLevel;
  /// Feature Settings
  final pulumi.Input<FeatureSettingsResponse>? featureSettings;
  /// Is vault protected by resource guard
  final pulumi.Input<bool> isVaultProtectedByResourceGuard;
  /// Monitoring Settings
  final pulumi.Input<MonitoringSettingsResponse>? monitoringSettings;
  /// Provisioning state of the BackupVault resource
  final pulumi.Input<String> provisioningState;
  /// List of replicated regions for Backup Vault
  final pulumi.Input<List<String>>? replicatedRegions;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Resource move details for backup vault
  final pulumi.Input<ResourceMoveDetailsResponse> resourceMoveDetails;
  /// Resource move state for backup vault
  final pulumi.Input<String> resourceMoveState;
  /// Secure Score of Backup Vault
  final pulumi.Input<String> secureScore;
  /// Security Settings
  final pulumi.Input<SecuritySettingsResponse>? securitySettings;
  /// Storage Settings
  final pulumi.Input<List<StorageSettingResponse>> storageSettings;

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
      'featureSettings': ?pulumi.Input.mapOptionalInputValue<FeatureSettingsResponse, Map<String, dynamic>>(featureSettings, (value) => value.toMap()),
      'isVaultProtectedByResourceGuard': isVaultProtectedByResourceGuard,
      'monitoringSettings': ?pulumi.Input.mapOptionalInputValue<MonitoringSettingsResponse, Map<String, dynamic>>(monitoringSettings, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'replicatedRegions': ?replicatedRegions,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'resourceMoveDetails': pulumi.Input.mapInputValue<ResourceMoveDetailsResponse, Map<String, dynamic>>(resourceMoveDetails, (value) => value.toMap()),
      'resourceMoveState': resourceMoveState,
      'secureScore': secureScore,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<SecuritySettingsResponse, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'storageSettings': pulumi.Input.mapInputValue<List<StorageSettingResponse>, List<Map<String, dynamic>>>(storageSettings, (value) => pulumi.Input.encodeList<StorageSettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupVaultResponse.fromMap(Map<String, dynamic> map) {
    return BackupVaultResponse(
      bcdrSecurityLevel: (map['bcdrSecurityLevel'] as String).input(),
      featureSettings: map['featureSettings'] == null ? null : (FeatureSettingsResponse.fromMap((map['featureSettings'] as Map).cast<String, dynamic>())).input(),
      isVaultProtectedByResourceGuard: (map['isVaultProtectedByResourceGuard'] as bool).input(),
      monitoringSettings: map['monitoringSettings'] == null ? null : (MonitoringSettingsResponse.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      replicatedRegions: map['replicatedRegions'] == null ? null : ((map['replicatedRegions'] as List).cast<String>()).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests'] as List).cast<String>()).input(),
      resourceMoveDetails: (ResourceMoveDetailsResponse.fromMap((map['resourceMoveDetails'] as Map).cast<String, dynamic>())).input(),
      resourceMoveState: (map['resourceMoveState'] as String).input(),
      secureScore: (map['secureScore'] as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>())).input(),
      storageSettings: (pulumi.Input.decodeList<StorageSettingResponse>(map['storageSettings'], (value) => StorageSettingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

