// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The instance view of a virtual machine extension.
class VirtualMachineExtensionInstanceViewResponse {
  /// The virtual machine extension name.
  final String? name;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? substatuses;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final String? type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [VirtualMachineExtensionInstanceViewResponse].
  /// [name] The virtual machine extension name.
  /// [statuses] The resource status information.
  /// [substatuses] The resource status information.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VirtualMachineExtensionInstanceViewResponse({
    this.name,
    this.statuses,
    this.substatuses,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'substatuses': ?substatuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(substatuses!, (value) => value.toMap()),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineExtensionInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionInstanceViewResponse(
      name: map['name'] == null ? null : map['name'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      substatuses: map['substatuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['substatuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

