// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDevice {
  /// Defines whether the instance has Display enabled.
  final bool? enableDisplay;

  /// Creates a new [DisplayDevice].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDevice({
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

  factory DisplayDevice.fromMap(Map<String, dynamic> map) {
    return DisplayDevice(
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}
