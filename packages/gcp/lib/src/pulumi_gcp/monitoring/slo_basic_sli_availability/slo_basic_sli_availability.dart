// ignore_for_file: unused_element, unnecessary_cast

class SloBasicSliAvailability {
  /// Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  final bool? enabled;

  SloBasicSliAvailability({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory SloBasicSliAvailability.fromMap(Map<String, dynamic> map) {
    return SloBasicSliAvailability(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
