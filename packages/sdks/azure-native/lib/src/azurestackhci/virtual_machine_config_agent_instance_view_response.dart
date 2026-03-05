// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The instance view of the VM Config Agent running on the virtual machine.
class VirtualMachineConfigAgentInstanceViewResponse {
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;
  /// The VM Config Agent full version.
  final pulumi.Input<String>? vmConfigAgentVersion;

  /// Creates a new [VirtualMachineConfigAgentInstanceViewResponse].
  /// [statuses] The resource status information.
  /// [vmConfigAgentVersion] The VM Config Agent full version.
  VirtualMachineConfigAgentInstanceViewResponse({
    this.statuses,
    this.vmConfigAgentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmConfigAgentVersion': ?vmConfigAgentVersion,
    };
  }

  factory VirtualMachineConfigAgentInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigAgentInstanceViewResponse(
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmConfigAgentVersion: (() { final guardedValue = map['vmConfigAgentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

