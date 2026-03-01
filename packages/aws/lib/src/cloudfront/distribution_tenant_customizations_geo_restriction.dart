// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantCustomizationsGeoRestriction {
  /// Set of ISO 3166-1-alpha-2 country codes for the restriction. Required if `restriction_type` is `whitelist` or `blacklist`.
  final List<String>? locations;

  /// Method to restrict distribution by country: `none`, `whitelist`, or `blacklist`.
  final String? restrictionType;

  /// Creates a new [DistributionTenantCustomizationsGeoRestriction].
  /// [locations] Set of ISO 3166-1-alpha-2 country codes for the restriction. Required if `restriction_type` is `whitelist` or `blacklist`.
  /// [restrictionType] Method to restrict distribution by country: `none`, `whitelist`, or `blacklist`.
  DistributionTenantCustomizationsGeoRestriction({
    this.locations,
    this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'restrictionType': ?restrictionType,
    };
  }

  factory DistributionTenantCustomizationsGeoRestriction.fromMap(
    Map<String, dynamic> map,
  ) {
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
