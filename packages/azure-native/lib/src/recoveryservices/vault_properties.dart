// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_settings.dart';
import 'restore_settings.dart';
import 'security_settings.dart';
import 'vault_properties_encryption.dart';
import 'vault_properties_redundancy_settings.dart';

/// Properties of the vault.
class VaultProperties {
  /// Customer Managed Key details of the resource.
  final VaultPropertiesEncryption? encryption;
  /// Monitoring Settings of the vault
  final MonitoringSettings? monitoringSettings;
  /// property to enable or disable resource provider inbound network traffic from public clients
  final String? publicNetworkAccess;
  /// The redundancy Settings of a Vault
  final VaultPropertiesRedundancySettings? redundancySettings;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Restore Settings of the vault
  final RestoreSettings? restoreSettings;
  /// Security Settings of the vault
  final SecuritySettings? securitySettings;

  /// Creates a new [VaultProperties].
  /// [encryption] Customer Managed Key details of the resource.
  /// [monitoringSettings] Monitoring Settings of the vault
  /// [publicNetworkAccess] property to enable or disable resource provider inbound network traffic from public clients
  /// [redundancySettings] The redundancy Settings of a Vault
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [restoreSettings] Restore Settings of the vault
  /// [securitySettings] Security Settings of the vault
  VaultProperties({
    this.encryption,
    this.monitoringSettings,
    this.publicNetworkAccess,
    this.redundancySettings,
    this.resourceGuardOperationRequests,
    this.restoreSettings,
    this.securitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'monitoringSettings': ?monitoringSettings == null ? null : monitoringSettings!.toMap(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'redundancySettings': ?redundancySettings == null ? null : redundancySettings!.toMap(),
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'restoreSettings': ?restoreSettings == null ? null : restoreSettings!.toMap(),
      'securitySettings': ?securitySettings == null ? null : securitySettings!.toMap(),
    };
  }

  factory VaultProperties.fromMap(Map<String, dynamic> map) {
    return VaultProperties(
      encryption: map['encryption'] == null ? null : VaultPropertiesEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      monitoringSettings: map['monitoringSettings'] == null ? null : MonitoringSettings.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      redundancySettings: map['redundancySettings'] == null ? null : VaultPropertiesRedundancySettings.fromMap((map['redundancySettings'] as Map).cast<String, dynamic>()),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      restoreSettings: map['restoreSettings'] == null ? null : RestoreSettings.fromMap((map['restoreSettings'] as Map).cast<String, dynamic>()),
      securitySettings: map['securitySettings'] == null ? null : SecuritySettings.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

