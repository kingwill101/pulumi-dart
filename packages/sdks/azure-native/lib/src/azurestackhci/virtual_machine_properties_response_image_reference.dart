// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Which Image to use for the virtual machine
class VirtualMachinePropertiesResponseImageReference {
  /// Resource ID of the image
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesResponseImageReference].
  /// [id] Resource ID of the image
  VirtualMachinePropertiesResponseImageReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesResponseImageReference.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseImageReference(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

