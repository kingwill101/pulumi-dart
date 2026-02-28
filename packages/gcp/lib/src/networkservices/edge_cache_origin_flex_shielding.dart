// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheOriginFlexShielding {
  /// Whenever possible, content will be fetched from origin and cached in or
  /// near the specified origin. Best effort.
  /// You must specify exactly one FlexShieldingRegion.
  /// Each value may be one of: `AFRICA_SOUTH1`, `ME_CENTRAL1`.
  final String? flexShieldingRegions;

  /// Creates a new [EdgeCacheOriginFlexShielding].
  /// [flexShieldingRegions] Whenever possible, content will be fetched from origin and cached in or
  EdgeCacheOriginFlexShielding({
    this.flexShieldingRegions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final flexShieldingRegionsValue = flexShieldingRegions;
    if (flexShieldingRegionsValue != null) {
      map['flexShieldingRegions'] = flexShieldingRegionsValue;
    }
    return map;
  }

  factory EdgeCacheOriginFlexShielding.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginFlexShielding(
      flexShieldingRegions: map['flexShieldingRegions'] == null
          ? null
          : map['flexShieldingRegions'] as String,
    );
  }
}
