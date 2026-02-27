import 'package:pulumi/pulumi.dart' as pulumi;
import '../geo_match_set_geo_match_constraint/geo_match_set_geo_match_constraint.dart';
import 'geo_match_set_args.dart';

/// Provides a WAF Geo Match Set Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Geo Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/geoMatchSet:GeoMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class GeoMatchSet extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN)
  late final pulumi.Output<String> arn;

  /// The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  late final pulumi.Output<List<GeoMatchSetGeoMatchConstraint>?>
      geoMatchConstraints;

  /// The name or description of the GeoMatchSet.
  late final pulumi.Output<String> name;

  GeoMatchSet(
    String name, {
    GeoMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/geoMatchSet:GeoMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.geoMatchConstraints =
        registerOutput<List<GeoMatchSetGeoMatchConstraint>?>(
            'geoMatchConstraints');
    this.name = registerOutput<String>('name');
  }
}
