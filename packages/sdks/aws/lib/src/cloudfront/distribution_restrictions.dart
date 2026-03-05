// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_restrictions_geo_restriction.dart';

class DistributionRestrictions {
  final pulumi.Input<DistributionRestrictionsGeoRestriction> geoRestriction;

  /// Creates a new [DistributionRestrictions].
  /// [geoRestriction] Required.
  DistributionRestrictions({
    required this.geoRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoRestriction': pulumi.Input.mapInputValue<DistributionRestrictionsGeoRestriction, Map<String, dynamic>>(geoRestriction, (value) => value.toMap()),
    };
  }

  factory DistributionRestrictions.fromMap(Map<String, dynamic> map) {
    return DistributionRestrictions(
      geoRestriction: pulumi.Input.fromValue(DistributionRestrictionsGeoRestriction.fromMap((map['geoRestriction']! as Map).cast<String, dynamic>())),
    );
  }
}

