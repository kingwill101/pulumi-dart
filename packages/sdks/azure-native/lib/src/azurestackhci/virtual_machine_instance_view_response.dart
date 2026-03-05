// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_config_agent_instance_view_response.dart';

/// The instance view of a virtual machine.
class VirtualMachineInstanceViewResponse {
  /// The VM Config Agent running on the virtual machine.
  final pulumi.Input<VirtualMachineConfigAgentInstanceViewResponse>? vmAgent;

  /// Creates a new [VirtualMachineInstanceViewResponse].
  /// [vmAgent] The VM Config Agent running on the virtual machine.
  VirtualMachineInstanceViewResponse({
    this.vmAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmAgent': ?pulumi.Input.mapOptionalInputValue<VirtualMachineConfigAgentInstanceViewResponse, Map<String, dynamic>>(vmAgent, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceViewResponse(
      vmAgent: (() { final guardedValue = map['vmAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineConfigAgentInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

