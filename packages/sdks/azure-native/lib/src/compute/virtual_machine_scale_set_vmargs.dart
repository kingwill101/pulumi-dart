// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities.dart';
import 'diagnostics_profile.dart';
import 'hardware_profile.dart';
import 'network_profile.dart';
import 'osprofile.dart';
import 'plan.dart';
import 'security_profile.dart';
import 'storage_profile.dart';
import 'sub_resource.dart';
import 'virtual_machine_identity.dart';
import 'virtual_machine_scale_set_vmnetwork_profile_configuration.dart';
import 'virtual_machine_scale_set_vmprotection_policy.dart';

/// {@template pulumi_compute_virtual_machine_scale_set_vmargs_doc}
/// The set of arguments for VirtualMachineScaleSetVM.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_scale_set_vmargs_doc}
class VirtualMachineScaleSetVMArgs {
  /// Specifies additional capabilities enabled or disabled on the virtual machine in the scale set. For instance: whether the virtual machine has the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  final pulumi.Input<AdditionalCapabilities?>? additionalCapabilities;
  /// Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. An existing VM cannot be added to an availability set.
  final pulumi.Input<SubResource?>? availabilitySet;
  /// Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  final pulumi.Input<DiagnosticsProfile?>? diagnosticsProfile;
  /// Specifies the hardware settings for the virtual machine.
  final pulumi.Input<HardwareProfile?>? hardwareProfile;
  /// The identity of the virtual machine, if configured.
  final pulumi.Input<VirtualMachineIdentity?>? identity;
  /// The instance ID of the virtual machine.
  final pulumi.Input<String?>? instanceId;
  /// Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  final pulumi.Input<String?>? licenseType;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Specifies the network interfaces of the virtual machine.
  final pulumi.Input<NetworkProfile?>? networkProfile;
  /// Specifies the network profile configuration of the virtual machine.
  final pulumi.Input<VirtualMachineScaleSetVMNetworkProfileConfiguration?>? networkProfileConfiguration;
  /// Specifies the operating system settings for the virtual machine.
  final pulumi.Input<OSProfile?>? osProfile;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  final pulumi.Input<Plan?>? plan;
  /// Specifies the protection policy of the virtual machine.
  final pulumi.Input<VirtualMachineScaleSetVMProtectionPolicy?>? protectionPolicy;
  /// Specifies the resilient VM deletion status for the virtual machine.
  final pulumi.Input<dynamic>? resilientVMDeletionStatus;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the Security related profile settings for the virtual machine.
  final pulumi.Input<SecurityProfile?>? securityProfile;
  /// Specifies the storage settings for the virtual machine disks.
  final pulumi.Input<StorageProfile?>? storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01
  final pulumi.Input<String?>? userData;
  /// The name of the VM scale set.
  final pulumi.Input<String> vmScaleSetName;

  /// Creates a new [VirtualMachineScaleSetVMArgs].
  /// [additionalCapabilities] Specifies additional capabilities enabled or disabled on the virtual machine in the scale set. For instance: whether the virtual machine has the capability to support attaching managed data disks with UltraSSD_LRS storage account type.
  /// [availabilitySet] Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Availability sets overview](https://docs.microsoft.com/azure/virtual-machines/availability-set-overview). For more information on Azure planned maintenance, see [Maintenance and updates for Virtual Machines in Azure](https://docs.microsoft.com/azure/virtual-machines/maintenance-and-updates). Currently, a VM can only be added to availability set at creation time. An existing VM cannot be added to an availability set.
  /// [diagnosticsProfile] Specifies the boot diagnostic settings state. Minimum api-version: 2015-06-15.
  /// [hardwareProfile] Specifies the hardware settings for the virtual machine.
  /// [identity] The identity of the virtual machine, if configured.
  /// [instanceId] The instance ID of the virtual machine.
  /// [licenseType] Specifies that the image or disk that is being used was licensed on-premises. &lt;br&gt;&lt;br&gt; Possible values for Windows Server operating system are: &lt;br&gt;&lt;br&gt; Windows_Client &lt;br&gt;&lt;br&gt; Windows_Server &lt;br&gt;&lt;br&gt; Possible values for Linux Server operating system are: &lt;br&gt;&lt;br&gt; RHEL_BYOS (for RHEL) &lt;br&gt;&lt;br&gt; SLES_BYOS (for SUSE) &lt;br&gt;&lt;br&gt; For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) &lt;br&gt;&lt;br&gt; [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) &lt;br&gt;&lt;br&gt; Minimum api-version: 2015-06-15
  /// [location] The geo-location where the resource lives
  /// [networkProfile] Specifies the network interfaces of the virtual machine.
  /// [networkProfileConfiguration] Specifies the network profile configuration of the virtual machine.
  /// [osProfile] Specifies the operating system settings for the virtual machine.
  /// [plan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.
  /// [protectionPolicy] Specifies the protection policy of the virtual machine.
  /// [resilientVMDeletionStatus] Specifies the resilient VM deletion status for the virtual machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityProfile] Specifies the Security related profile settings for the virtual machine.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [tags] Resource tags.
  /// [userData] UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum api-version: 2021-03-01
  /// [vmScaleSetName] The name of the VM scale set.
  const VirtualMachineScaleSetVMArgs({
    this.additionalCapabilities,
    this.availabilitySet,
    this.diagnosticsProfile,
    this.hardwareProfile,
    this.identity,
    this.instanceId,
    this.licenseType,
    this.location,
    this.networkProfile,
    this.networkProfileConfiguration,
    this.osProfile,
    this.plan,
    this.protectionPolicy,
    this.resilientVMDeletionStatus,
    required this.resourceGroupName,
    this.securityProfile,
    this.storageProfile,
    this.tags,
    this.userData,
    required this.vmScaleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<AdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'availabilitySet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(availabilitySet, (value) => value.toMap()),
      'diagnosticsProfile': ?pulumi.Input.mapOptionalInputValue<DiagnosticsProfile, Map<String, dynamic>>(diagnosticsProfile, (value) => value.toMap()),
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<VirtualMachineIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'licenseType': ?licenseType,
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'networkProfileConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetVMNetworkProfileConfiguration, Map<String, dynamic>>(networkProfileConfiguration, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OSProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'protectionPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetVMProtectionPolicy, Map<String, dynamic>>(protectionPolicy, (value) => value.toMap()),
      'resilientVMDeletionStatus': ?resilientVMDeletionStatus,
      'resourceGroupName': resourceGroupName,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
      'userData': ?userData,
      'vmScaleSetName': vmScaleSetName,
    };
  }

  factory VirtualMachineScaleSetVMArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetVMArgs(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilitySet: (() { final guardedValue = map['availabilitySet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnosticsProfile: (() { final guardedValue = map['diagnosticsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HardwareProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkProfileConfiguration: (() { final guardedValue = map['networkProfileConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetVMNetworkProfileConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Plan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectionPolicy: (() { final guardedValue = map['protectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetVMProtectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resilientVMDeletionStatus: (() { final guardedValue = map['resilientVMDeletionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmScaleSetName: pulumi.Input.fromValue(map['vmScaleSetName'] as String),
    );
  }
}
