// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantCustomizationGeoRestriction {
  final List<String> locations;
  final String restrictionType;

  /// Creates a new [GetDistributionTenantCustomizationGeoRestriction].
  /// [locations] Required.
  /// [restrictionType] Required.
  GetDistributionTenantCustomizationGeoRestriction({
    required this.locations,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
      'restrictionType': restrictionType,
    };
  }

  factory GetDistributionTenantCustomizationGeoRestriction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributionTenantCustomizationGeoRestriction(
      locations: (map['locations'] as List).cast<String>(),
      restrictionType: map['restrictionType'] as String,
    );
  }
}
