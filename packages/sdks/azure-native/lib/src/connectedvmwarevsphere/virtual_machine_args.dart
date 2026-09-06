// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'guest_agent_profile.dart';
import 'hardware_profile.dart';
import 'identity.dart';
import 'network_profile.dart';
import 'os_profile.dart';
import 'placement_profile.dart';
import 'security_profile.dart';
import 'storage_profile.dart';

/// {@template pulumi_connectedvmwarevsphere_virtual_machine_args_doc}
/// The set of arguments for VirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_virtual_machine_args_doc}
class VirtualMachineArgs {
  /// Gets or sets the extended location.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// Firmware type
  final pulumi.Input<dynamic>? firmwareType;
  /// Guest agent status properties.
  final pulumi.Input<GuestAgentProfile?>? guestAgentProfile;
  /// Hardware properties.
  final pulumi.Input<HardwareProfile?>? hardwareProfile;
  /// The identity of the resource.
  final pulumi.Input<Identity?>? identity;
  /// Gets or sets the inventory Item ID for the virtual machine.
  final pulumi.Input<String?>? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String?>? kind;
  /// Gets or sets the location.
  final pulumi.Input<String?>? location;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  final pulumi.Input<String?>? moRefId;
  /// Network properties.
  final pulumi.Input<NetworkProfile?>? networkProfile;
  /// OS properties.
  final pulumi.Input<OsProfile?>? osProfile;
  /// Placement properties.
  final pulumi.Input<PlacementProfile?>? placementProfile;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will
  /// deploy.
  final pulumi.Input<String?>? resourcePoolId;
  /// Gets the security profile.
  final pulumi.Input<SecurityProfile?>? securityProfile;
  /// Gets or sets the SMBIOS UUID of the vm.
  final pulumi.Input<String?>? smbiosUuid;
  /// Storage properties.
  final pulumi.Input<StorageProfile?>? storageProfile;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  final pulumi.Input<String?>? templateId;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final pulumi.Input<String?>? vCenterId;
  /// Name of the virtual machine resource.
  final pulumi.Input<String?>? virtualMachineName;

  /// Creates a new [VirtualMachineArgs].
  /// [extendedLocation] Gets or sets the extended location.
  /// [firmwareType] Firmware type
  /// [guestAgentProfile] Guest agent status properties.
  /// [hardwareProfile] Hardware properties.
  /// [identity] The identity of the resource.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the virtual machine.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [placementProfile] Placement properties.
  /// [resourceGroupName] The Resource Group Name.
  /// [resourcePoolId] Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will
  /// [securityProfile] Gets the security profile.
  /// [smbiosUuid] Gets or sets the SMBIOS UUID of the vm.
  /// [storageProfile] Storage properties.
  /// [tags] Gets or sets the Resource tags.
  /// [templateId] Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  /// [virtualMachineName] Name of the virtual machine resource.
  const VirtualMachineArgs({
    this.extendedLocation,
    this.firmwareType,
    this.guestAgentProfile,
    this.hardwareProfile,
    this.identity,
    this.inventoryItemId,
    this.kind,
    this.location,
    this.moRefId,
    this.networkProfile,
    this.osProfile,
    this.placementProfile,
    required this.resourceGroupName,
    this.resourcePoolId,
    this.securityProfile,
    this.smbiosUuid,
    this.storageProfile,
    this.tags,
    this.templateId,
    this.vCenterId,
    this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'firmwareType': ?firmwareType,
      'guestAgentProfile': ?pulumi.Input.mapOptionalInputValue<GuestAgentProfile, Map<String, dynamic>>(guestAgentProfile, (value) => value.toMap()),
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': ?location,
      'moRefId': ?moRefId,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'placementProfile': ?pulumi.Input.mapOptionalInputValue<PlacementProfile, Map<String, dynamic>>(placementProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourcePoolId': ?resourcePoolId,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'smbiosUuid': ?smbiosUuid,
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
      'templateId': ?templateId,
      'vCenterId': ?vCenterId,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firmwareType: (() { final guardedValue = map['firmwareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      guestAgentProfile: (() { final guardedValue = map['guestAgentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestAgentProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HardwareProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placementProfile: (() { final guardedValue = map['placementProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourcePoolId: (() { final guardedValue = map['resourcePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smbiosUuid: (() { final guardedValue = map['smbiosUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vCenterId: (() { final guardedValue = map['vCenterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineName: (() { final guardedValue = map['virtualMachineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
