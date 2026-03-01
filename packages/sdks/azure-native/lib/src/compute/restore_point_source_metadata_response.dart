// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostics_profile_response.dart';
import 'hardware_profile_response.dart';
import 'osprofile_response.dart';
import 'restore_point_source_vmstorage_profile_response.dart';
import 'security_profile_response.dart';

/// Describes the properties of the Virtual Machine for which the restore point was created. The properties provided are a subset and the snapshot of the overall Virtual Machine properties captured at the time of the restore point creation.
class RestorePointSourceMetadataResponse {
  /// Gets the diagnostics profile.
  final DiagnosticsProfileResponse diagnosticsProfile;
  /// Gets the hardware profile.
  final HardwareProfileResponse hardwareProfile;
  /// HyperVGeneration of the source VM for which restore point is captured.
  final String hyperVGeneration;
  /// Gets the license type, which is for bring your own license scenario.
  final String licenseType;
  /// Location of the VM from which the restore point was created.
  final String location;
  /// Gets the OS profile.
  final OSProfileResponse osProfile;
  /// Gets the security profile.
  final SecurityProfileResponse securityProfile;
  /// Gets the storage profile.
  final RestorePointSourceVMStorageProfileResponse? storageProfile;
  /// UserData associated with the source VM for which restore point is captured, which is a base-64 encoded value.
  final String userData;
  /// Gets the virtual machine unique id.
  final String vmId;

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
      'diagnosticsProfile': diagnosticsProfile.toMap(),
      'hardwareProfile': hardwareProfile.toMap(),
      'hyperVGeneration': hyperVGeneration,
      'licenseType': licenseType,
      'location': location,
      'osProfile': osProfile.toMap(),
      'securityProfile': securityProfile.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'userData': userData,
      'vmId': vmId,
    };
  }

  factory RestorePointSourceMetadataResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceMetadataResponse(
      diagnosticsProfile: DiagnosticsProfileResponse.fromMap((map['diagnosticsProfile'] as Map).cast<String, dynamic>()),
      hardwareProfile: HardwareProfileResponse.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      hyperVGeneration: map['hyperVGeneration'] as String,
      licenseType: map['licenseType'] as String,
      location: map['location'] as String,
      osProfile: OSProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      securityProfile: SecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : RestorePointSourceVMStorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      userData: map['userData'] as String,
      vmId: map['vmId'] as String,
    );
  }
}

