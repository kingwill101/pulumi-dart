// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'guest_agent_install_status_response.dart';
import 'http_proxy_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_instance_properties_hardware_profile_response.dart';
import 'virtual_machine_instance_properties_network_profile_response.dart';
import 'virtual_machine_instance_properties_os_profile_response.dart';
import 'virtual_machine_instance_properties_security_profile_response.dart';
import 'virtual_machine_instance_properties_storage_profile_response.dart';
import 'virtual_machine_instance_status_response.dart';
import 'virtual_machine_instance_view_response.dart';

/// Result data returned by getVirtualMachineInstance.
class GetVirtualMachineInstanceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Boolean indicating whether this is an existing local virtual machine or if one should be created.
  final bool? createFromLocal;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Guest agent install status.
  final GuestAgentInstallStatusResponse? guestAgentInstallStatus;
  /// HardwareProfile - Specifies the hardware settings for the virtual machine instance.
  final VirtualMachineInstancePropertiesHardwareProfileResponse? hardwareProfile;
  /// HTTP Proxy configuration for the VM.
  final HttpProxyConfigurationResponse? httpProxyConfig;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The virtual machine instance view.
  final VirtualMachineInstanceViewResponse? instanceView;
  /// The name of the resource
  final String? name;
  /// NetworkProfile - describes the network configuration the virtual machine instance
  final VirtualMachineInstancePropertiesNetworkProfileResponse? networkProfile;
  /// OsProfile - describes the configuration of the operating system and sets login data
  final VirtualMachineInstancePropertiesOsProfileResponse? osProfile;
  /// Provisioning state of the virtual machine instance.
  final String? provisioningState;
  /// Unique identifier defined by ARC to identify the guest of the VM.
  final String? resourceUid;
  /// SecurityProfile - Specifies the security settings for the virtual machine instance.
  final VirtualMachineInstancePropertiesSecurityProfileResponse? securityProfile;
  /// The observed state of virtual machine instances
  final VirtualMachineInstanceStatusResponse? status;
  /// StorageProfile - contains information about the disks and storage information for the virtual machine instance
  final VirtualMachineInstancePropertiesStorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Unique identifier for the vm resource.
  final String? vmId;

  /// Creates a new [GetVirtualMachineInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createFromLocal] Boolean indicating whether this is an existing local virtual machine or if one should be created.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [guestAgentInstallStatus] Guest agent install status.
  /// [hardwareProfile] HardwareProfile - Specifies the hardware settings for the virtual machine instance.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [instanceView] The virtual machine instance view.
  /// [name] The name of the resource
  /// [networkProfile] NetworkProfile - describes the network configuration the virtual machine instance
  /// [osProfile] OsProfile - describes the configuration of the operating system and sets login data
  /// [provisioningState] Provisioning state of the virtual machine instance.
  /// [resourceUid] Unique identifier defined by ARC to identify the guest of the VM.
  /// [securityProfile] SecurityProfile - Specifies the security settings for the virtual machine instance.
  /// [status] The observed state of virtual machine instances
  /// [storageProfile] StorageProfile - contains information about the disks and storage information for the virtual machine instance
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmId] Unique identifier for the vm resource.
  GetVirtualMachineInstanceResult({
    this.azureApiVersion,
    bool? createFromLocal,
    this.extendedLocation,
    this.guestAgentInstallStatus,
    this.hardwareProfile,
    this.httpProxyConfig,
    this.id,
    this.identity,
    this.instanceView,
    this.name,
    this.networkProfile,
    this.osProfile,
    this.provisioningState,
    this.resourceUid,
    this.securityProfile,
    this.status,
    this.storageProfile,
    this.systemData,
    this.type,
    this.vmId,
  }) : createFromLocal = createFromLocal ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createFromLocal': ?createFromLocal,
      'extendedLocation': ?extendedLocation?.toMap(),
      'guestAgentInstallStatus': ?guestAgentInstallStatus?.toMap(),
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'httpProxyConfig': ?httpProxyConfig?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'instanceView': ?instanceView?.toMap(),
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'provisioningState': ?provisioningState,
      'resourceUid': ?resourceUid,
      'securityProfile': ?securityProfile?.toMap(),
      'status': ?status?.toMap(),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'vmId': ?vmId,
    };
  }

  factory GetVirtualMachineInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createFromLocal: (() { final guardedValue = map['createFromLocal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      guestAgentInstallStatus: (() { final guardedValue = map['guestAgentInstallStatus']; if (guardedValue == null) return null; return GuestAgentInstallStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesHardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpProxyConfig: (() { final guardedValue = map['httpProxyConfig']; if (guardedValue == null) return null; return HttpProxyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceView: (() { final guardedValue = map['instanceView']; if (guardedValue == null) return null; return VirtualMachineInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesOsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceUid: (() { final guardedValue = map['resourceUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return VirtualMachineInstanceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return VirtualMachineInstancePropertiesStorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
