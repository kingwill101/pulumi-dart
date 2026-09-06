// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_instance_view_response_status.dart';

/// Describes the Machine Extension Instance View.
class MachineExtensionInstanceViewResponse {
  /// The machine extension name.
  final pulumi.Input<String?>? name;
  /// Instance view status.
  final pulumi.Input<MachineExtensionInstanceViewResponseStatus?>? status;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String?>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String?>? typeHandlerVersion;

  /// Creates a new [MachineExtensionInstanceViewResponse].
  /// [name] The machine extension name.
  /// [status] Instance view status.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  const MachineExtensionInstanceViewResponse({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineExtensionInstanceViewResponseStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeHandlerVersion: (() { final guardedValue = map['typeHandlerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
