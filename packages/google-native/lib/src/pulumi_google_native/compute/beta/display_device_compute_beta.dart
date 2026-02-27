// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDeviceComputeBeta {
  /// Defines whether the instance has Display enabled.
  final bool? enableDisplay;

  DisplayDeviceComputeBeta({
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

  factory DisplayDeviceComputeBeta.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceComputeBeta(
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}
