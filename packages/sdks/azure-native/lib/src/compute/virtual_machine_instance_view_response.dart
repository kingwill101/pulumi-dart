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
  final pulumi.Input<String> assignedHost;
  /// Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.
  final pulumi.Input<BootDiagnosticsInstanceViewResponse>? bootDiagnostics;
  /// The computer name assigned to the virtual machine.
  final pulumi.Input<String>? computerName;
  /// The virtual machine disk information.
  final pulumi.Input<List<DiskInstanceViewResponse>>? disks;
  /// The extensions information.
  final pulumi.Input<List<VirtualMachineExtensionInstanceViewResponse>>? extensions;
  /// Specifies the HyperVGeneration Type associated with a resource
  final pulumi.Input<String>? hyperVGeneration;
  /// [Preview Feature] Specifies whether the VM is currently in or out of the Standby Pool.
  final pulumi.Input<bool> isVMInStandbyPool;
  /// The Maintenance Operation status on the virtual machine.
  final pulumi.Input<MaintenanceRedeployStatusResponse>? maintenanceRedeployStatus;
  /// The Operating System running on the virtual machine.
  final pulumi.Input<String>? osName;
  /// The version of Operating System running on the virtual machine.
  final pulumi.Input<String>? osVersion;
  /// [Preview Feature] The status of virtual machine patch operations.
  final pulumi.Input<VirtualMachinePatchStatusResponse>? patchStatus;
  /// Specifies the fault domain of the virtual machine.
  final pulumi.Input<int>? platformFaultDomain;
  /// Specifies the update domain of the virtual machine.
  final pulumi.Input<int>? platformUpdateDomain;
  /// The Remote desktop certificate thumbprint.
  final pulumi.Input<String>? rdpThumbPrint;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;
  /// The VM Agent running on the virtual machine.
  final pulumi.Input<VirtualMachineAgentInstanceViewResponse>? vmAgent;
  /// The health status for the VM.
  final pulumi.Input<VirtualMachineHealthStatusResponse> vmHealth;

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
  const VirtualMachineInstanceViewResponse({
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
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<BootDiagnosticsInstanceViewResponse, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'computerName': ?computerName,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<DiskInstanceViewResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<DiskInstanceViewResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineExtensionInstanceViewResponse>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<VirtualMachineExtensionInstanceViewResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hyperVGeneration': ?hyperVGeneration,
      'isVMInStandbyPool': isVMInStandbyPool,
      'maintenanceRedeployStatus': ?pulumi.Input.mapOptionalInputValue<MaintenanceRedeployStatusResponse, Map<String, dynamic>>(maintenanceRedeployStatus, (value) => value.toMap()),
      'osName': ?osName,
      'osVersion': ?osVersion,
      'patchStatus': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePatchStatusResponse, Map<String, dynamic>>(patchStatus, (value) => value.toMap()),
      'platformFaultDomain': ?platformFaultDomain,
      'platformUpdateDomain': ?platformUpdateDomain,
      'rdpThumbPrint': ?rdpThumbPrint,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmAgent': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAgentInstanceViewResponse, Map<String, dynamic>>(vmAgent, (value) => value.toMap()),
      'vmHealth': pulumi.Input.mapInputValue<VirtualMachineHealthStatusResponse, Map<String, dynamic>>(vmHealth, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceViewResponse(
      assignedHost: pulumi.Input.fromValue(map['assignedHost'] as String),
      bootDiagnostics: (() { final guardedValue = map['bootDiagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootDiagnosticsInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiskInstanceViewResponse>(guardedValue, (value) => DiskInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineExtensionInstanceViewResponse>(guardedValue, (value) => VirtualMachineExtensionInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isVMInStandbyPool: pulumi.Input.fromValue(map['isVMInStandbyPool'] as bool),
      maintenanceRedeployStatus: (() { final guardedValue = map['maintenanceRedeployStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceRedeployStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchStatus: (() { final guardedValue = map['patchStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePatchStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformFaultDomain: (() { final guardedValue = map['platformFaultDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      platformUpdateDomain: (() { final guardedValue = map['platformUpdateDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rdpThumbPrint: (() { final guardedValue = map['rdpThumbPrint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmAgent: (() { final guardedValue = map['vmAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineAgentInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmHealth: pulumi.Input.fromValue(VirtualMachineHealthStatusResponse.fromMap((map['vmHealth']! as Map).cast<String, dynamic>())),
    );
  }
}
