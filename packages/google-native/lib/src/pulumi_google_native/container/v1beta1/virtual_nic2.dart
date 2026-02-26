// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of gVNIC feature.
class VirtualNIC2 {
  /// Whether gVNIC features are enabled in the node pool.
  final bool? enabled;

  VirtualNIC2({
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

  factory VirtualNIC2.fromMap(Map<String, dynamic> map) {
    return VirtualNIC2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
