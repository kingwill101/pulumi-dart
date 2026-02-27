// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../geo_match_set_geo_match_constraint/geo_match_set_geo_match_constraint_wafregional.dart';

/// The set of arguments for GeoMatchSet.
class GeoMatchSetWafregionalArgs {
  /// The Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  final pulumi.Input<List<GeoMatchSetGeoMatchConstraintWafregional>>?
      geoMatchConstraints;

  /// The name or description of the Geo Match Set.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GeoMatchSetWafregionalArgs({
    this.geoMatchConstraints,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final geoMatchConstraintsValue = geoMatchConstraints;
    if (geoMatchConstraintsValue != null) {
      map['geoMatchConstraints'] = pulumi.Input.mapOptionalInputValue<
              List<GeoMatchSetGeoMatchConstraintWafregional>,
              List<Map<String, dynamic>>>(
          geoMatchConstraintsValue,
          (value) => pulumi.Input.encodeList<
              GeoMatchSetGeoMatchConstraintWafregional,
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

  factory GeoMatchSetWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetWafregionalArgs(
      geoMatchConstraints: pulumi.Input.asOptionalInput<
              List<GeoMatchSetGeoMatchConstraintWafregional>>(
          map['geoMatchConstraints']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
