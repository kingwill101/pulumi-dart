// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantCustomizationGeoRestriction {
  final List<String> locations;
  final String restrictionType;

  GetDistributionTenantCustomizationGeoRestriction({
    required this.locations,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    map['restrictionType'] = restrictionType;
    return map;
  }

  factory GetDistributionTenantCustomizationGeoRestriction.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionTenantCustomizationGeoRestriction(
      locations: (map['locations'] as List).cast<String>(),
      restrictionType: map['restrictionType'] as String,
    );
  }
}
