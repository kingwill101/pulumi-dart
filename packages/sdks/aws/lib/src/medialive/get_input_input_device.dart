// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInputInputDevice {
  /// The ID of the Input.
  final pulumi.Input<String> id;

  /// Creates a new [GetInputInputDevice].
  /// [id] The ID of the Input.
  const GetInputInputDevice({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetInputInputDevice.fromMap(Map<String, dynamic> map) {
    return GetInputInputDevice(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

