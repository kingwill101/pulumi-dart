// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Machine image for Windows AML Compute
class VirtualMachineImageResponse {
  /// Virtual Machine image path
  final pulumi.Input<String> id;

  /// Creates a new [VirtualMachineImageResponse].
  /// [id] Virtual Machine image path
  const VirtualMachineImageResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory VirtualMachineImageResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineImageResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

