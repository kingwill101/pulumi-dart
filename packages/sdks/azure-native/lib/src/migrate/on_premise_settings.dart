// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<ComputeSettings> computeSettings;
  /// Facility settings.
  final pulumi.Input<FacilitySettings> facilitySettings;
  /// Labour settings.
  final pulumi.Input<LaborSettings> laborSettings;
  /// Management settings.
  final pulumi.Input<ManagementSettings>? managementSettings;
  /// Network settings.
  final pulumi.Input<NetworkSettings> networkSettings;
  /// Security settings.
  final pulumi.Input<SecuritySettings> securitySettings;
  /// Storage settings.
  final pulumi.Input<StorageSettings> storageSettings;

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
      'computeSettings': pulumi.Input.mapInputValue<ComputeSettings, Map<String, dynamic>>(computeSettings, (value) => value.toMap()),
      'facilitySettings': pulumi.Input.mapInputValue<FacilitySettings, Map<String, dynamic>>(facilitySettings, (value) => value.toMap()),
      'laborSettings': pulumi.Input.mapInputValue<LaborSettings, Map<String, dynamic>>(laborSettings, (value) => value.toMap()),
      'managementSettings': ?pulumi.Input.mapOptionalInputValue<ManagementSettings, Map<String, dynamic>>(managementSettings, (value) => value.toMap()),
      'networkSettings': pulumi.Input.mapInputValue<NetworkSettings, Map<String, dynamic>>(networkSettings, (value) => value.toMap()),
      'securitySettings': pulumi.Input.mapInputValue<SecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'storageSettings': pulumi.Input.mapInputValue<StorageSettings, Map<String, dynamic>>(storageSettings, (value) => value.toMap()),
    };
  }

  factory OnPremiseSettings.fromMap(Map<String, dynamic> map) {
    return OnPremiseSettings(
      computeSettings: pulumi.Input.fromValue(ComputeSettings.fromMap((map['computeSettings']! as Map).cast<String, dynamic>())),
      facilitySettings: pulumi.Input.fromValue(FacilitySettings.fromMap((map['facilitySettings']! as Map).cast<String, dynamic>())),
      laborSettings: pulumi.Input.fromValue(LaborSettings.fromMap((map['laborSettings']! as Map).cast<String, dynamic>())),
      managementSettings: (() { final guardedValue = map['managementSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSettings: pulumi.Input.fromValue(NetworkSettings.fromMap((map['networkSettings']! as Map).cast<String, dynamic>())),
      securitySettings: pulumi.Input.fromValue(SecuritySettings.fromMap((map['securitySettings']! as Map).cast<String, dynamic>())),
      storageSettings: pulumi.Input.fromValue(StorageSettings.fromMap((map['storageSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

