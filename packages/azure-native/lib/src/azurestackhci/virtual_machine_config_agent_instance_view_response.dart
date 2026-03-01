// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The instance view of the VM Config Agent running on the virtual machine.
class VirtualMachineConfigAgentInstanceViewResponse {
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;
  /// The VM Config Agent full version.
  final String? vmConfigAgentVersion;

  /// Creates a new [VirtualMachineConfigAgentInstanceViewResponse].
  /// [statuses] The resource status information.
  /// [vmConfigAgentVersion] The VM Config Agent full version.
  VirtualMachineConfigAgentInstanceViewResponse({
    this.statuses,
    this.vmConfigAgentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'vmConfigAgentVersion': ?vmConfigAgentVersion,
    };
  }

  factory VirtualMachineConfigAgentInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigAgentInstanceViewResponse(
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmConfigAgentVersion: map['vmConfigAgentVersion'] == null ? null : map['vmConfigAgentVersion'] as String,
    );
  }
}

