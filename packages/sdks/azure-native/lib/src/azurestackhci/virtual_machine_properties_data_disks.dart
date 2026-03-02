// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesDataDisks {
  /// Resource ID of the data disk
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesDataDisks].
  /// [id] Resource ID of the data disk
  VirtualMachinePropertiesDataDisks({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesDataDisks.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesDataDisks(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

