// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_instance_view_response_status.dart';

/// Describes the Machine Extension Instance View.
class MachineExtensionInstanceViewResponse {
  /// The machine extension name.
  final pulumi.Input<String>? name;
  /// Instance view status.
  final pulumi.Input<MachineExtensionInstanceViewResponseStatus>? status;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [MachineExtensionInstanceViewResponse].
  /// [name] The machine extension name.
  /// [status] Instance view status.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  MachineExtensionInstanceViewResponse({
    this.name,
    this.status,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status': ?pulumi.Input.mapOptionalInputValue<MachineExtensionInstanceViewResponseStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory MachineExtensionInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return MachineExtensionInstanceViewResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (MachineExtensionInstanceViewResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion'] as String).input(),
    );
  }
}

