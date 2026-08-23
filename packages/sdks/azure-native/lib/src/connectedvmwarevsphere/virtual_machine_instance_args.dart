// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'hardware_profile.dart';
import 'infrastructure_profile.dart';
import 'network_profile.dart';
import 'os_profile_for_vminstance.dart';
import 'placement_profile.dart';
import 'security_profile.dart';
import 'storage_profile.dart';

/// {@template pulumi_connectedvmwarevsphere_virtual_machine_instance_args_doc}
/// The set of arguments for VirtualMachineInstance.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_virtual_machine_instance_args_doc}
class VirtualMachineInstanceArgs {
  /// Gets or sets the extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Hardware properties.
  final pulumi.Input<HardwareProfile>? hardwareProfile;
  /// Gets the infrastructure profile.
  final pulumi.Input<InfrastructureProfile>? infrastructureProfile;
  /// Network properties.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// OS properties.
  final pulumi.Input<OsProfileForVMInstance>? osProfile;
  /// Placement properties.
  final pulumi.Input<PlacementProfile>? placementProfile;
  /// The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  final pulumi.Input<String> resourceUri;
  /// Gets the security profile.
  final pulumi.Input<SecurityProfile>? securityProfile;
  /// Storage properties.
  final pulumi.Input<StorageProfile>? storageProfile;

  /// Creates a new [VirtualMachineInstanceArgs].
  /// [extendedLocation] Gets or sets the extended location.
  /// [hardwareProfile] Hardware properties.
  /// [infrastructureProfile] Gets the infrastructure profile.
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [placementProfile] Placement properties.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  /// [securityProfile] Gets the security profile.
  /// [storageProfile] Storage properties.
  const VirtualMachineInstanceArgs({
    this.extendedLocation,
    this.hardwareProfile,
    this.infrastructureProfile,
    this.networkProfile,
    this.osProfile,
    this.placementProfile,
    required this.resourceUri,
    this.securityProfile,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'infrastructureProfile': ?pulumi.Input.mapOptionalInputValue<InfrastructureProfile, Map<String, dynamic>>(infrastructureProfile, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfileForVMInstance, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'placementProfile': ?pulumi.Input.mapOptionalInputValue<PlacementProfile, Map<String, dynamic>>(placementProfile, (value) => value.toMap()),
      'resourceUri': resourceUri,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HardwareProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureProfile: (() { final guardedValue = map['infrastructureProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InfrastructureProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsProfileForVMInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placementProfile: (() { final guardedValue = map['placementProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
