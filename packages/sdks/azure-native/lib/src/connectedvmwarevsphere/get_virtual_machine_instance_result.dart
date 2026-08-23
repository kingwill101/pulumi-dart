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
  const GetVirtualMachineInstanceResult({
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
      'extendedLocation': ?extendedLocation?.toMap(),
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'id': id,
      'infrastructureProfile': ?infrastructureProfile?.toMap(),
      'name': name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'placementProfile': ?placementProfile?.toMap(),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'resourceUid': resourceUid,
      'securityProfile': ?securityProfile?.toMap(),
      'statuses': pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetVirtualMachineInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      infrastructureProfile: (() { final guardedValue = map['infrastructureProfile']; if (guardedValue == null) return null; return InfrastructureProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return OsProfileForVMInstanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      placementProfile: (() { final guardedValue = map['placementProfile']; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceUid: map['resourceUid'] as String,
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(map['statuses']!, (value) => ResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
