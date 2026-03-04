// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Which Image to use for the virtual machine
class VirtualMachinePropertiesImageReference {
  /// Resource ID of the image
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesImageReference].
  /// [id] Resource ID of the image
  VirtualMachinePropertiesImageReference({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory VirtualMachinePropertiesImageReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePropertiesImageReference(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
