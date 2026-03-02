// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_restrictions_geo_restriction.dart';

class MultitenantDistributionRestrictions {
  /// Geographic restriction configuration. See Geo Restriction below.
  final pulumi.Input<MultitenantDistributionRestrictionsGeoRestriction> geoRestriction;

  /// Creates a new [MultitenantDistributionRestrictions].
  /// [geoRestriction] Geographic restriction configuration. See Geo Restriction below.
  MultitenantDistributionRestrictions({
    required this.geoRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoRestriction': pulumi.Input.mapInputValue<MultitenantDistributionRestrictionsGeoRestriction, Map<String, dynamic>>(geoRestriction, (value) => value.toMap()),
    };
  }

  factory MultitenantDistributionRestrictions.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionRestrictions(
      geoRestriction: (MultitenantDistributionRestrictionsGeoRestriction.fromMap((map['geoRestriction'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

