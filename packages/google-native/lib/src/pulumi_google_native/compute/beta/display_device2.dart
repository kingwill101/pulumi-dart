// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDevice2 {
  /// Defines whether the instance has Display enabled.
  final bool? enableDisplay;

  DisplayDevice2({
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

  factory DisplayDevice2.fromMap(Map<String, dynamic> map) {
    return DisplayDevice2(
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}
