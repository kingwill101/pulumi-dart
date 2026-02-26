// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionOriginOriginShield {
  /// Whether Origin Shield is enabled.
  final bool enabled;

  /// AWS Region for Origin Shield. Required when <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? originShieldRegion;

  MultitenantDistributionOriginOriginShield({
    required this.enabled,
    this.originShieldRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final originShieldRegionValue = originShieldRegion;
    if (originShieldRegionValue != null) {
      map['originShieldRegion'] = originShieldRegionValue;
    }
    return map;
  }

  factory MultitenantDistributionOriginOriginShield.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionOriginOriginShield(
      enabled: map['enabled'] as bool,
      originShieldRegion: map['originShieldRegion'] == null
          ? null
          : map['originShieldRegion'] as String,
    );
  }
}
