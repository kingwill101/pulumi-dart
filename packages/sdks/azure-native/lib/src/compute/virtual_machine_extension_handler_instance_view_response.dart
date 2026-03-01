// ignore_for_file: unused_element, unnecessary_cast

import 'instance_view_status_response.dart';

/// The instance view of a virtual machine extension handler.
class VirtualMachineExtensionHandlerInstanceViewResponse {
  /// The extension handler status.
  final InstanceViewStatusResponse? status;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final String? type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [VirtualMachineExtensionHandlerInstanceViewResponse].
  /// [status] The extension handler status.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  VirtualMachineExtensionHandlerInstanceViewResponse({
    this.status,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status == null ? null : status!.toMap(),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineExtensionHandlerInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionHandlerInstanceViewResponse(
      status: map['status'] == null ? null : InstanceViewStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

