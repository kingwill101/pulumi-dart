// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of gVNIC feature.
class VirtualNICResponse2 {
  /// Whether gVNIC features are enabled in the node pool.
  final bool enabled;

  VirtualNICResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VirtualNICResponse2.fromMap(Map<String, dynamic> map) {
    return VirtualNICResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
