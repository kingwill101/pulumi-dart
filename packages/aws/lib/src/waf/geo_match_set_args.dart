// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_match_set_geo_match_constraint.dart';

/// {@template pulumi_waf_geo_match_set_geo_match_set_args_doc}
/// The set of arguments for GeoMatchSet.
/// {@endtemplate}
/// {@macro pulumi_waf_geo_match_set_geo_match_set_args_doc}
class GeoMatchSetArgs {
  /// The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  final pulumi.Input<List<GeoMatchSetGeoMatchConstraint>>? geoMatchConstraints;
  /// The name or description of the GeoMatchSet.
  final pulumi.Input<String>? name;

  /// Creates a new [GeoMatchSetArgs].
  /// [geoMatchConstraints] The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  /// [name] The name or description of the GeoMatchSet.
  GeoMatchSetArgs({
    List<GeoMatchSetGeoMatchConstraint>? geoMatchConstraints,
    String? name,
  }) :
      geoMatchConstraints = pulumi.Input.asOptionalInput<List<GeoMatchSetGeoMatchConstraint>>(geoMatchConstraints),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoMatchConstraints': ?pulumi.Input.mapOptionalInputValue<List<GeoMatchSetGeoMatchConstraint>, List<Map<String, dynamic>>>(geoMatchConstraints, (value) => pulumi.Input.encodeList<GeoMatchSetGeoMatchConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory GeoMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetArgs(
      geoMatchConstraints: map['geoMatchConstraints'] == null ? null : pulumi.Input.decodeList<GeoMatchSetGeoMatchConstraint>(map['geoMatchConstraints'], (value) => GeoMatchSetGeoMatchConstraint.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

