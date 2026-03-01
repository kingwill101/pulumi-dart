// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_diagnostics_instance_view_response.dart';
import 'disk_instance_view_response.dart';
import 'instance_view_status_response.dart';
import 'maintenance_redeploy_status_response.dart';
import 'virtual_machine_agent_instance_view_response.dart';
import 'virtual_machine_extension_instance_view_response.dart';
import 'virtual_machine_health_status_response.dart';
import 'virtual_machine_patch_status_response.dart';

/// The instance view of a virtual machine.
class VirtualMachineInstanceViewResponse {
  /// Resource id of the dedicated host, on which the virtual machine is allocated through automatic placement, when the virtual machine is associated with a dedicated host group that has automatic placement enabled. Minimum api-version: 2020-06-01.
  final String assignedHost;
  /// Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.
  final BootDiagnosticsInstanceViewResponse? bootDiagnostics;
  /// The computer name assigned to the virtual machine.
  final String? computerName;
  /// The virtual machine disk information.
  final List<DiskInstanceViewResponse>? disks;
  /// The extensions information.
  final List<VirtualMachineExtensionInstanceViewResponse>? extensions;
  /// Specifies the HyperVGeneration Type associated with a resource
  final String? hyperVGeneration;
  /// [Preview Feature] Specifies whether the VM is currently in or out of the Standby Pool.
  final bool isVMInStandbyPool;
  /// The Maintenance Operation status on the virtual machine.
  final MaintenanceRedeployStatusResponse? maintenanceRedeployStatus;
  /// The Operating System running on the virtual machine.
  final String? osName;
  /// The version of Operating System running on the virtual machine.
  final String? osVersion;
  /// [Preview Feature] The status of virtual machine patch operations.
  final VirtualMachinePatchStatusResponse? patchStatus;
  /// Specifies the fault domain of the virtual machine.
  final int? platformFaultDomain;
  /// Specifies the update domain of the virtual machine.
  final int? platformUpdateDomain;
  /// The Remote desktop certificate thumbprint.
  final String? rdpThumbPrint;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;
  /// The VM Agent running on the virtual machine.
  final VirtualMachineAgentInstanceViewResponse? vmAgent;
  /// The health status for the VM.
  final VirtualMachineHealthStatusResponse vmHealth;

  /// Creates a new [VirtualMachineInstanceViewResponse].
  /// [assignedHost] Resource id of the dedicated host, on which the virtual machine is allocated through automatic placement, when the virtual machine is associated with a dedicated host group that has automatic placement enabled. Minimum api-version: 2020-06-01.
  /// [bootDiagnostics] Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.
  /// [computerName] The computer name assigned to the virtual machine.
  /// [disks] The virtual machine disk information.
  /// [extensions] The extensions information.
  /// [hyperVGeneration] Specifies the HyperVGeneration Type associated with a resource
  /// [isVMInStandbyPool] [Preview Feature] Specifies whether the VM is currently in or out of the Standby Pool.
  /// [maintenanceRedeployStatus] The Maintenance Operation status on the virtual machine.
  /// [osName] The Operating System running on the virtual machine.
  /// [osVersion] The version of Operating System running on the virtual machine.
  /// [patchStatus] [Preview Feature] The status of virtual machine patch operations.
  /// [platformFaultDomain] Specifies the fault domain of the virtual machine.
  /// [platformUpdateDomain] Specifies the update domain of the virtual machine.
  /// [rdpThumbPrint] The Remote desktop certificate thumbprint.
  /// [statuses] The resource status information.
  /// [vmAgent] The VM Agent running on the virtual machine.
  /// [vmHealth] The health status for the VM.
  VirtualMachineInstanceViewResponse({
    required this.assignedHost,
    this.bootDiagnostics,
    this.computerName,
    this.disks,
    this.extensions,
    this.hyperVGeneration,
    required this.isVMInStandbyPool,
    this.maintenanceRedeployStatus,
    this.osName,
    this.osVersion,
    this.patchStatus,
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
      'bootDiagnostics': ?bootDiagnostics == null ? null : bootDiagnostics!.toMap(),
      'computerName': ?computerName,
      'disks': ?disks == null ? null : pulumi.Input.encodeList<DiskInstanceViewResponse, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<VirtualMachineExtensionInstanceViewResponse, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'hyperVGeneration': ?hyperVGeneration,
      'isVMInStandbyPool': isVMInStandbyPool,
      'maintenanceRedeployStatus': ?maintenanceRedeployStatus == null ? null : maintenanceRedeployStatus!.toMap(),
      'osName': ?osName,
      'osVersion': ?osVersion,
      'patchStatus': ?patchStatus == null ? null : patchStatus!.toMap(),
      'platformFaultDomain': ?platformFaultDomain,
      'platformUpdateDomain': ?platformUpdateDomain,
      'rdpThumbPrint': ?rdpThumbPrint,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'vmAgent': ?vmAgent == null ? null : vmAgent!.toMap(),
      'vmHealth': vmHealth.toMap(),
    };
  }

  factory VirtualMachineInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceViewResponse(
      assignedHost: map['assignedHost'] as String,
      bootDiagnostics: map['bootDiagnostics'] == null ? null : BootDiagnosticsInstanceViewResponse.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>()),
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<DiskInstanceViewResponse>(map['disks'], (value) => DiskInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>())),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<VirtualMachineExtensionInstanceViewResponse>(map['extensions'], (value) => VirtualMachineExtensionInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>())),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : map['hyperVGeneration'] as String,
      isVMInStandbyPool: map['isVMInStandbyPool'] as bool,
      maintenanceRedeployStatus: map['maintenanceRedeployStatus'] == null ? null : MaintenanceRedeployStatusResponse.fromMap((map['maintenanceRedeployStatus'] as Map).cast<String, dynamic>()),
      osName: map['osName'] == null ? null : map['osName'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
      patchStatus: map['patchStatus'] == null ? null : VirtualMachinePatchStatusResponse.fromMap((map['patchStatus'] as Map).cast<String, dynamic>()),
      platformFaultDomain: map['platformFaultDomain'] == null ? null : map['platformFaultDomain'] as int,
      platformUpdateDomain: map['platformUpdateDomain'] == null ? null : map['platformUpdateDomain'] as int,
      rdpThumbPrint: map['rdpThumbPrint'] == null ? null : map['rdpThumbPrint'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmAgent: map['vmAgent'] == null ? null : VirtualMachineAgentInstanceViewResponse.fromMap((map['vmAgent'] as Map).cast<String, dynamic>()),
      vmHealth: VirtualMachineHealthStatusResponse.fromMap((map['vmHealth'] as Map).cast<String, dynamic>()),
    );
  }
}

