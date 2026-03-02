// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_settings.dart';
import 'monitoring_settings.dart';
import 'security_settings.dart';
import 'storage_setting.dart';

/// Backup Vault
class BackupVault {
  /// Feature Settings
  final pulumi.Input<FeatureSettings>? featureSettings;
  /// Monitoring Settings
  final pulumi.Input<MonitoringSettings>? monitoringSettings;
  /// List of replicated regions for Backup Vault
  final pulumi.Input<List<String>>? replicatedRegions;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Security Settings
  final pulumi.Input<SecuritySettings>? securitySettings;
  /// Storage Settings
  final pulumi.Input<List<StorageSetting>> storageSettings;

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
      'featureSettings': ?pulumi.Input.mapOptionalInputValue<FeatureSettings, Map<String, dynamic>>(featureSettings, (value) => value.toMap()),
      'monitoringSettings': ?pulumi.Input.mapOptionalInputValue<MonitoringSettings, Map<String, dynamic>>(monitoringSettings, (value) => value.toMap()),
      'replicatedRegions': ?replicatedRegions,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<SecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'storageSettings': pulumi.Input.mapInputValue<List<StorageSetting>, List<Map<String, dynamic>>>(storageSettings, (value) => pulumi.Input.encodeList<StorageSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupVault.fromMap(Map<String, dynamic> map) {
    return BackupVault(
      featureSettings: map['featureSettings'] == null ? null : (FeatureSettings.fromMap((map['featureSettings']! as Map).cast<String, dynamic>())).input(),
      monitoringSettings: map['monitoringSettings'] == null ? null : (MonitoringSettings.fromMap((map['monitoringSettings']! as Map).cast<String, dynamic>())).input(),
      replicatedRegions: map['replicatedRegions'] == null ? null : ((map['replicatedRegions']! as List).cast<String>()).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests']! as List).cast<String>()).input(),
      securitySettings: map['securitySettings'] == null ? null : (SecuritySettings.fromMap((map['securitySettings']! as Map).cast<String, dynamic>())).input(),
      storageSettings: (pulumi.Input.decodeList<StorageSetting>(map['storageSettings'], (value) => StorageSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

