// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for NodeLocal DNSCache
class DnsCacheConfigResponse {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final bool enabled;

  /// Creates a new [DnsCacheConfigResponse].
  /// [enabled] Whether NodeLocal DNSCache is enabled for this cluster.
  DnsCacheConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory DnsCacheConfigResponse.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
