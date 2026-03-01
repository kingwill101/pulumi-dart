// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_settings.dart';
import 'monitoring_settings.dart';
import 'security_settings.dart';
import 'storage_setting.dart';

/// Backup Vault
class BackupVault {
  /// Feature Settings
  final FeatureSettings? featureSettings;
  /// Monitoring Settings
  final MonitoringSettings? monitoringSettings;
  /// List of replicated regions for Backup Vault
  final List<String>? replicatedRegions;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Security Settings
  final SecuritySettings? securitySettings;
  /// Storage Settings
  final List<StorageSetting> storageSettings;

  /// Creates a new [BackupVault].
  /// [featureSettings] Feature Settings
  /// [monitoringSettings] Monitoring Settings
  /// [replicatedRegions] List of replicated regions for Backup Vault
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [securitySettings] Security Settings
  /// [storageSettings] Storage Settings
  BackupVault({
    this.featureSettings,
    this.monitoringSettings,
    this.replicatedRegions,
    this.resourceGuardOperationRequests,
    this.securitySettings,
    required this.storageSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureSettings': ?featureSettings == null ? null : featureSettings!.toMap(),
      'monitoringSettings': ?monitoringSettings == null ? null : monitoringSettings!.toMap(),
      'replicatedRegions': ?replicatedRegions,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'securitySettings': ?securitySettings == null ? null : securitySettings!.toMap(),
      'storageSettings': pulumi.Input.encodeList<StorageSetting, Map<String, dynamic>>(storageSettings, (value) => value.toMap()),
    };
  }

  factory BackupVault.fromMap(Map<String, dynamic> map) {
    return BackupVault(
      featureSettings: map['featureSettings'] == null ? null : FeatureSettings.fromMap((map['featureSettings'] as Map).cast<String, dynamic>()),
      monitoringSettings: map['monitoringSettings'] == null ? null : MonitoringSettings.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>()),
      replicatedRegions: map['replicatedRegions'] == null ? null : (map['replicatedRegions'] as List).cast<String>(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      securitySettings: map['securitySettings'] == null ? null : SecuritySettings.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      storageSettings: pulumi.Input.decodeList<StorageSetting>(map['storageSettings'], (value) => StorageSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

