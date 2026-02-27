import 'package:pulumi/pulumi.dart' as pulumi;
import '../geo_match_set_geo_match_constraint/geo_match_set_geo_match_constraint_wafregional.dart';
import 'geo_match_set_wafregional_args.dart';

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
class GeoMatchSetWafregional extends pulumi.CustomResource {
  /// The Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  late final pulumi.Output<List<GeoMatchSetGeoMatchConstraintWafregional>?>
      geoMatchConstraints;

  /// The name or description of the Geo Match Set.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  GeoMatchSetWafregional(
    String name, {
    GeoMatchSetWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/geoMatchSet:GeoMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.geoMatchConstraints =
        registerOutput<List<GeoMatchSetGeoMatchConstraintWafregional>?>(
            'geoMatchConstraints');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
