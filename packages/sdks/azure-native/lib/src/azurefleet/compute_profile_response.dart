// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_capabilities_response.dart';
import 'base_virtual_machine_profile_response.dart';

/// Compute Profile to use for running user's workloads.
class ComputeProfileResponse {
  /// Specifies VMSS and VM API entity models support two additional capabilities as of today: ultraSSDEnabled and hibernationEnabled.
  /// ultraSSDEnabled: Enables UltraSSD_LRS storage account type on the VMSS VMs.
  /// hibernationEnabled: Enables the hibernation capability on the VMSS VMs.
  /// Default value is null if not specified. This property cannot be updated once set.
  final pulumi.Input<AdditionalCapabilitiesResponse>? additionalVirtualMachineCapabilities;
  /// Base Virtual Machine Profile Properties to be specified according to "specification/compute/resource-manager/Microsoft.Compute/ComputeRP/stable/{computeApiVersion}/virtualMachineScaleSet.json#/definitions/VirtualMachineScaleSetVMProfile"
  final pulumi.Input<BaseVirtualMachineProfileResponse> baseVirtualMachineProfile;
  /// Specifies the Microsoft.Compute API version to use when creating underlying Virtual Machine scale sets and Virtual Machines.
  /// The default value will be the latest supported computeApiVersion by Compute Fleet.
  final pulumi.Input<String>? computeApiVersion;
  /// Specifies the number of fault domains to use when creating the underlying VMSS.
  /// A fault domain is a logical group of hardware within an Azure datacenter.
  /// VMs in the same fault domain share a common power source and network switch.
  /// If not specified, defaults to 1, which represents "Max Spreading" (using as many fault domains as possible).
  /// This property cannot be updated.
  final pulumi.Input<int>? platformFaultDomainCount;

  /// Creates a new [ComputeProfileResponse].
  /// [additionalVirtualMachineCapabilities] Specifies VMSS and VM API entity models support two additional capabilities as of today: ultraSSDEnabled and hibernationEnabled.
  /// [baseVirtualMachineProfile] Base Virtual Machine Profile Properties to be specified according to "specification/compute/resource-manager/Microsoft.Compute/ComputeRP/stable/{computeApiVersion}/virtualMachineScaleSet.json#/definitions/VirtualMachineScaleSetVMProfile"
  /// [computeApiVersion] Specifies the Microsoft.Compute API version to use when creating underlying Virtual Machine scale sets and Virtual Machines.
  /// [platformFaultDomainCount] Specifies the number of fault domains to use when creating the underlying VMSS.
  const ComputeProfileResponse({
    this.additionalVirtualMachineCapabilities,
    required this.baseVirtualMachineProfile,
    this.computeApiVersion,
    this.platformFaultDomainCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVirtualMachineCapabilities': ?pulumi.Input.mapOptionalInputValue<AdditionalCapabilitiesResponse, Map<String, dynamic>>(additionalVirtualMachineCapabilities, (value) => value.toMap()),
      'baseVirtualMachineProfile': pulumi.Input.mapInputValue<BaseVirtualMachineProfileResponse, Map<String, dynamic>>(baseVirtualMachineProfile, (value) => value.toMap()),
      'computeApiVersion': ?computeApiVersion,
      'platformFaultDomainCount': ?platformFaultDomainCount,
    };
  }

  factory ComputeProfileResponse.fromMap(Map<String, dynamic> map) {
    return ComputeProfileResponse(
      additionalVirtualMachineCapabilities: (() { final guardedValue = map['additionalVirtualMachineCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baseVirtualMachineProfile: pulumi.Input.fromValue(BaseVirtualMachineProfileResponse.fromMap((map['baseVirtualMachineProfile']! as Map).cast<String, dynamic>())),
      computeApiVersion: (() { final guardedValue = map['computeApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
