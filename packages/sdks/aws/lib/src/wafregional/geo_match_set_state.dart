// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_match_set_geo_match_constraint.dart';

/// Input properties used for looking up and filtering GeoMatchSet resources.
class GeoMatchSetState {
  /// Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  final pulumi.Input<List<GeoMatchSetGeoMatchConstraint>?>? geoMatchConstraints;
  /// Name or description of the Geo Match Set.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GeoMatchSetState].
  /// [geoMatchConstraints] Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  /// [name] Name or description of the Geo Match Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GeoMatchSetState({
    this.geoMatchConstraints,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoMatchConstraints': ?pulumi.Input.mapOptionalInputValue<List<GeoMatchSetGeoMatchConstraint>, List<Map<String, dynamic>>>(geoMatchConstraints, (value) => pulumi.Input.encodeList<GeoMatchSetGeoMatchConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory GeoMatchSetState.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetState(
      geoMatchConstraints: (() { final guardedValue = map['geoMatchConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GeoMatchSetGeoMatchConstraint>(guardedValue, (value) => GeoMatchSetGeoMatchConstraint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
