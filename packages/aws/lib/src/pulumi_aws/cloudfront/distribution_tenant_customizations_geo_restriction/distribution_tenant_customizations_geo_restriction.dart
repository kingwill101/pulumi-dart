// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantCustomizationsGeoRestriction {
  /// Set of ISO 3166-1-alpha-2 country codes for the restriction. Required if <span pulumi-lang-nodejs="`restrictionType`" pulumi-lang-dotnet="`RestrictionType`" pulumi-lang-go="`restrictionType`" pulumi-lang-python="`restriction_type`" pulumi-lang-yaml="`restrictionType`" pulumi-lang-java="`restrictionType`">`restriction_type`</span> is <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span> or <span pulumi-lang-nodejs="`blacklist`" pulumi-lang-dotnet="`Blacklist`" pulumi-lang-go="`blacklist`" pulumi-lang-python="`blacklist`" pulumi-lang-yaml="`blacklist`" pulumi-lang-java="`blacklist`">`blacklist`</span>.
  final List<String>? locations;

  /// Method to restrict distribution by country: <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, or <span pulumi-lang-nodejs="`blacklist`" pulumi-lang-dotnet="`Blacklist`" pulumi-lang-go="`blacklist`" pulumi-lang-python="`blacklist`" pulumi-lang-yaml="`blacklist`" pulumi-lang-java="`blacklist`">`blacklist`</span>.
  final String? restrictionType;

  DistributionTenantCustomizationsGeoRestriction({
    this.locations,
    this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    final restrictionTypeValue = restrictionType;
    if (restrictionTypeValue != null) {
      map['restrictionType'] = restrictionTypeValue;
    }
    return map;
  }

  factory DistributionTenantCustomizationsGeoRestriction.fromMap(
      Map<String, dynamic> map) {
    return DistributionTenantCustomizationsGeoRestriction(
      locations: map['locations'] == null
          ? null
          : (map['locations'] as List).cast<String>(),
      restrictionType: map['restrictionType'] == null
          ? null
          : map['restrictionType'] as String,
    );
  }
}
