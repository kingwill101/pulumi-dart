// ignore_for_file: unused_element, unnecessary_cast

import '../multitenant_distribution_restrictions_geo_restriction/multitenant_distribution_restrictions_geo_restriction.dart';

class MultitenantDistributionRestrictions {
  /// Geographic restriction configuration. See Geo Restriction below.
  final MultitenantDistributionRestrictionsGeoRestriction geoRestriction;

  MultitenantDistributionRestrictions({
    required this.geoRestriction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['geoRestriction'] = geoRestriction.toMap();
    return map;
  }

  factory MultitenantDistributionRestrictions.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionRestrictions(
      geoRestriction: MultitenantDistributionRestrictionsGeoRestriction.fromMap(
          (map['geoRestriction'] as Map).cast<String, dynamic>()),
    );
  }
}
