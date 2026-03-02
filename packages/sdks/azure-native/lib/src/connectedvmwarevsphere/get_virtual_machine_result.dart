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
  GetVirtualMachineResult({
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
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'firmwareType': ?firmwareType,
      'folderPath': folderPath,
      'guestAgentProfile': ?guestAgentProfile == null ? null : guestAgentProfile!.toMap(),
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'instanceUuid': instanceUuid,
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': location,
      'moName': moName,
      'moRefId': ?moRefId,
      'name': name,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'placementProfile': ?placementProfile == null ? null : placementProfile!.toMap(),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'resourcePoolId': ?resourcePoolId,
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'smbiosUuid': ?smbiosUuid,
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
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
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      firmwareType: map['firmwareType'] == null ? null : map['firmwareType']! as String,
      folderPath: map['folderPath'] as String,
      guestAgentProfile: map['guestAgentProfile'] == null ? null : GuestAgentProfileResponse.fromMap((map['guestAgentProfile']! as Map).cast<String, dynamic>()),
      hardwareProfile: map['hardwareProfile'] == null ? null : HardwareProfileResponse.fromMap((map['hardwareProfile']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      instanceUuid: map['instanceUuid'] as String,
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId']! as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] as String,
      moName: map['moName'] as String,
      moRefId: map['moRefId'] == null ? null : map['moRefId']! as String,
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : OsProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>()),
      placementProfile: map['placementProfile'] == null ? null : PlacementProfileResponse.fromMap((map['placementProfile']! as Map).cast<String, dynamic>()),
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      resourcePoolId: map['resourcePoolId'] == null ? null : map['resourcePoolId']! as String,
      securityProfile: map['securityProfile'] == null ? null : SecurityProfileResponse.fromMap((map['securityProfile']! as Map).cast<String, dynamic>()),
      smbiosUuid: map['smbiosUuid'] == null ? null : map['smbiosUuid']! as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses'], (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      templateId: map['templateId'] == null ? null : map['templateId']! as String,
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      vCenterId: map['vCenterId'] == null ? null : map['vCenterId']! as String,
      vmId: map['vmId'] as String,
    );
  }
}

