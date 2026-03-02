// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_profile_response.dart';
import 'hardware_profile_response.dart';
import 'osprofile_response.dart';
import 'restore_point_source_vmstorage_profile_response.dart';
import 'security_profile_response.dart';

/// Describes the properties of the Virtual Machine for which the restore point was created. The properties provided are a subset and the snapshot of the overall Virtual Machine properties captured at the time of the restore point creation.
class RestorePointSourceMetadataResponse {
  /// Gets the diagnostics profile.
  final pulumi.Input<DiagnosticsProfileResponse> diagnosticsProfile;
  /// Gets the hardware profile.
  final pulumi.Input<HardwareProfileResponse> hardwareProfile;
  /// HyperVGeneration of the source VM for which restore point is captured.
  final pulumi.Input<String> hyperVGeneration;
  /// Gets the license type, which is for bring your own license scenario.
  final pulumi.Input<String> licenseType;
  /// Location of the VM from which the restore point was created.
  final pulumi.Input<String> location;
  /// Gets the OS profile.
  final pulumi.Input<OSProfileResponse> osProfile;
  /// Gets the security profile.
  final pulumi.Input<SecurityProfileResponse> securityProfile;
  /// Gets the storage profile.
  final pulumi.Input<RestorePointSourceVMStorageProfileResponse>? storageProfile;
  /// UserData associated with the source VM for which restore point is captured, which is a base-64 encoded value.
  final pulumi.Input<String> userData;
  /// Gets the virtual machine unique id.
  final pulumi.Input<String> vmId;

  /// Creates a new [RestorePointSourceMetadataResponse].
  /// [diagnosticsProfile] Gets the diagnostics profile.
  /// [hardwareProfile] Gets the hardware profile.
  /// [hyperVGeneration] HyperVGeneration of the source VM for which restore point is captured.
  /// [licenseType] Gets the license type, which is for bring your own license scenario.
  /// [location] Location of the VM from which the restore point was created.
  /// [osProfile] Gets the OS profile.
  /// [securityProfile] Gets the security profile.
  /// [storageProfile] Gets the storage profile.
  /// [userData] UserData associated with the source VM for which restore point is captured, which is a base-64 encoded value.
  /// [vmId] Gets the virtual machine unique id.
  RestorePointSourceMetadataResponse({
    required this.diagnosticsProfile,
    required this.hardwareProfile,
    required this.hyperVGeneration,
    required this.licenseType,
    required this.location,
    required this.osProfile,
    required this.securityProfile,
    this.storageProfile,
    required this.userData,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticsProfile': pulumi.Input.mapInputValue<DiagnosticsProfileResponse, Map<String, dynamic>>(diagnosticsProfile, (value) => value.toMap()),
      'hardwareProfile': pulumi.Input.mapInputValue<HardwareProfileResponse, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'hyperVGeneration': hyperVGeneration,
      'licenseType': licenseType,
      'location': location,
      'osProfile': pulumi.Input.mapInputValue<OSProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'securityProfile': pulumi.Input.mapInputValue<SecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<RestorePointSourceVMStorageProfileResponse, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'userData': userData,
      'vmId': vmId,
    };
  }

  factory RestorePointSourceMetadataResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceMetadataResponse(
      diagnosticsProfile: (DiagnosticsProfileResponse.fromMap((map['diagnosticsProfile'] as Map).cast<String, dynamic>())).input(),
      hardwareProfile: (HardwareProfileResponse.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>())).input(),
      hyperVGeneration: (map['hyperVGeneration'] as String).input(),
      licenseType: (map['licenseType'] as String).input(),
      location: (map['location'] as String).input(),
      osProfile: (OSProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      securityProfile: (SecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      storageProfile: map['storageProfile'] == null ? null : (RestorePointSourceVMStorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
      userData: (map['userData'] as String).input(),
      vmId: (map['vmId'] as String).input(),
    );
  }
}

