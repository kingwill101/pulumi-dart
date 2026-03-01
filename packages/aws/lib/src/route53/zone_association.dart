import 'package:pulumi/pulumi.dart' as pulumi;
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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.ec2.Vpc("primary", {
///     cidrBlock: "10.6.0.0/16",
///     enableDnsHostnames: true,
///     enableDnsSupport: true,
/// });
/// const secondary = new aws.ec2.Vpc("secondary", {
///     cidrBlock: "10.7.0.0/16",
///     enableDnsHostnames: true,
///     enableDnsSupport: true,
/// });
/// const example = new aws.route53.Zone("example", {
///     name: "example.com",
///     vpcs: [{
///         vpcId: primary.id,
///     }],
/// });
/// const secondaryZoneAssociation = new aws.route53.ZoneAssociation("secondary", {
///     zoneId: example.zoneId,
///     vpcId: secondary.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.ec2.Vpc("primary",
///     cidr_block="10.6.0.0/16",
///     enable_dns_hostnames=True,
///     enable_dns_support=True)
/// secondary = aws.ec2.Vpc("secondary",
///     cidr_block="10.7.0.0/16",
///     enable_dns_hostnames=True,
///     enable_dns_support=True)
/// example = aws.route53.Zone("example",
///     name="example.com",
///     vpcs=[{
///         "vpc_id": primary.id,
///     }])
/// secondary_zone_association = aws.route53.ZoneAssociation("secondary",
///     zone_id=example.zone_id,
///     vpc_id=secondary.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.Ec2.Vpc("primary", new()
///     {
///         CidrBlock = "10.6.0.0/16",
///         EnableDnsHostnames = true,
///         EnableDnsSupport = true,
///     });
///
///     var secondary = new Aws.Ec2.Vpc("secondary", new()
///     {
///         CidrBlock = "10.7.0.0/16",
///         EnableDnsHostnames = true,
///         EnableDnsSupport = true,
///     });
///
///     var example = new Aws.Route53.Zone("example", new()
///     {
///         Name = "example.com",
///         Vpcs = new[]
///         {
///             new Aws.Route53.Inputs.ZoneVpcArgs
///             {
///                 VpcId = primary.Id,
///             },
///         },
///     });
///
///     var secondaryZoneAssociation = new Aws.Route53.ZoneAssociation("secondary", new()
///     {
///         ZoneId = example.ZoneId,
///         VpcId = secondary.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := ec2.NewVpc(ctx, "primary", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.6.0.0/16"),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := ec2.NewVpc(ctx, "secondary", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.7.0.0/16"),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := route53.NewZone(ctx, "example", &route53.ZoneArgs{
/// 			Name: pulumi.String("example.com"),
/// 			Vpcs: route53.ZoneVpcArray{
/// 				&route53.ZoneVpcArgs{
/// 					VpcId: primary.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewZoneAssociation(ctx, "secondary", &route53.ZoneAssociationArgs{
/// 			ZoneId: example.ZoneId,
/// 			VpcId:  secondary.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.route53.inputs.ZoneVpcArgs;
/// import com.pulumi.aws.route53.ZoneAssociation;
/// import com.pulumi.aws.route53.ZoneAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var primary = new Vpc("primary", VpcArgs.builder()
///             .cidrBlock("10.6.0.0/16")
///             .enableDnsHostnames(true)
///             .enableDnsSupport(true)
///             .build());
///
///         var secondary = new Vpc("secondary", VpcArgs.builder()
///             .cidrBlock("10.7.0.0/16")
///             .enableDnsHostnames(true)
///             .enableDnsSupport(true)
///             .build());
///
///         var example = new Zone("example", ZoneArgs.builder()
///             .name("example.com")
///             .vpcs(ZoneVpcArgs.builder()
///                 .vpcId(primary.id())
///                 .build())
///             .build());
///
///         var secondaryZoneAssociation = new ZoneAssociation("secondaryZoneAssociation", ZoneAssociationArgs.builder()
///             .zoneId(example.zoneId())
///             .vpcId(secondary.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.6.0.0/16
///       enableDnsHostnames: true
///       enableDnsSupport: true
///   secondary:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.7.0.0/16
///       enableDnsHostnames: true
///       enableDnsSupport: true
///   example:
///     type: aws:route53:Zone
///     properties:
///       name: example.com
///       vpcs:
///         - vpcId: ${primary.id}
///   secondaryZoneAssociation:
///     type: aws:route53:ZoneAssociation
///     name: secondary
///     properties:
///       zoneId: ${example.zoneId}
///       vpcId: ${secondary.id}
/// ```
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
class ZoneAssociation extends pulumi.CustomResource {
  /// The account ID of the account that created the hosted zone.
  late final pulumi.Output<String> owningAccount;

  /// The VPC to associate with the private hosted zone.
  late final pulumi.Output<String> vpcId;

  /// The VPC's region. Defaults to the region of the AWS provider.
  late final pulumi.Output<String> vpcRegion;

  /// The private hosted zone to associate.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneAssociation]. {@macro pulumi_route53_zone_association_zone_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneAssociation(
    String name, {
    ZoneAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:route53/zoneAssociation:ZoneAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.owningAccount = registerOutput<String>('owningAccount');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcRegion = registerOutput<String>('vpcRegion');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
