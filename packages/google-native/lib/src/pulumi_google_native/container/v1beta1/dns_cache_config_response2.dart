// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for NodeLocal DNSCache
class DnsCacheConfigResponse2 {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final bool enabled;

  DnsCacheConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory DnsCacheConfigResponse2.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
