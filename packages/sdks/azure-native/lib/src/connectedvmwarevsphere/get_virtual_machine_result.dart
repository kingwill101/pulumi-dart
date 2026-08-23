// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'guest_agent_profile_response.dart';
import 'hardware_profile_response.dart';
import 'identity_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'placement_profile_response.dart';
import 'resource_status_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Firmware type
  final String? firmwareType;
  /// Gets or sets the folder path of the vm.
  final String folderPath;
  /// Guest agent status properties.
  final GuestAgentProfileResponse? guestAgentProfile;
  /// Hardware properties.
  final HardwareProfileResponse? hardwareProfile;
  /// Gets or sets the Id.
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// Gets or sets the instance uuid of the vm.
  final String instanceUuid;
  /// Gets or sets the inventory Item ID for the virtual machine.
  final String? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the location.
  final String location;
  /// Gets or sets the vCenter Managed Object name for the virtual machine.
  final String moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  final String? moRefId;
  /// Gets or sets the name.
  final String name;
  /// Network properties.
  final NetworkProfileResponse? networkProfile;
  /// OS properties.
  final OsProfileResponse? osProfile;
  /// Placement properties.
  final PlacementProfileResponse? placementProfile;
  /// Gets the power state of the virtual machine.
  final String powerState;
  /// Gets the provisioning state.
  final String provisioningState;
  /// Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will
  /// deploy.
  final String? resourcePoolId;
  /// Gets the security profile.
  final SecurityProfileResponse? securityProfile;
  /// Gets or sets the SMBIOS UUID of the vm.
  final String? smbiosUuid;
  /// The resource status information.
  final List<ResourceStatusResponse> statuses;
  /// Storage properties.
  final StorageProfileResponse? storageProfile;
  /// The system data.
  final SystemDataResponse systemData;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  final String? templateId;
  /// Gets or sets the type of the resource.
  final String type;
  /// Gets or sets a unique identifier for this resource.
  final String uuid;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final String? vCenterId;
  /// Gets or sets a unique identifier for the vm resource.
  final String vmId;

  /// Creates a new [GetVirtualMachineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [extendedLocation] Gets or sets the extended location.
  /// [firmwareType] Firmware type
  /// [folderPath] Gets or sets the folder path of the vm.
  /// [guestAgentProfile] Guest agent status properties.
  /// [hardwareProfile] Hardware properties.
  /// [id] Gets or sets the Id.
  /// [identity] The identity of the resource.
  /// [instanceUuid] Gets or sets the instance uuid of the vm.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the virtual machine.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [moName] Gets or sets the vCenter Managed Object name for the virtual machine.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  /// [name] Gets or sets the name.
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [placementProfile] Placement properties.
  /// [powerState] Gets the power state of the virtual machine.
  /// [provisioningState] Gets the provisioning state.
  /// [resourcePoolId] Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will
  /// [securityProfile] Gets the security profile.
  /// [smbiosUuid] Gets or sets the SMBIOS UUID of the vm.
  /// [statuses] The resource status information.
  /// [storageProfile] Storage properties.
  /// [systemData] The system data.
  /// [tags] Gets or sets the Resource tags.
  /// [templateId] Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  /// [type] Gets or sets the type of the resource.
  /// [uuid] Gets or sets a unique identifier for this resource.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  /// [vmId] Gets or sets a unique identifier for the vm resource.
  const GetVirtualMachineResult({
    required this.azureApiVersion,
    required this.customResourceName,
    this.extendedLocation,
    this.firmwareType,
    required this.folderPath,
    this.guestAgentProfile,
    this.hardwareProfile,
    required this.id,
    this.identity,
    required this.instanceUuid,
    this.inventoryItemId,
    this.kind,
    required this.location,
    required this.moName,
    this.moRefId,
    required this.name,
    this.networkProfile,
    this.osProfile,
    this.placementProfile,
    required this.powerState,
    required this.provisioningState,
    this.resourcePoolId,
    this.securityProfile,
    this.smbiosUuid,
    required this.statuses,
    this.storageProfile,
    required this.systemData,
    this.tags,
    this.templateId,
    required this.type,
    required this.uuid,
    this.vCenterId,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customResourceName': customResourceName,
      'extendedLocation': ?extendedLocation?.toMap(),
      'firmwareType': ?firmwareType,
      'folderPath': folderPath,
      'guestAgentProfile': ?guestAgentProfile?.toMap(),
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'instanceUuid': instanceUuid,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': location,
      'moName': moName,
      'moRefId': ?moRefId,
      'name': name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'placementProfile': ?placementProfile?.toMap(),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'resourcePoolId': ?resourcePoolId,
      'securityProfile': ?securityProfile?.toMap(),
      'smbiosUuid': ?smbiosUuid,
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'templateId': ?templateId,
      'type': type,
      'uuid': uuid,
      'vCenterId': ?vCenterId,
      'vmId': vmId,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customResourceName: map['customResourceName'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      firmwareType: (() { final guardedValue = map['firmwareType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: map['folderPath'] as String,
      guestAgentProfile: (() { final guardedValue = map['guestAgentProfile']; if (guardedValue == null) return null; return GuestAgentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceUuid: map['instanceUuid'] as String,
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      moName: map['moName'] as String,
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return OsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      placementProfile: (() { final guardedValue = map['placementProfile']; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      resourcePoolId: (() { final guardedValue = map['resourcePoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      smbiosUuid: (() { final guardedValue = map['smbiosUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses']!, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      vCenterId: (() { final guardedValue = map['vCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmId: map['vmId'] as String,
    );
  }
}
