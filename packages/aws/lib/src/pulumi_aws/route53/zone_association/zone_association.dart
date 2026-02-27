import 'package:pulumi/pulumi.dart';
import 'zone_association_args.dart';

/// Manages a Route53 Hosted Zone VPC association. VPC associations can only be made on private zones. See the `aws.route53.VpcAssociationAuthorization` resource for setting up cross-account associations.
///
/// > **NOTE:** Unless explicit association ordering is required (e.g., a separate cross-account association authorization), usage of this resource is not recommended. Use the `vpc` configuration blocks available within the `aws.route53.Zone` resource instead.
///
/// > **NOTE:** This provider provides both this standalone Zone VPC Association resource and exclusive VPC associations defined in-line in the `aws.route53.Zone` resource via `vpc` configuration blocks. At this time, you cannot use those in-line VPC associations in conjunction with this resource and the same zone ID otherwise it will cause a perpetual difference in plan output. You can optionally use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) in the `aws.route53.Zone` resource to manage additional associations via this resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// The VPC is _not_ in the same region where you have configured the AWS Provider:
///
///
/// **Using `pulumi import` to import** Route 53 Hosted Zone Associations using the Hosted Zone ID and VPC ID, separated by a colon (`:`). For example:
///
/// The VPC is in the same region where you have configured the AWS Provider:
///
/// ```sh
/// $ pulumi import aws:route53/zoneAssociation:ZoneAssociation example Z123456ABCDEFG:vpc-12345678
/// ```
///
/// The VPC is _not_ in the same region where you have configured the AWS Provider:
///
/// ```sh
/// $ pulumi import aws:route53/zoneAssociation:ZoneAssociation example Z123456ABCDEFG:vpc-12345678:us-east-2
/// ```
class ZoneAssociation extends CustomResource {
  /// The account ID of the account that created the hosted zone.
  late final Output<String> owningAccount;

  /// The VPC to associate with the private hosted zone.
  late final Output<String> vpcId;

  /// The VPC's region. Defaults to the region of the AWS provider.
  late final Output<String> vpcRegion;

  /// The private hosted zone to associate.
  late final Output<String> zoneId;

  ZoneAssociation(
    String name, {
    ZoneAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/zoneAssociation:ZoneAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.owningAccount = registerOutput<String>('owningAccount');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcRegion = registerOutput<String>('vpcRegion');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
