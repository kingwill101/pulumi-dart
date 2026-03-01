// ignore_for_file: unused_element, unnecessary_cast

class GetInputInputDevice {
  /// The ID of the Input.
  final String id;

  /// Creates a new [GetInputInputDevice].
  /// [id] The ID of the Input.
  GetInputInputDevice({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GetInputInputDevice.fromMap(Map<String, dynamic> map) {
    return GetInputInputDevice(id: map['id'] as String);
  }
}
