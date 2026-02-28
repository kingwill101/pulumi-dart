// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_restrictions_geo_restriction.dart';

class DistributionRestrictions {
  final DistributionRestrictionsGeoRestriction geoRestriction;

  /// Creates a new [DistributionRestrictions].
  /// [geoRestriction] Required.
  DistributionRestrictions({
    required this.geoRestriction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['geoRestriction'] = geoRestriction.toMap();
    return map;
  }

  factory DistributionRestrictions.fromMap(Map<String, dynamic> map) {
    return DistributionRestrictions(
      geoRestriction: DistributionRestrictionsGeoRestriction.fromMap(
          (map['geoRestriction'] as Map).cast<String, dynamic>()),
    );
  }
}
