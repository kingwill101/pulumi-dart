// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDeviceResponse3 {
  /// Defines whether the instance has Display enabled.
  final bool enableDisplay;

  DisplayDeviceResponse3({
    required this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableDisplay'] = enableDisplay;
    return map;
  }

  factory DisplayDeviceResponse3.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceResponse3(
      enableDisplay: map['enableDisplay'] as bool,
    );
  }
}
