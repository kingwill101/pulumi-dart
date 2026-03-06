// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Machine image for Windows AML Compute
class VirtualMachineImage {
  /// Virtual Machine image path
  final pulumi.Input<String> id;

  /// Creates a new [VirtualMachineImage].
  /// [id] Virtual Machine image path
  const VirtualMachineImage({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory VirtualMachineImage.fromMap(Map<String, dynamic> map) {
    return VirtualMachineImage(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

