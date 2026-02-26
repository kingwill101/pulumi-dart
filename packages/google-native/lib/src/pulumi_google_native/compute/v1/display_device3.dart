// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDevice3 {
  /// Defines whether the instance has Display enabled.
  final bool? enableDisplay;

  DisplayDevice3({
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

  factory DisplayDevice3.fromMap(Map<String, dynamic> map) {
    return DisplayDevice3(
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}
