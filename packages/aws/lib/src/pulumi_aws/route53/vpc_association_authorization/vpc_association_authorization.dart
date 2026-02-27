import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_association_authorization_args.dart';

/// Authorizes a VPC in a different account to be associated with a local Route53 Hosted Zone.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 VPC Association Authorizations using the Hosted Zone ID and VPC ID, separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:route53/vpcAssociationAuthorization:VpcAssociationAuthorization example Z123456ABCDEFG:vpc-12345678
/// ```
class VpcAssociationAuthorization extends pulumi.CustomResource {
  /// The VPC to authorize for association with the private hosted zone.
  late final pulumi.Output<String> vpcId;

  /// The VPC's region. Defaults to the region of the AWS provider.
  late final pulumi.Output<String> vpcRegion;

  /// The ID of the private hosted zone that you want to authorize associating a VPC with.
  late final pulumi.Output<String> zoneId;

  VpcAssociationAuthorization(
    String name, {
    VpcAssociationAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/vpcAssociationAuthorization:VpcAssociationAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcRegion = registerOutput<String>('vpcRegion');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
