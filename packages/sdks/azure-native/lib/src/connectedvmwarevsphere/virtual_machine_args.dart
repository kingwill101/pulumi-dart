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
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Firmware type
  final pulumi.Input<String>? firmwareType;
  /// Guest agent status properties.
  final pulumi.Input<GuestAgentProfile>? guestAgentProfile;
  /// Hardware properties.
  final pulumi.Input<HardwareProfile>? hardwareProfile;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// Gets or sets the inventory Item ID for the virtual machine.
  final pulumi.Input<String>? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  final pulumi.Input<String>? moRefId;
  /// Network properties.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// OS properties.
  final pulumi.Input<OsProfile>? osProfile;
  /// Placement properties.
  final pulumi.Input<PlacementProfile>? placementProfile;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will
  /// deploy.
  final pulumi.Input<String>? resourcePoolId;
  /// Gets the security profile.
  final pulumi.Input<SecurityProfile>? securityProfile;
  /// Gets or sets the SMBIOS UUID of the vm.
  final pulumi.Input<String>? smbiosUuid;
  /// Storage properties.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  final pulumi.Input<String>? templateId;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final pulumi.Input<String>? vCenterId;
  /// Name of the virtual machine resource.
  final pulumi.Input<String>? virtualMachineName;

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
  VirtualMachineArgs({
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
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      firmwareType: map['firmwareType'] == null ? null : (map['firmwareType']! as String).input(),
      guestAgentProfile: map['guestAgentProfile'] == null ? null : (GuestAgentProfile.fromMap((map['guestAgentProfile']! as Map).cast<String, dynamic>())).input(),
      hardwareProfile: map['hardwareProfile'] == null ? null : (HardwareProfile.fromMap((map['hardwareProfile']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      inventoryItemId: map['inventoryItemId'] == null ? null : (map['inventoryItemId']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      moRefId: map['moRefId'] == null ? null : (map['moRefId']! as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfile.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())).input(),
      osProfile: map['osProfile'] == null ? null : (OsProfile.fromMap((map['osProfile']! as Map).cast<String, dynamic>())).input(),
      placementProfile: map['placementProfile'] == null ? null : (PlacementProfile.fromMap((map['placementProfile']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourcePoolId: map['resourcePoolId'] == null ? null : (map['resourcePoolId']! as String).input(),
      securityProfile: map['securityProfile'] == null ? null : (SecurityProfile.fromMap((map['securityProfile']! as Map).cast<String, dynamic>())).input(),
      smbiosUuid: map['smbiosUuid'] == null ? null : (map['smbiosUuid']! as String).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfile.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
      vCenterId: map['vCenterId'] == null ? null : (map['vCenterId']! as String).input(),
      virtualMachineName: map['virtualMachineName'] == null ? null : (map['virtualMachineName']! as String).input(),
    );
  }
}

