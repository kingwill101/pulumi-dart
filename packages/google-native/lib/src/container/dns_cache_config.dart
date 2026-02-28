// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for NodeLocal DNSCache
class DnsCacheConfig {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [DnsCacheConfig].
  /// [enabled] Whether NodeLocal DNSCache is enabled for this cluster.
  DnsCacheConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DnsCacheConfig.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

