// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_match_set_geo_match_constraint.dart';

/// Input properties used for looking up and filtering GeoMatchSet resources.
class GeoMatchSetState {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;

  /// The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  final pulumi.Input<List<GeoMatchSetGeoMatchConstraint>>? geoMatchConstraints;

  /// The name or description of the GeoMatchSet.
  final pulumi.Input<String>? name;

  /// Creates a new [GeoMatchSetState].
  /// [arn] Amazon Resource Name (ARN)
  /// [geoMatchConstraints] The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  /// [name] The name or description of the GeoMatchSet.
  GeoMatchSetState({this.arn, this.geoMatchConstraints, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'geoMatchConstraints':
          ?pulumi.Input.mapOptionalInputValue<
            List<GeoMatchSetGeoMatchConstraint>,
            List<Map<String, dynamic>>
          >(
            geoMatchConstraints,
            (value) =>
                pulumi.Input.encodeList<
                  GeoMatchSetGeoMatchConstraint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
    };
  }

  factory GeoMatchSetState.fromMap(Map<String, dynamic> map) {
    return GeoMatchSetState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      geoMatchConstraints: (() {
        final guardedValue = map['geoMatchConstraints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GeoMatchSetGeoMatchConstraint>(
            guardedValue,
            (value) => GeoMatchSetGeoMatchConstraint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
