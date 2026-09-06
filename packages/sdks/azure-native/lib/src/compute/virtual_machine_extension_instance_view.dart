// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status.dart';

/// The instance view of a virtual machine extension.
class VirtualMachineExtensionInstanceView {
  /// The virtual machine extension name.
  final pulumi.Input<String?>? name;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatus>?>? statuses;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatus>?>? substatuses;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String?>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String?>? typeHandlerVersion;

  /// Creates a new [VirtualMachineExtensionInstanceView].
  /// [name] The virtual machine extension name.
  /// [statuses] The resource status information.
  /// [substatuses] The resource status information.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  const VirtualMachineExtensionInstanceView({
    this.name,
    this.statuses,
    this.substatuses,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'substatuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatus>, List<Map<String, dynamic>>>(substatuses, (value) => pulumi.Input.encodeList<InstanceViewStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineExtensionInstanceView.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionInstanceView(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatus>(guardedValue, (value) => InstanceViewStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      substatuses: (() { final guardedValue = map['substatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatus>(guardedValue, (value) => InstanceViewStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
