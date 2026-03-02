// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<ComputeSettingsResponse> computeSettings;
  /// Facility settings.
  final pulumi.Input<FacilitySettingsResponse> facilitySettings;
  /// Labour settings.
  final pulumi.Input<LaborSettingsResponse> laborSettings;
  /// Management settings.
  final pulumi.Input<ManagementSettingsResponse>? managementSettings;
  /// Network settings.
  final pulumi.Input<NetworkSettingsResponse> networkSettings;
  /// Security settings.
  final pulumi.Input<SecuritySettingsResponse> securitySettings;
  /// Storage settings.
  final pulumi.Input<StorageSettingsResponse> storageSettings;

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
      'computeSettings': pulumi.Input.mapInputValue<ComputeSettingsResponse, Map<String, dynamic>>(computeSettings, (value) => value.toMap()),
      'facilitySettings': pulumi.Input.mapInputValue<FacilitySettingsResponse, Map<String, dynamic>>(facilitySettings, (value) => value.toMap()),
      'laborSettings': pulumi.Input.mapInputValue<LaborSettingsResponse, Map<String, dynamic>>(laborSettings, (value) => value.toMap()),
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<ManagementSettingsResponse, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'networkSettings': pulumi.Input.mapInputValue<NetworkSettingsResponse, Map<String, dynamic>>(networkSettings, (value) => value.toMap()),
      'securitySettings': pulumi.Input.mapInputValue<SecuritySettingsResponse, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'storageSettings': pulumi.Input.mapInputValue<StorageSettingsResponse, Map<String, dynamic>>(storageSettings, (value) => value.toMap()),
    };
  }

  factory OnPremiseSettingsResponse.fromMap(Map<String, dynamic> map) {
    return OnPremiseSettingsResponse(
      computeSettings: (ComputeSettingsResponse.fromMap((map['computeSettings'] as Map).cast<String, dynamic>())).input(),
      facilitySettings: (FacilitySettingsResponse.fromMap((map['facilitySettings'] as Map).cast<String, dynamic>())).input(),
      laborSettings: (LaborSettingsResponse.fromMap((map['laborSettings'] as Map).cast<String, dynamic>())).input(),
      managementSettings: map['managementSettings'] == null ? null : (ManagementSettingsResponse.fromMap((map['managementSettings'] as Map).cast<String, dynamic>())).input(),
      networkSettings: (NetworkSettingsResponse.fromMap((map['networkSettings'] as Map).cast<String, dynamic>())).input(),
      securitySettings: (SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>())).input(),
      storageSettings: (StorageSettingsResponse.fromMap((map['storageSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

