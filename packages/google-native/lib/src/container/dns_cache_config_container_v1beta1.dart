// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for NodeLocal DNSCache
class DnsCacheConfigContainerV1beta1 {
  /// Whether NodeLocal DNSCache is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [DnsCacheConfigContainerV1beta1].
  /// [enabled] Whether NodeLocal DNSCache is enabled for this cluster.
  DnsCacheConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DnsCacheConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DnsCacheConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

