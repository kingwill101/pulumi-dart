// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status.dart';

/// The instance view of a virtual machine extension.
class VirtualMachineExtensionInstanceView {
  /// The virtual machine extension name.
  final String? name;
  /// The resource status information.
  final List<InstanceViewStatus>? statuses;
  /// The resource status information.
  final List<InstanceViewStatus>? substatuses;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final String? type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [VirtualMachineExtensionInstanceView].
  /// [name] The virtual machine extension name.
  /// [statuses] The resource status information.
  /// [substatuses] The resource status information.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VirtualMachineExtensionInstanceView({
    this.name,
    this.statuses,
    this.substatuses,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatus, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'substatuses': ?substatuses == null ? null : pulumi.Input.encodeList<InstanceViewStatus, Map<String, dynamic>>(substatuses!, (value) => value.toMap()),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineExtensionInstanceView.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionInstanceView(
      name: map['name'] == null ? null : map['name'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatus>(map['statuses'], (value) => InstanceViewStatus.fromMap((value as Map).cast<String, dynamic>())),
      substatuses: map['substatuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatus>(map['substatuses'], (value) => InstanceViewStatus.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

