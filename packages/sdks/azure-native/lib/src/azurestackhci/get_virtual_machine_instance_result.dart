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
  final String azureApiVersion;
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
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The virtual machine instance view.
  final VirtualMachineInstanceViewResponse instanceView;
  /// The name of the resource
  final String name;
  /// NetworkProfile - describes the network configuration the virtual machine instance
  final VirtualMachineInstancePropertiesNetworkProfileResponse? networkProfile;
  /// OsProfile - describes the configuration of the operating system and sets login data
  final VirtualMachineInstancePropertiesOsProfileResponse? osProfile;
  /// Provisioning state of the virtual machine instance.
  final String provisioningState;
  /// Unique identifier defined by ARC to identify the guest of the VM.
  final String? resourceUid;
  /// SecurityProfile - Specifies the security settings for the virtual machine instance.
  final VirtualMachineInstancePropertiesSecurityProfileResponse? securityProfile;
  /// The observed state of virtual machine instances
  final VirtualMachineInstanceStatusResponse status;
  /// StorageProfile - contains information about the disks and storage information for the virtual machine instance
  final VirtualMachineInstancePropertiesStorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Unique identifier for the vm resource.
  final String vmId;

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
    required this.azureApiVersion,
    this.createFromLocal,
    this.extendedLocation,
    this.guestAgentInstallStatus,
    this.hardwareProfile,
    this.httpProxyConfig,
    required this.id,
    this.identity,
    required this.instanceView,
    required this.name,
    this.networkProfile,
    this.osProfile,
    required this.provisioningState,
    this.resourceUid,
    this.securityProfile,
    required this.status,
    this.storageProfile,
    required this.systemData,
    required this.type,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createFromLocal': ?createFromLocal,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'guestAgentInstallStatus': ?guestAgentInstallStatus == null ? null : guestAgentInstallStatus!.toMap(),
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'httpProxyConfig': ?httpProxyConfig == null ? null : httpProxyConfig!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'instanceView': instanceView.toMap(),
      'name': name,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'provisioningState': provisioningState,
      'resourceUid': ?resourceUid,
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'status': status.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'vmId': vmId,
    };
  }

  factory GetVirtualMachineInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createFromLocal: map['createFromLocal'] == null ? null : map['createFromLocal']! as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      guestAgentInstallStatus: map['guestAgentInstallStatus'] == null ? null : GuestAgentInstallStatusResponse.fromMap((map['guestAgentInstallStatus']! as Map).cast<String, dynamic>()),
      hardwareProfile: map['hardwareProfile'] == null ? null : VirtualMachineInstancePropertiesHardwareProfileResponse.fromMap((map['hardwareProfile']! as Map).cast<String, dynamic>()),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : HttpProxyConfigurationResponse.fromMap((map['httpProxyConfig']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      instanceView: VirtualMachineInstanceViewResponse.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : VirtualMachineInstancePropertiesNetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : VirtualMachineInstancePropertiesOsProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      resourceUid: map['resourceUid'] == null ? null : map['resourceUid']! as String,
      securityProfile: map['securityProfile'] == null ? null : VirtualMachineInstancePropertiesSecurityProfileResponse.fromMap((map['securityProfile']! as Map).cast<String, dynamic>()),
      status: VirtualMachineInstanceStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : VirtualMachineInstancePropertiesStorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      vmId: map['vmId'] as String,
    );
  }
}

