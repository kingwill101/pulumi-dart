// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'guest_agent_profile_response.dart';
import 'identity_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_properties_response_hardware_profile.dart';
import 'virtual_machine_properties_response_network_profile.dart';
import 'virtual_machine_properties_response_os_profile.dart';
import 'virtual_machine_properties_response_security_profile.dart';
import 'virtual_machine_properties_response_storage_profile.dart';
import 'virtual_machine_status_response.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Guest agent status properties.
  final GuestAgentProfileResponse? guestAgentProfile;
  /// HardwareProfile - Specifies the hardware settings for the virtual machine.
  final VirtualMachinePropertiesResponseHardwareProfile? hardwareProfile;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// NetworkProfile - describes the network configuration the virtual machine
  final VirtualMachinePropertiesResponseNetworkProfile? networkProfile;
  /// OsProfile - describes the configuration of the operating system and sets login data
  final VirtualMachinePropertiesResponseOsProfile? osProfile;
  /// Provisioning state of the virtual machine.
  final String provisioningState;
  /// SecurityProfile - Specifies the security settings for the virtual machine.
  final VirtualMachinePropertiesResponseSecurityProfile? securityProfile;
  /// The observed state of virtual machines
  final VirtualMachineStatusResponse status;
  /// StorageProfile - contains information about the disks and storage information for the virtual machine
  final VirtualMachinePropertiesResponseStorageProfile? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Unique identifier for the vm resource.
  final String vmId;

  /// Creates a new [GetVirtualMachineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [guestAgentProfile] Guest agent status properties.
  /// [hardwareProfile] HardwareProfile - Specifies the hardware settings for the virtual machine.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkProfile] NetworkProfile - describes the network configuration the virtual machine
  /// [osProfile] OsProfile - describes the configuration of the operating system and sets login data
  /// [provisioningState] Provisioning state of the virtual machine.
  /// [securityProfile] SecurityProfile - Specifies the security settings for the virtual machine.
  /// [status] The observed state of virtual machines
  /// [storageProfile] StorageProfile - contains information about the disks and storage information for the virtual machine
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmId] Unique identifier for the vm resource.
  const GetVirtualMachineResult({
    required this.azureApiVersion,
    this.extendedLocation,
    this.guestAgentProfile,
    this.hardwareProfile,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.networkProfile,
    this.osProfile,
    required this.provisioningState,
    this.securityProfile,
    required this.status,
    this.storageProfile,
    required this.systemData,
    this.tags,
    required this.type,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'guestAgentProfile': ?guestAgentProfile?.toMap(),
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'provisioningState': provisioningState,
      'securityProfile': ?securityProfile?.toMap(),
      'status': status.toMap(),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmId': vmId,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      guestAgentProfile: (() { final guardedValue = map['guestAgentProfile']; if (guardedValue == null) return null; return GuestAgentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return VirtualMachinePropertiesResponseHardwareProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return VirtualMachinePropertiesResponseNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return VirtualMachinePropertiesResponseOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return VirtualMachinePropertiesResponseSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: VirtualMachineStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return VirtualMachinePropertiesResponseStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vmId: map['vmId'] as String,
    );
  }
}

