// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for NodeLocal DNSCache
class DnsCacheConfig2 {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final bool? enabled;

  DnsCacheConfig2({
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

  factory DnsCacheConfig2.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
