// ignore_for_file: unused_element, unnecessary_cast

import 'compute_settings.dart';
import 'facility_settings.dart';
import 'labor_settings.dart';
import 'management_settings.dart';
import 'network_settings.dart';
import 'security_settings.dart';
import 'storage_settings.dart';

/// On-premise settings.
class OnPremiseSettings {
  /// Compute settings.
  final ComputeSettings computeSettings;
  /// Facility settings.
  final FacilitySettings facilitySettings;
  /// Labour settings.
  final LaborSettings laborSettings;
  /// Management settings.
  final ManagementSettings? managementSettings;
  /// Network settings.
  final NetworkSettings networkSettings;
  /// Security settings.
  final SecuritySettings securitySettings;
  /// Storage settings.
  final StorageSettings storageSettings;

  /// Creates a new [OnPremiseSettings].
  /// [computeSettings] Compute settings.
  /// [facilitySettings] Facility settings.
  /// [laborSettings] Labour settings.
  /// [managementSettings] Management settings.
  /// [networkSettings] Network settings.
  /// [securitySettings] Security settings.
  /// [storageSettings] Storage settings.
  OnPremiseSettings({
    required this.computeSettings,
    required this.facilitySettings,
    required this.laborSettings,
    this.managementSettings,
    required this.networkSettings,
    required this.securitySettings,
    required this.storageSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeSettings': computeSettings.toMap(),
      'facilitySettings': facilitySettings.toMap(),
      'laborSettings': laborSettings.toMap(),
      'managementSettings': ?managementSettings == null ? null : managementSettings!.toMap(),
      'networkSettings': networkSettings.toMap(),
      'securitySettings': securitySettings.toMap(),
      'storageSettings': storageSettings.toMap(),
    };
  }

  factory OnPremiseSettings.fromMap(Map<String, dynamic> map) {
    return OnPremiseSettings(
      computeSettings: ComputeSettings.fromMap((map['computeSettings'] as Map).cast<String, dynamic>()),
      facilitySettings: FacilitySettings.fromMap((map['facilitySettings'] as Map).cast<String, dynamic>()),
      laborSettings: LaborSettings.fromMap((map['laborSettings'] as Map).cast<String, dynamic>()),
      managementSettings: map['managementSettings'] == null ? null : ManagementSettings.fromMap((map['managementSettings'] as Map).cast<String, dynamic>()),
      networkSettings: NetworkSettings.fromMap((map['networkSettings'] as Map).cast<String, dynamic>()),
      securitySettings: SecuritySettings.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      storageSettings: StorageSettings.fromMap((map['storageSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

