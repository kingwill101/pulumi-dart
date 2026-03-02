// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';
import 'virtual_machine_extension_handler_instance_view_response.dart';

/// The instance view of the VM Agent running on the virtual machine.
class VirtualMachineAgentInstanceViewResponse {
  /// The virtual machine extension handler instance view.
  final pulumi.Input<List<VirtualMachineExtensionHandlerInstanceViewResponse>>? extensionHandlers;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;
  /// The VM Agent full version.
  final pulumi.Input<String>? vmAgentVersion;

  /// Creates a new [VirtualMachineAgentInstanceViewResponse].
  /// [extensionHandlers] The virtual machine extension handler instance view.
  /// [statuses] The resource status information.
  /// [vmAgentVersion] The VM Agent full version.
  VirtualMachineAgentInstanceViewResponse({
    this.extensionHandlers,
    this.statuses,
    this.vmAgentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionHandlers': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineExtensionHandlerInstanceViewResponse>, List<Map<String, dynamic>>>(extensionHandlers, (value) => pulumi.Input.encodeList<VirtualMachineExtensionHandlerInstanceViewResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmAgentVersion': ?vmAgentVersion,
    };
  }

  factory VirtualMachineAgentInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAgentInstanceViewResponse(
      extensionHandlers: map['extensionHandlers'] == null ? null : (pulumi.Input.decodeList<VirtualMachineExtensionHandlerInstanceViewResponse>(map['extensionHandlers']!, (value) => VirtualMachineExtensionHandlerInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses']!, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmAgentVersion: map['vmAgentVersion'] == null ? null : (map['vmAgentVersion']! as String).input(),
    );
  }
}

