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
  VirtualMachineInstanceArgs({
    ExtendedLocation? extendedLocation,
    HardwareProfile? hardwareProfile,
    InfrastructureProfile? infrastructureProfile,
    NetworkProfile? networkProfile,
    OsProfileForVMInstance? osProfile,
    PlacementProfile? placementProfile,
    required String resourceUri,
    SecurityProfile? securityProfile,
    StorageProfile? storageProfile,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hardwareProfile = pulumi.Input.asOptionalInput<HardwareProfile>(hardwareProfile),
      infrastructureProfile = pulumi.Input.asOptionalInput<InfrastructureProfile>(infrastructureProfile),
      networkProfile = pulumi.Input.asOptionalInput<NetworkProfile>(networkProfile),
      osProfile = pulumi.Input.asOptionalInput<OsProfileForVMInstance>(osProfile),
      placementProfile = pulumi.Input.asOptionalInput<PlacementProfile>(placementProfile),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      securityProfile = pulumi.Input.asOptionalInput<SecurityProfile>(securityProfile),
      storageProfile = pulumi.Input.asOptionalInput<StorageProfile>(storageProfile);

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
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hardwareProfile: map['hardwareProfile'] == null ? null : HardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      infrastructureProfile: map['infrastructureProfile'] == null ? null : InfrastructureProfile.fromMap((map['infrastructureProfile'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : OsProfileForVMInstance.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      placementProfile: map['placementProfile'] == null ? null : PlacementProfile.fromMap((map['placementProfile'] as Map).cast<String, dynamic>()),
      resourceUri: map['resourceUri'] as String,
      securityProfile: map['securityProfile'] == null ? null : SecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

