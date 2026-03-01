import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_association_authorization_args.dart';

/// Authorizes a VPC in a different account to be associated with a local Route53 Hosted Zone.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {
///     cidrBlock: "10.6.0.0/16",
///     enableDnsHostnames: true,
///     enableDnsSupport: true,
/// });
/// const exampleZone = new aws.route53.Zone("example", {
///     name: "example.com",
///     vpcs: [{
///         vpcId: example.id,
///     }],
/// });
/// const alternate = new aws.ec2.Vpc("alternate", {
///     cidrBlock: "10.7.0.0/16",
///     enableDnsHostnames: true,
///     enableDnsSupport: true,
/// });
/// const exampleVpcAssociationAuthorization = new aws.route53.VpcAssociationAuthorization("example", {
///     vpcId: alternate.id,
///     zoneId: exampleZone.id,
/// });
/// const exampleZoneAssociation = new aws.route53.ZoneAssociation("example", {
///     vpcId: exampleVpcAssociationAuthorization.vpcId,
///     zoneId: exampleVpcAssociationAuthorization.zoneId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
///     cidr_block="10.6.0.0/16",
///     enable_dns_hostnames=True,
///     enable_dns_support=True)
/// example_zone = aws.route53.Zone("example",
///     name="example.com",
///     vpcs=[{
///         "vpc_id": example.id,
///     }])
/// alternate = aws.ec2.Vpc("alternate",
///     cidr_block="10.7.0.0/16",
///     enable_dns_hostnames=True,
///     enable_dns_support=True)
/// example_vpc_association_authorization = aws.route53.VpcAssociationAuthorization("example",
///     vpc_id=alternate.id,
///     zone_id=example_zone.id)
/// example_zone_association = aws.route53.ZoneAssociation("example",
///     vpc_id=example_vpc_association_authorization.vpc_id,
///     zone_id=example_vpc_association_authorization.zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.6.0.0/16",
///         EnableDnsHostnames = true,
///         EnableDnsSupport = true,
///     });
///
///     var exampleZone = new Aws.Route53.Zone("example", new()
///     {
///         Name = "example.com",
///         Vpcs = new[]
///         {
///             new Aws.Route53.Inputs.ZoneVpcArgs
///             {
///                 VpcId = example.Id,
///             },
///         },
///     });
///
///     var alternate = new Aws.Ec2.Vpc("alternate", new()
///     {
///         CidrBlock = "10.7.0.0/16",
///         EnableDnsHostnames = true,
///         EnableDnsSupport = true,
///     });
///
///     var exampleVpcAssociationAuthorization = new Aws.Route53.VpcAssociationAuthorization("example", new()
///     {
///         VpcId = alternate.Id,
///         ZoneId = exampleZone.Id,
///     });
///
///     var exampleZoneAssociation = new Aws.Route53.ZoneAssociation("example", new()
///     {
///         VpcId = exampleVpcAssociationAuthorization.VpcId,
///         ZoneId = exampleVpcAssociationAuthorization.ZoneId,
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
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.6.0.0/16"),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := route53.NewZone(ctx, "example", &route53.ZoneArgs{
/// 			Name: pulumi.String("example.com"),
/// 			Vpcs: route53.ZoneVpcArray{
/// 				&route53.ZoneVpcArgs{
/// 					VpcId: example.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		alternate, err := ec2.NewVpc(ctx, "alternate", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.7.0.0/16"),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpcAssociationAuthorization, err := route53.NewVpcAssociationAuthorization(ctx, "example", &route53.VpcAssociationAuthorizationArgs{
/// 			VpcId:  alternate.ID(),
/// 			ZoneId: exampleZone.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewZoneAssociation(ctx, "example", &route53.ZoneAssociationArgs{
/// 			VpcId:  exampleVpcAssociationAuthorization.VpcId,
/// 			ZoneId: exampleVpcAssociationAuthorization.ZoneId,
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
/// import com.pulumi.aws.route53.VpcAssociationAuthorization;
/// import com.pulumi.aws.route53.VpcAssociationAuthorizationArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.6.0.0/16")
///             .enableDnsHostnames(true)
///             .enableDnsSupport(true)
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.com")
///             .vpcs(ZoneVpcArgs.builder()
///                 .vpcId(example.id())
///                 .build())
///             .build());
///
///         var alternate = new Vpc("alternate", VpcArgs.builder()
///             .cidrBlock("10.7.0.0/16")
///             .enableDnsHostnames(true)
///             .enableDnsSupport(true)
///             .build());
///
///         var exampleVpcAssociationAuthorization = new VpcAssociationAuthorization("exampleVpcAssociationAuthorization", VpcAssociationAuthorizationArgs.builder()
///             .vpcId(alternate.id())
///             .zoneId(exampleZone.id())
///             .build());
///
///         var exampleZoneAssociation = new ZoneAssociation("exampleZoneAssociation", ZoneAssociationArgs.builder()
///             .vpcId(exampleVpcAssociationAuthorization.vpcId())
///             .zoneId(exampleVpcAssociationAuthorization.zoneId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.6.0.0/16
///       enableDnsHostnames: true
///       enableDnsSupport: true
///   exampleZone:
///     type: aws:route53:Zone
///     name: example
///     properties:
///       name: example.com
///       vpcs:
///         - vpcId: ${example.id}
///   alternate:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.7.0.0/16
///       enableDnsHostnames: true
///       enableDnsSupport: true
///   exampleVpcAssociationAuthorization:
///     type: aws:route53:VpcAssociationAuthorization
///     name: example
///     properties:
///       vpcId: ${alternate.id}
///       zoneId: ${exampleZone.id}
///   exampleZoneAssociation:
///     type: aws:route53:ZoneAssociation
///     name: example
///     properties:
///       vpcId: ${exampleVpcAssociationAuthorization.vpcId}
///       zoneId: ${exampleVpcAssociationAuthorization.zoneId}
/// ```
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

  /// Creates a new [VpcAssociationAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcAssociationAuthorization]. {@macro pulumi_route53_vpc_association_authorization_vpc_association_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
