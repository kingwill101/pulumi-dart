import 'package:pulumi/pulumi.dart';
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
class GeoMatchSet extends CustomResource {
  /// Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  late final Output<List<GeoMatchSetGeoMatchConstraint>?> geoMatchConstraints;

  /// The name or description of the GeoMatchSet.
  late final Output<String> name;

  GeoMatchSet(
    String name, {
    GeoMatchSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/geoMatchSet:GeoMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.geoMatchConstraints =
        registerOutput<List<GeoMatchSetGeoMatchConstraint>?>(
            'geoMatchConstraints');
    this.name = registerOutput<String>('name');
  }
}
