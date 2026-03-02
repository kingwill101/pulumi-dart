// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The instance view of a virtual machine extension handler.
class VirtualMachineExtensionHandlerInstanceViewResponse {
  /// The extension handler status.
  final pulumi.Input<InstanceViewStatusResponse>? status;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

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
      'status': ?pulumi.Input.mapOptionalInputValue<InstanceViewStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory VirtualMachineExtensionHandlerInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineExtensionHandlerInstanceViewResponse(
      status: map['status'] == null ? null : (InstanceViewStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion'] as String).input(),
    );
  }
}

