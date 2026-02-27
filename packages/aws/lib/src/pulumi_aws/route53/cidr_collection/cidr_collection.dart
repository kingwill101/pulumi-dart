import 'package:pulumi/pulumi.dart';
import 'cidr_collection_args.dart';

/// Provides a Route53 CIDR collection resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CIDR collections using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/cidrCollection:CidrCollection example 9ac32814-3e67-0932-6048-8d779cc6f511
/// ```
class CidrCollection extends CustomResource {
  /// The Amazon Resource Name (ARN) of the CIDR collection.
  late final Output<String> arn;

  /// Unique name for the CIDR collection.
  late final Output<String> name;

  /// The lastest version of the CIDR collection.
  late final Output<int> version;

  CidrCollection(
    String name, {
    CidrCollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/cidrCollection:CidrCollection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.version = registerOutput<int>('version');
  }
}
