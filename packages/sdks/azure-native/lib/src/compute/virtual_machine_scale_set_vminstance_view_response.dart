// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_diagnostics_instance_view_response.dart';
import 'disk_instance_view_response.dart';
import 'instance_view_status_response.dart';
import 'maintenance_redeploy_status_response.dart';
import 'virtual_machine_agent_instance_view_response.dart';
import 'virtual_machine_extension_instance_view_response.dart';
import 'virtual_machine_health_status_response.dart';

/// The instance view of a virtual machine scale set VM.
class VirtualMachineScaleSetVMInstanceViewResponse {
  /// Resource id of the dedicated host, on which the virtual machine is allocated through automatic placement, when the virtual machine is associated with a dedicated host group that has automatic placement enabled. Minimum api-version: 2020-06-01.
  final pulumi.Input<String> assignedHost;
  /// Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.
  final pulumi.Input<BootDiagnosticsInstanceViewResponse>? bootDiagnostics;
  /// Specifies the host OS name of the virtual machine. <br><br> This name cannot be updated after the VM is created. <br><br> **Max-length (Windows):** 15 characters <br><br> **Max-length (Linux):** 64 characters. <br><br> For naming conventions and restrictions see [Azure infrastructure services implementation guidelines](https://learn.microsoft.com/previous-versions/azure/virtual-machines/linux/infrastructure-example?toc=%2Fazure%2Fvirtual-machines%2Flinux%2Ftoc.json#1-naming-conventions).
  final pulumi.Input<String>? computerName;
  /// The disks information.
  final pulumi.Input<List<DiskInstanceViewResponse>>? disks;
  /// The extensions information.
  final pulumi.Input<List<VirtualMachineExtensionInstanceViewResponse>>? extensions;
  /// The hypervisor generation of the Virtual Machine [V1, V2]
  final pulumi.Input<String>? hyperVGeneration;
  /// The Maintenance Operation status on the virtual machine.
  final pulumi.Input<MaintenanceRedeployStatusResponse>? maintenanceRedeployStatus;
  /// The Operating System running on the hybrid machine.
  final pulumi.Input<String>? osName;
  /// The version of Operating System running on the hybrid machine.
  final pulumi.Input<String>? osVersion;
  /// The placement group in which the VM is running. If the VM is deallocated it will not have a placementGroupId.
  final pulumi.Input<String>? placementGroupId;
  /// The Fault Domain count.
  final pulumi.Input<int>? platformFaultDomain;
  /// The Update Domain count.
  final pulumi.Input<int>? platformUpdateDomain;
  /// The Remote desktop certificate thumbprint.
  final pulumi.Input<String>? rdpThumbPrint;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;
  /// The VM Agent running on the virtual machine.
  final pulumi.Input<VirtualMachineAgentInstanceViewResponse>? vmAgent;
  /// The health status for the VM.
  final pulumi.Input<VirtualMachineHealthStatusResponse> vmHealth;

  /// Creates a new [VirtualMachineScaleSetVMInstanceViewResponse].
  /// [assignedHost] Resource id of the dedicated host, on which the virtual machine is allocated through automatic placement, when the virtual machine is associated with a dedicated host group that has automatic placement enabled. Minimum api-version: 2020-06-01.
  /// [bootDiagnostics] Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.
  /// [computerName] Specifies the host OS name of the virtual machine. <br><br> This name cannot be updated after the VM is created. <br><br> **Max-length (Windows):** 15 characters <br><br> **Max-length (Linux):** 64 characters. <br><br> For naming conventions and restrictions see [Azure infrastructure services implementation guidelines](https://learn.microsoft.com/previous-versions/azure/virtual-machines/linux/infrastructure-example?toc=%2Fazure%2Fvirtual-machines%2Flinux%2Ftoc.json#1-naming-conventions).
  /// [disks] The disks information.
  /// [extensions] The extensions information.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine [V1, V2]
  /// [maintenanceRedeployStatus] The Maintenance Operation status on the virtual machine.
  /// [osName] The Operating System running on the hybrid machine.
  /// [osVersion] The version of Operating System running on the hybrid machine.
  /// [placementGroupId] The placement group in which the VM is running. If the VM is deallocated it will not have a placementGroupId.
  /// [platformFaultDomain] The Fault Domain count.
  /// [platformUpdateDomain] The Update Domain count.
  /// [rdpThumbPrint] The Remote desktop certificate thumbprint.
  /// [statuses] The resource status information.
  /// [vmAgent] The VM Agent running on the virtual machine.
  /// [vmHealth] The health status for the VM.
  VirtualMachineScaleSetVMInstanceViewResponse({
    required this.assignedHost,
    this.bootDiagnostics,
    this.computerName,
    this.disks,
    this.extensions,
    this.hyperVGeneration,
    this.maintenanceRedeployStatus,
    this.osName,
    this.osVersion,
    this.placementGroupId,
    this.platformFaultDomain,
    this.platformUpdateDomain,
    this.rdpThumbPrint,
    this.statuses,
    this.vmAgent,
    required this.vmHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedHost': assignedHost,
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<BootDiagnosticsInstanceViewResponse, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'computerName': ?computerName,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<DiskInstanceViewResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<DiskInstanceViewResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineExtensionInstanceViewResponse>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<VirtualMachineExtensionInstanceViewResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hyperVGeneration': ?hyperVGeneration,
      'maintenanceRedeployStatus': ?pulumi.Input.mapOptionalInputValue<MaintenanceRedeployStatusResponse, Map<String, dynamic>>(maintenanceRedeployStatus, (value) => value.toMap()),
      'osName': ?osName,
      'osVersion': ?osVersion,
      'placementGroupId': ?placementGroupId,
      'platformFaultDomain': ?platformFaultDomain,
      'platformUpdateDomain': ?platformUpdateDomain,
      'rdpThumbPrint': ?rdpThumbPrint,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmAgent': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAgentInstanceViewResponse, Map<String, dynamic>>(vmAgent, (value) => value.toMap()),
      'vmHealth': pulumi.Input.mapInputValue<VirtualMachineHealthStatusResponse, Map<String, dynamic>>(vmHealth, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetVMInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetVMInstanceViewResponse(
      assignedHost: (map['assignedHost'] as String).input(),
      bootDiagnostics: map['bootDiagnostics'] == null ? null : (BootDiagnosticsInstanceViewResponse.fromMap((map['bootDiagnostics']! as Map).cast<String, dynamic>())).input(),
      computerName: map['computerName'] == null ? null : (map['computerName']! as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<DiskInstanceViewResponse>(map['disks']!, (value) => DiskInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<VirtualMachineExtensionInstanceViewResponse>(map['extensions']!, (value) => VirtualMachineExtensionInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : (map['hyperVGeneration']! as String).input(),
      maintenanceRedeployStatus: map['maintenanceRedeployStatus'] == null ? null : (MaintenanceRedeployStatusResponse.fromMap((map['maintenanceRedeployStatus']! as Map).cast<String, dynamic>())).input(),
      osName: map['osName'] == null ? null : (map['osName']! as String).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion']! as String).input(),
      placementGroupId: map['placementGroupId'] == null ? null : (map['placementGroupId']! as String).input(),
      platformFaultDomain: map['platformFaultDomain'] == null ? null : (map['platformFaultDomain']! as int).input(),
      platformUpdateDomain: map['platformUpdateDomain'] == null ? null : (map['platformUpdateDomain']! as int).input(),
      rdpThumbPrint: map['rdpThumbPrint'] == null ? null : (map['rdpThumbPrint']! as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses']!, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmAgent: map['vmAgent'] == null ? null : (VirtualMachineAgentInstanceViewResponse.fromMap((map['vmAgent']! as Map).cast<String, dynamic>())).input(),
      vmHealth: (VirtualMachineHealthStatusResponse.fromMap((map['vmHealth'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

