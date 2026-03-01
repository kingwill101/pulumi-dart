// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_config_agent_instance_view_response.dart';

/// The instance view of a virtual machine.
class VirtualMachineInstanceViewResponse {
  /// The VM Config Agent running on the virtual machine.
  final VirtualMachineConfigAgentInstanceViewResponse? vmAgent;

  /// Creates a new [VirtualMachineInstanceViewResponse].
  /// [vmAgent] The VM Config Agent running on the virtual machine.
  VirtualMachineInstanceViewResponse({
    this.vmAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmAgent': ?vmAgent == null ? null : vmAgent!.toMap(),
    };
  }

  factory VirtualMachineInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceViewResponse(
      vmAgent: map['vmAgent'] == null ? null : VirtualMachineConfigAgentInstanceViewResponse.fromMap((map['vmAgent'] as Map).cast<String, dynamic>()),
    );
  }
}

