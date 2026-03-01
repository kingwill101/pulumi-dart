// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'hardware_profile_response.dart';
import 'infrastructure_profile_response.dart';
import 'network_profile_response.dart';
import 'os_profile_for_vminstance_response.dart';
import 'placement_profile_response.dart';
import 'resource_status_response.dart';
import 'security_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualMachineInstance.
class GetVirtualMachineInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Hardware properties.
  final HardwareProfileResponse? hardwareProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets the infrastructure profile.
  final InfrastructureProfileResponse? infrastructureProfile;
  /// The name of the resource
  final String name;
  /// Network properties.
  final NetworkProfileResponse? networkProfile;
  /// OS properties.
  final OsProfileForVMInstanceResponse? osProfile;
  /// Placement properties.
  final PlacementProfileResponse? placementProfile;
  /// Gets the power state of the virtual machine.
  final String powerState;
  /// Gets the provisioning state.
  final String provisioningState;
  /// Gets or sets a unique identifier for the vm resource.
  final String resourceUid;
  /// Gets the security profile.
  final SecurityProfileResponse? securityProfile;
  /// The resource status information.
  final List<ResourceStatusResponse> statuses;
  /// Storage properties.
  final StorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetVirtualMachineInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] Gets or sets the extended location.
  /// [hardwareProfile] Hardware properties.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [infrastructureProfile] Gets the infrastructure profile.
  /// [name] The name of the resource
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [placementProfile] Placement properties.
  /// [powerState] Gets the power state of the virtual machine.
  /// [provisioningState] Gets the provisioning state.
  /// [resourceUid] Gets or sets a unique identifier for the vm resource.
  /// [securityProfile] Gets the security profile.
  /// [statuses] The resource status information.
  /// [storageProfile] Storage properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetVirtualMachineInstanceResult({
    required this.azureApiVersion,
    this.extendedLocation,
    this.hardwareProfile,
    required this.id,
    this.infrastructureProfile,
    required this.name,
    this.networkProfile,
    this.osProfile,
    this.placementProfile,
    required this.powerState,
    required this.provisioningState,
    required this.resourceUid,
    this.securityProfile,
    required this.statuses,
    this.storageProfile,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'id': id,
      'infrastructureProfile': ?infrastructureProfile == null ? null : infrastructureProfile!.toMap(),
      'name': name,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'placementProfile': ?placementProfile == null ? null : placementProfile!.toMap(),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'resourceUid': resourceUid,
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetVirtualMachineInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hardwareProfile: map['hardwareProfile'] == null ? null : HardwareProfileResponse.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      infrastructureProfile: map['infrastructureProfile'] == null ? null : InfrastructureProfileResponse.fromMap((map['infrastructureProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : OsProfileForVMInstanceResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      placementProfile: map['placementProfile'] == null ? null : PlacementProfileResponse.fromMap((map['placementProfile'] as Map).cast<String, dynamic>()),
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceUid: map['resourceUid'] as String,
      securityProfile: map['securityProfile'] == null ? null : SecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses'], (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

