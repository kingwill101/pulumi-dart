// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../geo_match_set_geo_match_constraint/geo_match_set_geo_match_constraint.dart';

/// The set of arguments for GeoMatchSet.
class GeoMatchSetArgs {
  /// The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  final Input<List<GeoMatchSetGeoMatchConstraint>>? geoMatchConstraints;

  /// The name or description of the GeoMatchSet.
  final Input<String>? name;

  GeoMatchSetArgs({
    this.geoMatchConstraints,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final geoMatchConstraintsValue = geoMatchConstraints;
    if (geoMatchConstraintsValue != null) {
      map['geoMatchConstraints'] = Input.mapOptionalInputValue<
              List<GeoMatchSetGeoMatchConstraint>, List<Map<String, dynamic>>>(
          geoMatchConstraintsValue,
          (value) => Input.encodeList<GeoMatchSetGeoMatchConstraint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GeoMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetArgs(
      geoMatchConstraints:
          Input.asOptionalInput<List<GeoMatchSetGeoMatchConstraint>>(
              map['geoMatchConstraints']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
