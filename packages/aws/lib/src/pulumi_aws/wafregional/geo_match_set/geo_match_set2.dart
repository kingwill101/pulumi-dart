import 'package:pulumi/pulumi.dart';
import '../geo_match_set_geo_match_constraint/geo_match_set_geo_match_constraint2.dart';
import 'geo_match_set_args2.dart';

/// Provides a WAF Regional Geo Match Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Geo Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/geoMatchSet:GeoMatchSet geo_match_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class GeoMatchSet2 extends CustomResource {
  /// The Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  late final Output<List<GeoMatchSetGeoMatchConstraint2>?> geoMatchConstraints;

  /// The name or description of the Geo Match Set.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  GeoMatchSet2(
    String name, {
    GeoMatchSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/geoMatchSet:GeoMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.geoMatchConstraints =
        registerOutput<List<GeoMatchSetGeoMatchConstraint2>?>(
            'geoMatchConstraints');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
