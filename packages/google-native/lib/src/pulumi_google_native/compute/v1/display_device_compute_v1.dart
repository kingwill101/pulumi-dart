// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDeviceComputeV1 {
  /// Defines whether the instance has Display enabled.
  final bool? enableDisplay;

  DisplayDeviceComputeV1({
    this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableDisplayValue = enableDisplay;
    if (enableDisplayValue != null) {
      map['enableDisplay'] = enableDisplayValue;
    }
    return map;
  }

  factory DisplayDeviceComputeV1.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceComputeV1(
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}
