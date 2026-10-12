import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_routes_exclusive_args.dart';
import 'ip_routes_exclusive_ip_route.dart';
import 'ip_routes_exclusive_state.dart';
import 'ip_routes_exclusive_timeouts.dart';

/// Manages an exclusive set of IP routes for an AWS Directory Service directory. IP routes are used to route traffic from an AWS Managed Microsoft AD or AD Connector directory to an IPv4 or IPv6 CIDR block, such as an on-premises network reachable over a VPN or AWS Direct Connect connection, or a peered VPC.
///
/// &gt; This resource takes exclusive ownership over the IP routes of a directory. This includes removal of IP routes which are not explicitly configured. To prevent persistent drift, ensure any `aws.directoryservice.IpRoute` resources managed alongside this resource have an equivalent `ipRoute` block.
///
/// &gt; Destruction of this resource means Terraform will no longer manage reconciliation of the configured IP routes. It __will not__ remove the configured IP routes from the directory.
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
/// const exampleIpRoutesExclusive = new aws.directoryservice.IpRoutesExclusive("example", {
///     ipRoutes: [
///         {
///             cidrIp: "10.0.0.0/24",
///             description: "On-premises network",
///         },
///         {
///             cidrIp: "192.168.100.0/24",
///             description: "Peered VPC",
///         },
///     ],
///     directoryId: example.id,
///     updateSecurityGroupForDirectoryControllers: true,
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
/// example_ip_routes_exclusive = aws.directoryservice.IpRoutesExclusive("example",
///     ip_routes=[
///         {
///             "cidr_ip": "10.0.0.0/24",
///             "description": "On-premises network",
///         },
///         {
///             "cidr_ip": "192.168.100.0/24",
///             "description": "Peered VPC",
///         },
///     ],
///     directory_id=example.id,
///     update_security_group_for_directory_controllers=True)
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
///     var exampleIpRoutesExclusive = new Aws.DirectoryService.IpRoutesExclusive("example", new()
///     {
///         IpRoutes = new[]
///         {
///             new Aws.DirectoryService.Inputs.IpRoutesExclusiveIpRouteArgs
///             {
///                 CidrIp = "10.0.0.0/24",
///                 Description = "On-premises network",
///             },
///             new Aws.DirectoryService.Inputs.IpRoutesExclusiveIpRouteArgs
///             {
///                 CidrIp = "192.168.100.0/24",
///                 Description = "Peered VPC",
///             },
///         },
///         DirectoryId = example.Id,
///         UpdateSecurityGroupForDirectoryControllers = true,
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
/// _, err = directoryservice.NewIpRoutesExclusive(ctx, "example", &directoryservice.IpRoutesExclusiveArgs{
/// IpRoutes: directoryservice.IpRoutesExclusiveIpRouteArray{
/// &directoryservice.IpRoutesExclusiveIpRouteArgs{
/// CidrIp: pulumi.String("10.0.0.0/24"),
/// Description: pulumi.String("On-premises network"),
/// },
/// &directoryservice.IpRoutesExclusiveIpRouteArgs{
/// CidrIp: pulumi.String("192.168.100.0/24"),
/// Description: pulumi.String("Peered VPC"),
/// },
/// },
/// DirectoryId: example.ID().ToIDOutput().ToStringOutput(),
/// UpdateSecurityGroupForDirectoryControllers: pulumi.Bool(true),
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
/// resource "aws_directoryservice_iproutesexclusive" "example" {
///   ip_routes {
///     cidr_ip     = "10.0.0.0/24"
///     description = "On-premises network"
///   }
///   ip_routes {
///     cidr_ip     = "192.168.100.0/24"
///     description = "Peered VPC"
///   }
///   directory_id                                    = aws_directoryservice_directory.example.id
///   update_security_group_for_directory_controllers = true
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
/// import com.pulumi.aws.directoryservice.IpRoutesExclusive;
/// import com.pulumi.aws.directoryservice.IpRoutesExclusiveArgs;
/// import com.pulumi.aws.directoryservice.inputs.IpRoutesExclusiveIpRouteArgs;
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
///         var exampleIpRoutesExclusive = new IpRoutesExclusive("exampleIpRoutesExclusive", IpRoutesExclusiveArgs.builder()
///             .ipRoutes(
///                 IpRoutesExclusiveIpRouteArgs.builder()
///                     .cidrIp("10.0.0.0/24")
///                     .description("On-premises network")
///                     .build(),
///                 IpRoutesExclusiveIpRouteArgs.builder()
///                     .cidrIp("192.168.100.0/24")
///                     .description("Peered VPC")
///                     .build())
///             .directoryId(example.id())
///             .updateSecurityGroupForDirectoryControllers(true)
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
/// const example = new aws.directoryservice.IpRoutesExclusive("example", {
///     ipRoutes: [{
///         cidrIpv6: "2001:db8::/64",
///         description: "On-premises IPv6 network",
///     }],
///     directoryId: "d-1234567890",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.IpRoutesExclusive("example",
///     ip_routes=[{
///         "cidr_ipv6": "2001:db8::/64",
///         "description": "On-premises IPv6 network",
///     }],
///     directory_id="d-1234567890")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryService.IpRoutesExclusive("example", new()
///     {
///         IpRoutes = new[]
///         {
///             new Aws.DirectoryService.Inputs.IpRoutesExclusiveIpRouteArgs
///             {
///                 CidrIpv6 = "2001:db8::/64",
///                 Description = "On-premises IPv6 network",
///             },
///         },
///         DirectoryId = "d-1234567890",
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
/// 		_, err := directoryservice.NewIpRoutesExclusive(ctx, "example", &directoryservice.IpRoutesExclusiveArgs{
/// 			IpRoutes: directoryservice.IpRoutesExclusiveIpRouteArray{
/// 				&directoryservice.IpRoutesExclusiveIpRouteArgs{
/// 					CidrIpv6:    pulumi.String("2001:db8::/64"),
/// 					Description: pulumi.String("On-premises IPv6 network"),
/// 				},
/// 			},
/// 			DirectoryId: pulumi.String("d-1234567890"),
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
/// resource "aws_directoryservice_iproutesexclusive" "example" {
///   ip_routes {
///     cidr_ipv6   = "2001:db8::/64"
///     description = "On-premises IPv6 network"
///   }
///   directory_id = "d-1234567890"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.IpRoutesExclusive;
/// import com.pulumi.aws.directoryservice.IpRoutesExclusiveArgs;
/// import com.pulumi.aws.directoryservice.inputs.IpRoutesExclusiveIpRouteArgs;
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
///         var example = new IpRoutesExclusive("example", IpRoutesExclusiveArgs.builder()
///             .ipRoutes(IpRoutesExclusiveIpRouteArgs.builder()
///                 .cidrIpv6("2001:db8::/64")
///                 .description("On-premises IPv6 network")
///                 .build())
///             .directoryId("d-1234567890")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directoryservice:IpRoutesExclusive
///     properties:
///       ipRoutes:
///         - cidrIpv6: 2001:db8::/64
///           description: On-premises IPv6 network
///       directoryId: d-1234567890
/// ```
///
///
/// ### Disallow IP Routes
///
/// To remove all IP routes from a directory, omit all `ipRoute` blocks. Any IP routes added outside of Terraform are detected on the next refresh and removed on the next apply.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservice.IpRoutesExclusive("example", {directoryId: exampleAwsDirectoryServiceDirectory.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.IpRoutesExclusive("example", directory_id=example_aws_directory_service_directory["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryService.IpRoutesExclusive("example", new()
///     {
///         DirectoryId = exampleAwsDirectoryServiceDirectory.Id,
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
/// 		_, err := directoryservice.NewIpRoutesExclusive(ctx, "example", &directoryservice.IpRoutesExclusiveArgs{
/// 			DirectoryId: pulumi.Any(exampleAwsDirectoryServiceDirectory.Id),
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
/// resource "aws_directoryservice_iproutesexclusive" "example" {
///   directory_id = exampleAwsDirectoryServiceDirectory.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.IpRoutesExclusive;
/// import com.pulumi.aws.directoryservice.IpRoutesExclusiveArgs;
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
///         var example = new IpRoutesExclusive("example", IpRoutesExclusiveArgs.builder()
///             .directoryId(exampleAwsDirectoryServiceDirectory.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directoryservice:IpRoutesExclusive
///     properties:
///       directoryId: ${exampleAwsDirectoryServiceDirectory.id}
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
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import exclusive management of IP routes using the directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/ipRoutesExclusive:IpRoutesExclusive example d-1234567890
/// ```
class IpRoutesExclusive extends pulumi.CustomResource {
  /// Identifier of the directory. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> directoryId;
  /// Set of IP routes the directory should have. Omit all `ipRoute` blocks to remove every IP route from the directory. See `ipRoute` Block below.
  late final pulumi.Output<List<IpRoutesExclusiveIpRoute>?> ipRoutes;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<IpRoutesExclusiveTimeouts?> timeouts;
  /// Whether to update the inbound and outbound rules of the security group for the directory controllers when adding IP routes. Applies only to IP routes added by this resource. Defaults to `false`.
  late final pulumi.Output<bool> updateSecurityGroupForDirectoryControllers;

  /// Creates a new [IpRoutesExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpRoutesExclusive]. {@macro pulumi_directoryservice_ip_routes_exclusive_ip_routes_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpRoutesExclusive(
    String name, {
    IpRoutesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/ipRoutesExclusive:IpRoutesExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.50.0').merge(options),
        ) {
    directoryId = registerOutput<String>('directoryId');
    ipRoutes = registerOutput<List<IpRoutesExclusiveIpRoute>?>('ipRoutes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpRoutesExclusiveIpRoute>(guardedValue, (value) => IpRoutesExclusiveIpRoute.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<IpRoutesExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpRoutesExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSecurityGroupForDirectoryControllers = registerOutput<bool>('updateSecurityGroupForDirectoryControllers');
  }

  /// Gets an existing [IpRoutesExclusive] resource's state with the given [name] and [id].
  static IpRoutesExclusive get(
    String name,
    pulumi.Input<String> id, {
    IpRoutesExclusiveState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IpRoutesExclusive._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IpRoutesExclusive._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/ipRoutesExclusive:IpRoutesExclusive',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    directoryId = registerOutput<String>('directoryId');
    ipRoutes = registerOutput<List<IpRoutesExclusiveIpRoute>?>('ipRoutes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpRoutesExclusiveIpRoute>(guardedValue, (value) => IpRoutesExclusiveIpRoute.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<IpRoutesExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpRoutesExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSecurityGroupForDirectoryControllers = registerOutput<bool>('updateSecurityGroupForDirectoryControllers');
  }

  /// Creates a typed reference to an existing [IpRoutesExclusive] resource.
  IpRoutesExclusive.reference(String urn)
    : super(
        'aws:directoryservice/ipRoutesExclusive:IpRoutesExclusive',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    directoryId = registerOutput<String>('directoryId');
    ipRoutes = registerOutput<List<IpRoutesExclusiveIpRoute>?>('ipRoutes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpRoutesExclusiveIpRoute>(guardedValue, (value) => IpRoutesExclusiveIpRoute.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<IpRoutesExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpRoutesExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateSecurityGroupForDirectoryControllers = registerOutput<bool>('updateSecurityGroupForDirectoryControllers');
  }
}
