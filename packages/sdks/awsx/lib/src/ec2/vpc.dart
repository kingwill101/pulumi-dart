import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolved_subnet_spec.dart';
import 'vpc_args.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// The VPC component provides a VPC with configured subnets and NAT gateways.
///
/// {{% examples %}}
///
/// ## Example Usage
///
/// {{% example %}}
///
/// Basic usage:
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as awsx from "@pulumi/awsx";
///
/// const vpc = new awsx.ec2.Vpc("vpc", {});
/// export const vpcId = vpc.vpcId;
/// export const vpcPrivateSubnetIds = vpc.privateSubnetIds;
/// export const vpcPublicSubnetIds = vpc.publicSubnetIds;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_awsx as awsx
///
/// vpc = awsx.ec2.Vpc("vpc")
/// pulumi.export("vpcId", vpc.vpc_id)
/// pulumi.export("vpcPrivateSubnetIds", vpc.private_subnet_ids)
/// pulumi.export("vpcPublicSubnetIds", vpc.public_subnet_ids)
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Awsx.Ec2.Vpc("vpc");
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcId"] = vpc.VpcId,
///         ["vpcPrivateSubnetIds"] = vpc.PrivateSubnetIds,
///         ["vpcPublicSubnetIds"] = vpc.PublicSubnetIds,
///     };
/// });
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpc, err := ec2.NewVpc(ctx, "vpc", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcId", vpc.VpcId)
/// 		ctx.Export("vpcPrivateSubnetIds", vpc.PrivateSubnetIds)
/// 		ctx.Export("vpcPublicSubnetIds", vpc.PublicSubnetIds)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ec2.Vpc;
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
///         var vpc = new Vpc("vpc");
///
///         ctx.export("vpcId", vpc.vpcId());
///         ctx.export("vpcPrivateSubnetIds", vpc.privateSubnetIds());
///         ctx.export("vpcPublicSubnetIds", vpc.publicSubnetIds());
///     }
/// }
/// ```
///
/// ```yaml
/// resources:
///   vpc:
///     type: awsx:ec2:Vpc
/// outputs:
///   vpcId: ${vpc.vpcId}
///   vpcPrivateSubnetIds: ${vpc.privateSubnetIds}
///   vpcPublicSubnetIds: ${vpc.publicSubnetIds}
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Subnet Layout Strategies
///
/// If no subnet arguments are passed, then a public and private subnet will be created in each AZ with default sizing. The layout of these subnets can be customised by specifying additional arguments.
///
/// All strategies are designed to help build a uniform layout of subnets each each availability zone.
///
/// If no strategy is specified, "Legacy" will be used for backward compatibility reasons. In the next major version this will change to defaulting to "Auto".
///
/// ### Auto
///
/// The "Auto" strategy divides the VPC space evenly between the availability zones. Within each availability zone it allocates each subnet in the order they were specified. If a CIDR mask or size was not specified it will default to an even division of the availability zone range. If subnets have different sizes, spaces will be automatically added to ensure subnets don't overlap (e.g. where a previous subnet is smaller than the next).
///
/// ### AutoMerge
///
/// The "AutoMerge" strategy starts from the default auto-generated public/private layout and then merges any user-provided subnet settings into the matching subnet types. This is useful when you want the standard default layout but need to customize one or more default subnet types with tags, IPv6 assignment, or sizing overrides. Explicit `cidrBlocks` layouts are not supported with this strategy; use "Auto" or "Exact" when fully specifying subnet ranges yourself.
///
/// ### Exact
///
/// The "Exact" strategy is the same as "Auto" with the additional requirement to explicitly specify what the whole of each zone's range will be used for. Where you expect to have a gap between or after subnets, these must be passed using the subnet specification type "Unused" to show all space has been properly accounted for.
///
/// ### Explicit CIDR Blocks
///
/// If you prefer to do your CIDR block calculations yourself, you can specify a list of CIDR blocks for each subnet spec which it will be allocated for in each availability zone. If using explicit layouts, all subnet specs must be declared with explicit CIDR blocks. Each list of CIDR blocks must have the same length as the number of availability zones for the VPC.
///
/// ### Legacy
///
/// The "Legacy" works similarly to the "Auto" strategy except that within each availability zone it allocates the private subnet first, followed by the public subnets, and lastly the isolated subnets. The order of subnet specifications of the same type can be changed, but the ordering of private, public, isolated is not overridable. For more flexibility we recommend moving to the "Auto" strategy. The output property `subnetLayout` shows the configuration required if specifying the "Auto" strategy to maintain the current layout.
class Vpc extends pulumi.ComponentResource {
  /// The EIPs for any NAT Gateways for the VPC. If no NAT Gateways are specified, this will be an empty list.
  late final pulumi.Output<List<pulumi_aws_ec2.Eip>?> eips;
  /// The Internet Gateway for the VPC.
  late final pulumi.Output<pulumi_aws_ec2.InternetGateway?> internetGateway;
  late final pulumi.Output<List<String>?> isolatedSubnetIds;
  /// The VPC's isolated subnets.
  late final pulumi.Output<List<pulumi_aws_ec2.Subnet>?> isolatedSubnets;
  /// The NAT Gateways for the VPC. If no NAT Gateways are specified, this will be an empty list.
  late final pulumi.Output<List<pulumi_aws_ec2.NatGateway>?> natGateways;
  late final pulumi.Output<List<String>?> privateSubnetIds;
  /// The VPC's private subnets.
  late final pulumi.Output<List<pulumi_aws_ec2.Subnet>?> privateSubnets;
  late final pulumi.Output<List<String>?> publicSubnetIds;
  /// The VPC's public subnets.
  late final pulumi.Output<List<pulumi_aws_ec2.Subnet>?> publicSubnets;
  /// The Route Table Associations for the VPC.
  late final pulumi.Output<List<pulumi_aws_ec2.RouteTableAssociation>?> routeTableAssociations;
  /// The Route Tables for the VPC.
  late final pulumi.Output<List<pulumi_aws_ec2.RouteTable>?> routeTables;
  /// The Routes for the VPC.
  late final pulumi.Output<List<pulumi_aws_ec2.Route>?> routes;
  /// The resolved subnet specs layout deployed to each availability zone.
  late final pulumi.Output<List<ResolvedSubnetSpec>?> subnetLayout;
  /// The VPC's subnets.
  late final pulumi.Output<List<pulumi_aws_ec2.Subnet>?> subnets;
  /// The VPC.
  late final pulumi.Output<pulumi_aws_ec2.Vpc?> vpc;
  /// The VPC Endpoints that are enabled
  late final pulumi.Output<List<pulumi_aws_ec2.VpcEndpoint>?> vpcEndpoints;
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [Vpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vpc]. {@macro pulumi_ec2_vpc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vpc(
    String name, {
    VpcArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:ec2:Vpc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.9.0').merge(options),
          remote: true,
        ) {
    eips = registerOutput<List<pulumi_aws_ec2.Eip>?>('eips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.Eip>(); });
    internetGateway = registerOutput<pulumi_aws_ec2.InternetGateway?>('internetGateway');
    isolatedSubnetIds = registerOutput<List<String>?>('isolatedSubnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    isolatedSubnets = registerOutput<List<pulumi_aws_ec2.Subnet>?>('isolatedSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.Subnet>(); });
    natGateways = registerOutput<List<pulumi_aws_ec2.NatGateway>?>('natGateways', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.NatGateway>(); });
    privateSubnetIds = registerOutput<List<String>?>('privateSubnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    privateSubnets = registerOutput<List<pulumi_aws_ec2.Subnet>?>('privateSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.Subnet>(); });
    publicSubnetIds = registerOutput<List<String>?>('publicSubnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    publicSubnets = registerOutput<List<pulumi_aws_ec2.Subnet>?>('publicSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.Subnet>(); });
    routeTableAssociations = registerOutput<List<pulumi_aws_ec2.RouteTableAssociation>?>('routeTableAssociations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.RouteTableAssociation>(); });
    routeTables = registerOutput<List<pulumi_aws_ec2.RouteTable>?>('routeTables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.RouteTable>(); });
    routes = registerOutput<List<pulumi_aws_ec2.Route>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.Route>(); });
    subnetLayout = registerOutput<List<ResolvedSubnetSpec>?>('subnetLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResolvedSubnetSpec>(guardedValue, (value) => ResolvedSubnetSpec.fromMap((value as Map).cast<String, dynamic>())); });
    subnets = registerOutput<List<pulumi_aws_ec2.Subnet>?>('subnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.Subnet>(); });
    vpc = registerOutput<pulumi_aws_ec2.Vpc?>('vpc');
    vpcEndpoints = registerOutput<List<pulumi_aws_ec2.VpcEndpoint>?>('vpcEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.VpcEndpoint>(); });
    vpcId = registerOutput<String?>('vpcId');
  }
}
