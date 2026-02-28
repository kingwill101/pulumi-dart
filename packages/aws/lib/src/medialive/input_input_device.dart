// ignore_for_file: unused_element, unnecessary_cast

class InputInputDevice {
  /// The unique ID for the device.
  final String id;

  /// Creates a new [InputInputDevice].
  /// [id] The unique ID for the device.
  InputInputDevice({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory InputInputDevice.fromMap(Map<String, dynamic> map) {
    return InputInputDevice(
      id: map['id'] as String,
    );
  }
}
