import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_location_args.dart';

/// Provides a Route53 CIDR location resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CIDR locations using their the CIDR collection ID and location name. For example:
///
/// ```sh
/// $ pulumi import aws:route53/cidrLocation:CidrLocation example 9ac32814-3e67-0932-6048-8d779cc6f511,office
/// ```
class CidrLocation extends pulumi.CustomResource {
  /// CIDR blocks for the location.
  late final pulumi.Output<List<String>> cidrBlocks;

  /// The ID of the CIDR collection to update.
  late final pulumi.Output<String> cidrCollectionId;

  /// Name for the CIDR location.
  late final pulumi.Output<String> name;

  CidrLocation(
    String name, {
    CidrLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/cidrLocation:CidrLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlocks = registerOutput<List<String>>('cidrBlocks');
    this.cidrCollectionId = registerOutput<String>('cidrCollectionId');
    this.name = registerOutput<String>('name');
  }
}
