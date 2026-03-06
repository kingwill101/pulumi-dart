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
  const BackupVault({
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
      featureSettings: (() { final guardedValue = map['featureSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringSettings: (() { final guardedValue = map['monitoringSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicatedRegions: (() { final guardedValue = map['replicatedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageSetting>(map['storageSettings']!, (value) => StorageSetting.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

