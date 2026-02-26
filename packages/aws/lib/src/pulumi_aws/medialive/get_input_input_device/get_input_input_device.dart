// ignore_for_file: unused_element, unnecessary_cast

class GetInputInputDevice {
  /// The ID of the Input.
  final String id;

  GetInputInputDevice({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetInputInputDevice.fromMap(Map<String, dynamic> map) {
    return GetInputInputDevice(
      id: map['id'] as String,
    );
  }
}
