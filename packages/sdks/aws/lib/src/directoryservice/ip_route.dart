import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_route_args.dart';
import 'ip_route_state.dart';
import 'ip_route_timeouts.dart';

/// Manages an IP route for an AWS Directory Service directory. IP routes are used to route traffic from an AWS Managed Microsoft AD or AD Connector directory to an IPv4 or IPv6 CIDR block, such as an on-premises network reachable over a VPN or AWS Direct Connect connection, or a peered VPC.
///
/// &gt; To manage the complete set of IP routes for a directory, and remove any not configured in Terraform, use `aws.directoryservice.IpRoutesExclusive` instead. Using both resources for the same directory causes persistent drift unless every `aws.directoryservice.IpRoute` has an equivalent `ipRoute` block.
///
/// &gt; Adding an IPv6 route (`cidrIpv6`) requires the directory's network type to be dual-stack (IPv4 and IPv6). Enabling IPv6 support on a directory is a one-way operation performed outside of Terraform; see [Updating directory network type](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_update-directory-type.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservice.Directory("example", {
///     vpcSettings: {
///         vpcId: exampleAwsVpc.id,
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///     },
///     name: "corp.example.com",
///     password: "SuperSecretPassw0rd",
///     type: "MicrosoftAD",
/// });
/// const exampleIpRoute = new aws.directoryservice.IpRoute("example", {
///     directoryId: example.id,
///     cidrIp: "10.0.0.0/24",
///     description: "On-premises network",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.Directory("example",
///     vpc_settings={
///         "vpc_id": example_aws_vpc["id"],
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///     },
///     name="corp.example.com",
///     password="SuperSecretPassw0rd",
///     type="MicrosoftAD")
/// example_ip_route = aws.directoryservice.IpRoute("example",
///     directory_id=example.id,
///     cidr_ip="10.0.0.0/24",
///     description="On-premises network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryService.Directory("example", new()
///     {
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = exampleAwsVpc.Id,
///             SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///         },
///         Name = "corp.example.com",
///         Password = "SuperSecretPassw0rd",
///         Type = "MicrosoftAD",
///     });
///
///     var exampleIpRoute = new Aws.DirectoryService.IpRoute("example", new()
///     {
///         DirectoryId = example.Id,
///         CidrIp = "10.0.0.0/24",
///         Description = "On-premises network",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := directoryservice.NewDirectory(ctx, "example", &directoryservice.DirectoryArgs{
/// VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,17-39)),
/// },
/// Name: pulumi.String("corp.example.com"),
/// Password: pulumi.String("SuperSecretPassw0rd"),
/// Type: pulumi.String("MicrosoftAD"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = directoryservice.NewIpRoute(ctx, "example", &directoryservice.IpRouteArgs{
/// DirectoryId: example.ID().ToIDOutput().ToStringOutput(),
/// CidrIp: pulumi.String("10.0.0.0/24"),
/// Description: pulumi.String("On-premises network"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// resource "aws_directoryservice_directory" "example" {
///   vpc_settings = {
///     vpc_id     = exampleAwsVpc.id
///     subnet_ids = exampleAwsSubnet[*].id
///   }
///   name     = "corp.example.com"
///   password = "SuperSecretPassw0rd"
///   type     = "MicrosoftAD"
/// }
/// resource "aws_directoryservice_iproute" "example" {
///   directory_id = aws_directoryservice_directory.example.id
///   cidr_ip      = "10.0.0.0/24"
///   description  = "On-premises network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.DirectoryVpcSettingsArgs;
/// import com.pulumi.aws.directoryservice.IpRoute;
/// import com.pulumi.aws.directoryservice.IpRouteArgs;
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
///         var example = new Directory("example", DirectoryArgs.builder()
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(exampleAwsVpc.id())
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .build())
///             .name("corp.example.com")
///             .password("SuperSecretPassw0rd")
///             .type("MicrosoftAD")
///             .build());
///
///         var exampleIpRoute = new IpRoute("exampleIpRoute", IpRouteArgs.builder()
///             .directoryId(example.id())
///             .cidrIp("10.0.0.0/24")
///             .description("On-premises network")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### IPv6
///
/// IPv6 routes require an existing directory that has been updated to dual-stack.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservice.IpRoute("example", {
///     directoryId: "d-1234567890",
///     cidrIpv6: "2001:db8::/64",
///     description: "On-premises IPv6 network",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.IpRoute("example",
///     directory_id="d-1234567890",
///     cidr_ipv6="2001:db8::/64",
///     description="On-premises IPv6 network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryService.IpRoute("example", new()
///     {
///         DirectoryId = "d-1234567890",
///         CidrIpv6 = "2001:db8::/64",
///         Description = "On-premises IPv6 network",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directoryservice.NewIpRoute(ctx, "example", &directoryservice.IpRouteArgs{
/// 			DirectoryId: pulumi.String("d-1234567890"),
/// 			CidrIpv6:    pulumi.String("2001:db8::/64"),
/// 			Description: pulumi.String("On-premises IPv6 network"),
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
/// resource "aws_directoryservice_iproute" "example" {
///   directory_id = "d-1234567890"
///   cidr_ipv6    = "2001:db8::/64"
///   description  = "On-premises IPv6 network"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.IpRoute;
/// import com.pulumi.aws.directoryservice.IpRouteArgs;
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
///         var example = new IpRoute("example", IpRouteArgs.builder()
///             .directoryId("d-1234567890")
///             .cidrIpv6("2001:db8::/64")
///             .description("On-premises IPv6 network")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directoryservice:IpRoute
///     properties:
///       directoryId: d-1234567890
///       cidrIpv6: 2001:db8::/64
///       description: On-premises IPv6 network
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `directoryId` (String) Identifier of the directory.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `cidrIp` (String) IPv4 CIDR block. Exactly one of `cidrIp` or `cidrIpv6` must be set.
/// * `cidrIpv6` (String) IPv6 CIDR block. Exactly one of `cidrIp` or `cidrIpv6` must be set.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an IP route using the directory ID and CIDR block separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/ipRoute:IpRoute example d-1234567890,10.0.0.0/24
/// ```
class IpRoute extends pulumi.CustomResource {
  /// IPv4 CIDR block, such as `10.0.0.0/24`. For a single address, use a `/32` block, such as `10.0.0.0/32`. Exactly one of `cidrIp` or `cidrIpv6` must be set. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> cidrIp;
  /// IPv6 CIDR block, such as `2001:db8::/64`. For a single address, use a `/128` block. Exactly one of `cidrIp` or `cidrIpv6` must be set. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> cidrIpv6;
  /// Description of the address block. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> description;
  /// Identifier of the directory to which to add the IP route. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> directoryId;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<IpRouteTimeouts?> timeouts;
  /// Whether to update the inbound and outbound rules of the security group for the directory controllers. Changing this forces a new resource to be created. Defaults to `false`.
  late final pulumi.Output<bool> updateSecurityGroupForDirectoryControllers;

  /// Creates a new [IpRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpRoute]. {@macro pulumi_directoryservice_ip_route_ip_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpRoute(
    String name, {
    IpRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/ipRoute:IpRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.50.0').merge(options),
        ) {
    cidrIp = registerOutput<String?>('cidrIp');
    cidrIpv6 = registerOutput<String?>('cidrIpv6');
    description = registerOutput<String?>('description');
    directoryId = registerOutput<String>('directoryId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<IpRouteTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpRouteTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSecurityGroupForDirectoryControllers = registerOutput<bool>('updateSecurityGroupForDirectoryControllers');
  }

  /// Gets an existing [IpRoute] resource's state with the given [name] and [id].
  static IpRoute get(
    String name,
    pulumi.Input<String> id, {
    IpRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IpRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IpRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/ipRoute:IpRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidrIp = registerOutput<String?>('cidrIp');
    cidrIpv6 = registerOutput<String?>('cidrIpv6');
    description = registerOutput<String?>('description');
    directoryId = registerOutput<String>('directoryId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<IpRouteTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpRouteTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSecurityGroupForDirectoryControllers = registerOutput<bool>('updateSecurityGroupForDirectoryControllers');
  }

  /// Creates a typed reference to an existing [IpRoute] resource.
  IpRoute.reference(String urn)
    : super(
        'aws:directoryservice/ipRoute:IpRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cidrIp = registerOutput<String?>('cidrIp');
    cidrIpv6 = registerOutput<String?>('cidrIpv6');
    description = registerOutput<String?>('description');
    directoryId = registerOutput<String>('directoryId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<IpRouteTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpRouteTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSecurityGroupForDirectoryControllers = registerOutput<bool>('updateSecurityGroupForDirectoryControllers');
  }
}
