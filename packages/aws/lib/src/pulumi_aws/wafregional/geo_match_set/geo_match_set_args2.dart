// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../geo_match_set_geo_match_constraint/geo_match_set_geo_match_constraint2.dart';

/// The set of arguments for GeoMatchSet.
class GeoMatchSetArgs2 {
  /// The Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  final Input<List<GeoMatchSetGeoMatchConstraint2>>? geoMatchConstraints;

  /// The name or description of the Geo Match Set.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GeoMatchSetArgs2({
    this.geoMatchConstraints,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final geoMatchConstraintsValue = geoMatchConstraints;
    if (geoMatchConstraintsValue != null) {
      map['geoMatchConstraints'] = Input.mapOptionalInputValue<
              List<GeoMatchSetGeoMatchConstraint2>, List<Map<String, dynamic>>>(
          geoMatchConstraintsValue,
          (value) => Input.encodeList<GeoMatchSetGeoMatchConstraint2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GeoMatchSetArgs2.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetArgs2(
      geoMatchConstraints:
          Input.asOptionalInput<List<GeoMatchSetGeoMatchConstraint2>>(
              map['geoMatchConstraints']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
