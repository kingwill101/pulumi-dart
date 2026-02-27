// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDeviceResponseComputeV1 {
  /// Defines whether the instance has Display enabled.
  final bool enableDisplay;

  DisplayDeviceResponseComputeV1({
    required this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableDisplay'] = enableDisplay;
    return map;
  }

  factory DisplayDeviceResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceResponseComputeV1(
      enableDisplay: map['enableDisplay'] as bool,
    );
  }
}
