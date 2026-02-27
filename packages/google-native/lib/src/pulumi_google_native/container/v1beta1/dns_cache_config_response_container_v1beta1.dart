// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for NodeLocal DNSCache
class DnsCacheConfigResponseContainerV1beta1 {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final bool enabled;

  DnsCacheConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory DnsCacheConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DnsCacheConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
