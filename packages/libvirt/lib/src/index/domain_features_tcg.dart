// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesTcg {
  /// Configures the Trusted Boot (TB) cache settings for TCG to manage trusted boot processes.
  final double? tbCache;
  /// Specifies the unit of the TB cache size set for TCG configurations.
  final String? tbCacheUnit;

  /// Creates a new [DomainFeaturesTcg].
  /// [tbCache] Configures the Trusted Boot (TB) cache settings for TCG to manage trusted boot processes.
  /// [tbCacheUnit] Specifies the unit of the TB cache size set for TCG configurations.
  DomainFeaturesTcg({
    this.tbCache,
    this.tbCacheUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tbCache': ?tbCache,
      'tbCacheUnit': ?tbCacheUnit,
    };
  }

  factory DomainFeaturesTcg.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesTcg(
      tbCache: map['tbCache'] == null ? null : map['tbCache'] as double,
      tbCacheUnit: map['tbCacheUnit'] == null ? null : map['tbCacheUnit'] as String,
    );
  }
}

