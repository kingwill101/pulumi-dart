// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities_response.dart';
import 'diagnostics_profile_response.dart';
import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'plan_response.dart';
import 'security_profile_response.dart';
import 'sku_response.dart';
import 'storage_profile_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_extension_response.dart';
import 'virtual_machine_identity_response.dart';
import 'virtual_machine_scale_set_vminstance_view_response.dart';
import 'virtual_machine_scale_set_vmnetwork_profile_configuration_response.dart';
import 'virtual_machine_scale_set_vmprotection_policy_response.dart';

/// Result data returned by getVirtualMachineScaleSetVM.
class GetVirtualMachineScaleSetVMResult {
  /// Specifies additional capabilities enabled or disabled on the virtual machine in the scale set. For instance: whether the virtual machine has the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  final AdditionalCapabilitiesResponse? additionalCapabilities;
  /// Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. An existing VM cannot be added to an availability set.
  final SubResourceResponse? availabilitySet;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  final DiagnosticsProfileResponse? diagnosticsProfile;
  /// Etag is property returned in Update/Get response of the VMSS VM, so that customer can supply it in the header to ensure optimistic updates.
  final String? etag;
  /// Specifies the hardware settings for the virtual machine.
  final HardwareProfileResponse? hardwareProfile;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity of the virtual machine, if configured.
  final VirtualMachineIdentityResponse? identity;
  /// The virtual machine instance ID.
  final String? instanceId;
  /// The virtual machine instance view.
  final VirtualMachineScaleSetVMInstanceViewResponse? instanceView;
  /// Specifies whether the latest model has been applied to the virtual machine.
  final bool? latestModelApplied;
  /// Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  final String? licenseType;
  /// The geo-location where the resource lives
  final String? location;
  /// Specifies whether the model applied to the virtual machine is the model of the virtual machine scale set or the customized model for the virtual machine.
  final String? modelDefinitionApplied;
  /// The name of the resource
  final String? name;
  /// Specifies the network interfaces of the virtual machine.
  final NetworkProfileResponse? networkProfile;
  /// Specifies the network profile configuration of the virtual machine.
  final VirtualMachineScaleSetVMNetworkProfileConfigurationResponse? networkProfileConfiguration;
  /// Specifies the operating system settings for the virtual machine.
  final OSProfileResponse? osProfile;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  final PlanResponse? plan;
  /// Specifies the protection policy of the virtual machine.
  final VirtualMachineScaleSetVMProtectionPolicyResponse? protectionPolicy;
  /// The provisioning state, which only appears in the response.
  final String? provisioningState;
  /// Specifies the resilient VM deletion status for the virtual machine.
  final String? resilientVMDeletionStatus;
  /// The virtual machine child extension resources.
  final List<VirtualMachineExtensionResponse>? resources;
  /// Specifies the Security related profile settings for the virtual machine.
  final SecurityProfileResponse? securityProfile;
  /// The virtual machine SKU.
  final SkuResponse? sku;
  /// Specifies the storage settings for the virtual machine disks.
  final StorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Specifies the time at which the Virtual Machine resource was created. Minimum api-version: 2021-11-01.
  final String? timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01
  final String? userData;
  /// Azure VM unique ID.
  final String? vmId;
  /// The virtual machine zones.
  final List<String>? zones;

  /// Creates a new [GetVirtualMachineScaleSetVMResult].
  /// [additionalCapabilities] Specifies additional capabilities enabled or disabled on the virtual machine in the scale set. For instance: whether the virtual machine has the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  /// [availabilitySet] Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. An existing VM cannot be added to an availability set.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [diagnosticsProfile] Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  /// [etag] Etag is property returned in Update/Get response of the VMSS VM, so that customer can supply it in the header to ensure optimistic updates.
  /// [hardwareProfile] Specifies the hardware settings for the virtual machine.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the virtual machine, if configured.
  /// [instanceId] The virtual machine instance ID.
  /// [instanceView] The virtual machine instance view.
  /// [latestModelApplied] Specifies whether the latest model has been applied to the virtual machine.
  /// [licenseType] Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  /// [location] The geo-location where the resource lives
  /// [modelDefinitionApplied] Specifies whether the model applied to the virtual machine is the model of the virtual machine scale set or the customized model for the virtual machine.
  /// [name] The name of the resource
  /// [networkProfile] Specifies the network interfaces of the virtual machine.
  /// [networkProfileConfiguration] Specifies the network profile configuration of the virtual machine.
  /// [osProfile] Specifies the operating system settings for the virtual machine.
  /// [plan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  /// [protectionPolicy] Specifies the protection policy of the virtual machine.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [resilientVMDeletionStatus] Specifies the resilient VM deletion status for the virtual machine.
  /// [resources] The virtual machine child extension resources.
  /// [securityProfile] Specifies the Security related profile settings for the virtual machine.
  /// [sku] The virtual machine SKU.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeCreated] Specifies the time at which the Virtual Machine resource was created. Minimum api-version: 2021-11-01.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userData] UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01
  /// [vmId] Azure VM unique ID.
  /// [zones] The virtual machine zones.
  const GetVirtualMachineScaleSetVMResult({
    this.additionalCapabilities,
    this.availabilitySet,
    this.azureApiVersion,
    this.diagnosticsProfile,
    this.etag,
    this.hardwareProfile,
    this.id,
    this.identity,
    this.instanceId,
    this.instanceView,
    this.latestModelApplied,
    this.licenseType,
    this.location,
    this.modelDefinitionApplied,
    this.name,
    this.networkProfile,
    this.networkProfileConfiguration,
    this.osProfile,
    this.plan,
    this.protectionPolicy,
    this.provisioningState,
    this.resilientVMDeletionStatus,
    this.resources,
    this.securityProfile,
    this.sku,
    this.storageProfile,
    this.systemData,
    this.tags,
    this.timeCreated,
    this.type,
    this.userData,
    this.vmId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities?.toMap(),
      'availabilitySet': ?availabilitySet?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'diagnosticsProfile': ?diagnosticsProfile?.toMap(),
      'etag': ?etag,
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'instanceId': ?instanceId,
      'instanceView': ?instanceView?.toMap(),
      'latestModelApplied': ?latestModelApplied,
      'licenseType': ?licenseType,
      'location': ?location,
      'modelDefinitionApplied': ?modelDefinitionApplied,
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'networkProfileConfiguration': ?networkProfileConfiguration?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'plan': ?plan?.toMap(),
      'protectionPolicy': ?protectionPolicy?.toMap(),
      'provisioningState': ?provisioningState,
      'resilientVMDeletionStatus': ?resilientVMDeletionStatus,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualMachineExtensionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityProfile': ?securityProfile?.toMap(),
      'sku': ?sku?.toMap(),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'timeCreated': ?timeCreated,
      'type': ?type,
      'userData': ?userData,
      'vmId': ?vmId,
      'zones': ?zones,
    };
  }

  factory GetVirtualMachineScaleSetVMResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetVMResult(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return AdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      availabilitySet: (() { final guardedValue = map['availabilitySet']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diagnosticsProfile: (() { final guardedValue = map['diagnosticsProfile']; if (guardedValue == null) return null; return DiagnosticsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return VirtualMachineIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceView: (() { final guardedValue = map['instanceView']; if (guardedValue == null) return null; return VirtualMachineScaleSetVMInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      latestModelApplied: (() { final guardedValue = map['latestModelApplied']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelDefinitionApplied: (() { final guardedValue = map['modelDefinitionApplied']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      networkProfileConfiguration: (() { final guardedValue = map['networkProfileConfiguration']; if (guardedValue == null) return null; return VirtualMachineScaleSetVMNetworkProfileConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return OSProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      protectionPolicy: (() { final guardedValue = map['protectionPolicy']; if (guardedValue == null) return null; return VirtualMachineScaleSetVMProtectionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resilientVMDeletionStatus: (() { final guardedValue = map['resilientVMDeletionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualMachineExtensionResponse>(guardedValue, (value) => VirtualMachineExtensionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return SecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
