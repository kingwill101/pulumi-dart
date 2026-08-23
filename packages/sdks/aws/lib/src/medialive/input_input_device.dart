// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InputInputDevice {
  /// The unique ID for the device.
  final pulumi.Input<String> id;

  /// Creates a new [InputInputDevice].
  /// [id] The unique ID for the device.
  const InputInputDevice({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory InputInputDevice.fromMap(Map<String, dynamic> map) {
    return InputInputDevice(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
