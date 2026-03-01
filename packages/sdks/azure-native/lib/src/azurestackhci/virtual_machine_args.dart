// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'identity.dart';
import 'virtual_machine_properties_hardware_profile.dart';
import 'virtual_machine_properties_network_profile.dart';
import 'virtual_machine_properties_os_profile.dart';
import 'virtual_machine_properties_security_profile.dart';
import 'virtual_machine_properties_storage_profile.dart';

/// {@template pulumi_azurestackhci_virtual_machine_args_doc}
/// The set of arguments for VirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_virtual_machine_args_doc}
class VirtualMachineArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// HardwareProfile - Specifies the hardware settings for the virtual machine.
  final pulumi.Input<VirtualMachinePropertiesHardwareProfile>? hardwareProfile;
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// NetworkProfile - describes the network configuration the virtual machine
  final pulumi.Input<VirtualMachinePropertiesNetworkProfile>? networkProfile;
  /// OsProfile - describes the configuration of the operating system and sets login data
  final pulumi.Input<VirtualMachinePropertiesOsProfile>? osProfile;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SecurityProfile - Specifies the security settings for the virtual machine.
  final pulumi.Input<VirtualMachinePropertiesSecurityProfile>? securityProfile;
  /// StorageProfile - contains information about the disks and storage information for the virtual machine
  final pulumi.Input<VirtualMachinePropertiesStorageProfile>? storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the virtual machine
  final pulumi.Input<String>? virtualMachineName;

  /// Creates a new [VirtualMachineArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hardwareProfile] HardwareProfile - Specifies the hardware settings for the virtual machine.
  /// [identity] Identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [networkProfile] NetworkProfile - describes the network configuration the virtual machine
  /// [osProfile] OsProfile - describes the configuration of the operating system and sets login data
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityProfile] SecurityProfile - Specifies the security settings for the virtual machine.
  /// [storageProfile] StorageProfile - contains information about the disks and storage information for the virtual machine
  /// [tags] Resource tags.
  /// [virtualMachineName] Name of the virtual machine
  VirtualMachineArgs({
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<VirtualMachinePropertiesHardwareProfile>? hardwareProfile,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<VirtualMachinePropertiesNetworkProfile>? networkProfile,
    pulumi.Output<VirtualMachinePropertiesOsProfile>? osProfile,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<VirtualMachinePropertiesSecurityProfile>? securityProfile,
    pulumi.Output<VirtualMachinePropertiesStorageProfile>? storageProfile,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualMachineName,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hardwareProfile = pulumi.Input.asOptionalInput<VirtualMachinePropertiesHardwareProfile>(hardwareProfile),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkProfile = pulumi.Input.asOptionalInput<VirtualMachinePropertiesNetworkProfile>(networkProfile),
      osProfile = pulumi.Input.asOptionalInput<VirtualMachinePropertiesOsProfile>(osProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityProfile = pulumi.Input.asOptionalInput<VirtualMachinePropertiesSecurityProfile>(securityProfile),
      storageProfile = pulumi.Input.asOptionalInput<VirtualMachinePropertiesStorageProfile>(storageProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachineName = pulumi.Input.asOptionalInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesHardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesOsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      hardwareProfile: map['hardwareProfile'] == null ? null : pulumi.Output.create<VirtualMachinePropertiesHardwareProfile>(VirtualMachinePropertiesHardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<VirtualMachinePropertiesNetworkProfile>(VirtualMachinePropertiesNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      osProfile: map['osProfile'] == null ? null : pulumi.Output.create<VirtualMachinePropertiesOsProfile>(VirtualMachinePropertiesOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<VirtualMachinePropertiesSecurityProfile>(VirtualMachinePropertiesSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      storageProfile: map['storageProfile'] == null ? null : pulumi.Output.create<VirtualMachinePropertiesStorageProfile>(VirtualMachinePropertiesStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualMachineName: map['virtualMachineName'] == null ? null : pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

