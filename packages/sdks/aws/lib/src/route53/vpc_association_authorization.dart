import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_association_authorization_args.dart';
import 'vpc_association_authorization_state.dart';

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
///     vpcs: [{
///         vpcId: example.id,
///     }],
///     name: "example.com",
/// }, {
///     ignoreChanges: ["vpcs"],
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
///     vpcs=[{
///         "vpc_id": example.id,
///     }],
///     name="example.com",
///     opts = pulumi.ResourceOptions(ignore_changes=["vpcs"]))
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
///         Vpcs = new[]
///         {
///             new Aws.Route53.Inputs.ZoneVpcArgs
///             {
///                 VpcId = example.Id,
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
/// 			Vpcs: route53.ZoneVpcArray{
/// 				&route53.ZoneVpcArgs{
/// 					VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name: pulumi.String("example.com"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"vpcs",
/// 		}))
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
/// 			VpcId:  alternate.ID().ToIDOutput().ToStringOutput(),
/// 			ZoneId: exampleZone.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "example" {
///   cidr_block           = "10.6.0.0/16"
///   enable_dns_hostnames = true
///   enable_dns_support   = true
/// }
/// resource "aws_route53_zone" "example" {
///   lifecycle {
///     ignore_changes = [vpcs]
///   }
///   vpcs {
///     vpc_id = aws_ec2_vpc.example.id
///   }
///   name = "example.com"
/// }
/// resource "aws_ec2_vpc" "alternate" {
///   cidr_block           = "10.7.0.0/16"
///   enable_dns_hostnames = true
///   enable_dns_support   = true
/// }
/// resource "aws_route53_vpcassociationauthorization" "example" {
///   vpc_id  = aws_ec2_vpc.alternate.id
///   zone_id = aws_route53_zone.example.id
/// }
/// resource "aws_route53_zoneassociation" "example" {
///   vpc_id  = aws_route53_vpcassociationauthorization.example.vpc_id
///   zone_id = aws_route53_vpcassociationauthorization.example.zone_id
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.6.0.0/16")
///             .enableDnsHostnames(true)
///             .enableDnsSupport(true)
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .vpcs(ZoneVpcArgs.builder()
///                 .vpcId(example.id())
///                 .build())
///             .name("example.com")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("vpcs")
///                 .build());
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
///       vpcs:
///         - vpcId: ${example.id}
///       name: example.com
///     options:
///       ignoreChanges:
///         - vpcs
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
/// ### Identity Schema
///
/// #### Required
///
/// * `zoneId` (String) The ID of the private hosted zone that you want to authorize associating a VPC with.
/// * `vpcId` (String) The VPC to authorize for association with the private hosted zone.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    vpcId = registerOutput<String>('vpcId');
    vpcRegion = registerOutput<String>('vpcRegion');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [VpcAssociationAuthorization] resource's state with the given [name] and [id].
  static VpcAssociationAuthorization get(
    String name,
    pulumi.Input<String> id, {
    VpcAssociationAuthorizationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcAssociationAuthorization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcAssociationAuthorization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/vpcAssociationAuthorization:VpcAssociationAuthorization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    vpcId = registerOutput<String>('vpcId');
    vpcRegion = registerOutput<String>('vpcRegion');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [VpcAssociationAuthorization] resource.
  VpcAssociationAuthorization.reference(String urn)
    : super(
        'aws:route53/vpcAssociationAuthorization:VpcAssociationAuthorization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    vpcId = registerOutput<String>('vpcId');
    vpcRegion = registerOutput<String>('vpcRegion');
    zoneId = registerOutput<String>('zoneId');
  }
}
