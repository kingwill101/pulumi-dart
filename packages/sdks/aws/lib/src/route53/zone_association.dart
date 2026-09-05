import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_association_args.dart';
import 'zone_association_state.dart';

/// Manages a Route53 Hosted Zone VPC association. VPC associations can only be made on private zones. See the `aws.route53.VpcAssociationAuthorization` resource for setting up cross-account associations.
///
/// &gt; **NOTE:** Unless explicit association ordering is required (e.g., a separate cross-account association authorization), usage of this resource is not recommended. Use the `vpc` configuration blocks available within the `aws.route53.Zone` resource instead.
///
/// &gt; **NOTE:** This provider provides both this standalone Zone VPC Association resource and exclusive VPC associations defined in-line in the `aws.route53.Zone` resource via `vpc` configuration blocks. At this time, you cannot use those in-line VPC associations in conjunction with this resource and the same zone ID otherwise it will cause a perpetual difference in plan output. You can optionally use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) in the `aws.route53.Zone` resource to manage additional associations via this resource.
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
///     vpcs: [{
///         vpcId: primary.id,
///     }],
///     name: "example.com",
/// }, {
///     ignoreChanges: ["vpcs"],
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
///     vpcs=[{
///         "vpc_id": primary.id,
///     }],
///     name="example.com",
///     opts = pulumi.ResourceOptions(ignore_changes=["vpcs"]))
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
///         Vpcs = new[]
///         {
///             new Aws.Route53.Inputs.ZoneVpcArgs
///             {
///                 VpcId = primary.Id,
///             },
///         },
///         Name = "example.com",
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "vpcs",
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
/// 			Vpcs: route53.ZoneVpcArray{
/// 				&route53.ZoneVpcArgs{
/// 					VpcId: primary.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name: pulumi.String("example.com"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"vpcs",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewZoneAssociation(ctx, "secondary", &route53.ZoneAssociationArgs{
/// 			ZoneId: example.ZoneId,
/// 			VpcId:  secondary.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "primary" {
///   cidr_block           = "10.6.0.0/16"
///   enable_dns_hostnames = true
///   enable_dns_support   = true
/// }
/// resource "aws_ec2_vpc" "secondary" {
///   cidr_block           = "10.7.0.0/16"
///   enable_dns_hostnames = true
///   enable_dns_support   = true
/// }
/// resource "aws_route53_zone" "example" {
///   lifecycle {
///     ignore_changes = [vpcs]
///   }
///   vpcs {
///     vpc_id = aws_ec2_vpc.primary.id
///   }
///   name = "example.com"
/// }
/// resource "aws_route53_zoneassociation" "secondary" {
///   zone_id = aws_route53_zone.example.zone_id
///   vpc_id  = aws_ec2_vpc.secondary.id
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
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .vpcs(ZoneVpcArgs.builder()
///                 .vpcId(primary.id())
///                 .build())
///             .name("example.com")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("vpcs")
///                 .build());
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
///       vpcs:
///         - vpcId: ${primary.id}
///       name: example.com
///     options:
///       ignoreChanges:
///         - vpcs
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
/// ### Identity Schema
///
/// #### Required
///
/// * `zoneId` (String) The ID of the private hosted zone that you want to associate a VPC with.
/// * `vpcId` (String) The VPC to associate with the private hosted zone.
///
/// #### Optional
///
/// * `vpcRegion` (String) The VPC's region. Defaults to the region of the AWS provider.
/// * `accountId` (String) AWS Account where this resource is managed.
///
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    owningAccount = registerOutput<String>('owningAccount');
    vpcId = registerOutput<String>('vpcId');
    vpcRegion = registerOutput<String>('vpcRegion');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneAssociation] resource's state with the given [name] and [id].
  static ZoneAssociation get(
    String name,
    pulumi.Input<String> id, {
    ZoneAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/zoneAssociation:ZoneAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    owningAccount = registerOutput<String>('owningAccount');
    vpcId = registerOutput<String>('vpcId');
    vpcRegion = registerOutput<String>('vpcRegion');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneAssociation] resource.
  ZoneAssociation.reference(String urn)
    : super(
        'aws:route53/zoneAssociation:ZoneAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    owningAccount = registerOutput<String>('owningAccount');
    vpcId = registerOutput<String>('vpcId');
    vpcRegion = registerOutput<String>('vpcRegion');
    zoneId = registerOutput<String>('zoneId');
  }
}
