// ignore_for_file: unused_element, unnecessary_cast

import 'compute_settings_response.dart';
import 'facility_settings_response.dart';
import 'labor_settings_response.dart';
import 'management_settings_response.dart';
import 'network_settings_response.dart';
import 'security_settings_response.dart';
import 'storage_settings_response.dart';

/// On-premise settings.
class OnPremiseSettingsResponse {
  /// Compute settings.
  final ComputeSettingsResponse computeSettings;
  /// Facility settings.
  final FacilitySettingsResponse facilitySettings;
  /// Labour settings.
  final LaborSettingsResponse laborSettings;
  /// Management settings.
  final ManagementSettingsResponse? managementSettings;
  /// Network settings.
  final NetworkSettingsResponse networkSettings;
  /// Security settings.
  final SecuritySettingsResponse securitySettings;
  /// Storage settings.
  final StorageSettingsResponse storageSettings;

  /// Creates a new [OnPremiseSettingsResponse].
  /// [computeSettings] Compute settings.
  /// [facilitySettings] Facility settings.
  /// [laborSettings] Labour settings.
  /// [managementSettings] Management settings.
  /// [networkSettings] Network settings.
  /// [securitySettings] Security settings.
  /// [storageSettings] Storage settings.
  OnPremiseSettingsResponse({
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

  factory OnPremiseSettingsResponse.fromMap(Map<String, dynamic> map) {
    return OnPremiseSettingsResponse(
      computeSettings: ComputeSettingsResponse.fromMap((map['computeSettings'] as Map).cast<String, dynamic>()),
      facilitySettings: FacilitySettingsResponse.fromMap((map['facilitySettings'] as Map).cast<String, dynamic>()),
      laborSettings: LaborSettingsResponse.fromMap((map['laborSettings'] as Map).cast<String, dynamic>()),
      managementSettings: map['managementSettings'] == null ? null : ManagementSettingsResponse.fromMap((map['managementSettings'] as Map).cast<String, dynamic>()),
      networkSettings: NetworkSettingsResponse.fromMap((map['networkSettings'] as Map).cast<String, dynamic>()),
      securitySettings: SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      storageSettings: StorageSettingsResponse.fromMap((map['storageSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

