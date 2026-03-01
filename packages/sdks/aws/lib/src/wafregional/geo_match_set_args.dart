// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_match_set_geo_match_constraint.dart';

/// {@template pulumi_wafregional_geo_match_set_geo_match_set_args_doc}
/// The set of arguments for GeoMatchSet.
/// {@endtemplate}
/// {@macro pulumi_wafregional_geo_match_set_geo_match_set_args_doc}
class GeoMatchSetArgs {
  /// The Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  final pulumi.Input<List<GeoMatchSetGeoMatchConstraint>>? geoMatchConstraints;
  /// The name or description of the Geo Match Set.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GeoMatchSetArgs].
  /// [geoMatchConstraints] The Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  /// [name] The name or description of the Geo Match Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GeoMatchSetArgs({
    pulumi.Output<List<GeoMatchSetGeoMatchConstraint>>? geoMatchConstraints,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      geoMatchConstraints = pulumi.Input.asOptionalInput<List<GeoMatchSetGeoMatchConstraint>>(geoMatchConstraints),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoMatchConstraints': ?pulumi.Input.mapOptionalInputValue<List<GeoMatchSetGeoMatchConstraint>, List<Map<String, dynamic>>>(geoMatchConstraints, (value) => pulumi.Input.encodeList<GeoMatchSetGeoMatchConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory GeoMatchSetArgs.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetArgs(
      geoMatchConstraints: map['geoMatchConstraints'] == null ? null : pulumi.Output.create<List<GeoMatchSetGeoMatchConstraint>>(pulumi.Input.decodeList<GeoMatchSetGeoMatchConstraint>(map['geoMatchConstraints'], (value) => GeoMatchSetGeoMatchConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

