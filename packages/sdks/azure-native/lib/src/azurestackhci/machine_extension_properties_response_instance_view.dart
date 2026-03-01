// ignore_for_file: unused_element, unnecessary_cast

import 'machine_extension_instance_view_response_status.dart';

/// The machine extension instance view.
class MachineExtensionPropertiesResponseInstanceView {
  /// The machine extension name.
  final String name;
  /// Instance view status.
  final MachineExtensionInstanceViewResponseStatus? status;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final String type;
  /// Specifies the version of the script handler.
  final String typeHandlerVersion;

  /// Creates a new [MachineExtensionPropertiesResponseInstanceView].
  /// [name] The machine extension name.
  /// [status] Instance view status.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  MachineExtensionPropertiesResponseInstanceView({
    required this.name,
    this.status,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': ?status == null ? null : status!.toMap(),
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory MachineExtensionPropertiesResponseInstanceView.fromMap(Map<String, dynamic> map) {
    return MachineExtensionPropertiesResponseInstanceView(
      name: map['name'] as String,
      status: map['status'] == null ? null : MachineExtensionInstanceViewResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

