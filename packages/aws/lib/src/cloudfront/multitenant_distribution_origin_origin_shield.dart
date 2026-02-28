// ignore_for_file: unused_element, unnecessary_cast


class MultitenantDistributionOriginOriginShield {
  /// Whether Origin Shield is enabled.
  final bool enabled;
  /// AWS Region for Origin Shield. Required when `enabled` is `true`.
  final String? originShieldRegion;

  /// Creates a new [MultitenantDistributionOriginOriginShield].
  /// [enabled] Whether Origin Shield is enabled.
  /// [originShieldRegion] AWS Region for Origin Shield. Required when `enabled` is `true`.
  MultitenantDistributionOriginOriginShield({
    required this.enabled,
    this.originShieldRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'originShieldRegion': ?originShieldRegion,
    };
  }

  factory MultitenantDistributionOriginOriginShield.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginOriginShield(
      enabled: map['enabled'] as bool,
      originShieldRegion: map['originShieldRegion'] == null ? null : map['originShieldRegion'] as String,
    );
  }
}

