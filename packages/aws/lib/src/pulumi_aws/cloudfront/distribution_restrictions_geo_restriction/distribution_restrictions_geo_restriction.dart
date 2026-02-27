// ignore_for_file: unused_element, unnecessary_cast

class DistributionRestrictionsGeoRestriction {
  /// [ISO 3166-1-alpha-2 codes][4] for which you want CloudFront either to distribute your content (`whitelist`) or not distribute your content (`blacklist`). If the type is specified as `none` an empty array can be used.
  final List<String>? locations;

  /// Method that you want to use to restrict distribution of your content by country: `none`, `whitelist`, or `blacklist`.
  final String restrictionType;

  DistributionRestrictionsGeoRestriction({
    this.locations,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    map['restrictionType'] = restrictionType;
    return map;
  }

  factory DistributionRestrictionsGeoRestriction.fromMap(
      Map<String, dynamic> map) {
    return DistributionRestrictionsGeoRestriction(
      locations: map['locations'] == null
          ? null
          : (map['locations'] as List).cast<String>(),
      restrictionType: map['restrictionType'] as String,
    );
  }
}
