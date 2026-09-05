import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_args.dart';
import 'default_route_table_route.dart';
import 'default_route_table_state.dart';

/// Provides a resource to manage a default route table of a VPC. This resource can manage the default route table of the default or a non-default VPC.
///
/// &gt; **NOTE:** This is an advanced resource with special caveats. Please read this document in its entirety before using this resource. The `aws.ec2.DefaultRouteTable` resource behaves differently from normal resources. Terraform does not _create_ this resource but instead attempts to "adopt" it into management. **Do not** use both `aws.ec2.DefaultRouteTable` to manage a default route table **and** `aws.ec2.MainRouteTableAssociation` with the same VPC due to possible route conflicts. See aws.ec2.MainRouteTableAssociation documentation for more details.
///
/// Every VPC has a default route table that can be managed but not destroyed. When the provider first adopts a default route table, it **immediately removes all defined routes**. It then proceeds to create any routes specified in the configuration. This step is required so that only the routes specified in the configuration exist in the default route table.
///
/// For more information, see the Amazon VPC User Guide on [Route Tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html). For information about managing normal route tables in this provider, see `aws.ec2.RouteTable`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.DefaultRouteTable("example", {
///     routes: [
///         {
///             cidrBlock: "10.0.1.0/24",
///             gatewayId: exampleAwsInternetGateway.id,
///         },
///         {
///             ipv6CidrBlock: "::/0",
///             egressOnlyGatewayId: exampleAwsEgressOnlyInternetGateway.id,
///         },
///     ],
///     defaultRouteTableId: exampleAwsVpc.defaultRouteTableId,
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.DefaultRouteTable("example",
///     routes=[
///         {
///             "cidr_block": "10.0.1.0/24",
///             "gateway_id": example_aws_internet_gateway["id"],
///         },
///         {
///             "ipv6_cidr_block": "::/0",
///             "egress_only_gateway_id": example_aws_egress_only_internet_gateway["id"],
///         },
///     ],
///     default_route_table_id=example_aws_vpc["defaultRouteTableId"],
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.DefaultRouteTable("example", new()
///     {
///         Routes = new[]
///         {
///             new Aws.Ec2.Inputs.DefaultRouteTableRouteArgs
///             {
///                 CidrBlock = "10.0.1.0/24",
///                 GatewayId = exampleAwsInternetGateway.Id,
///             },
///             new Aws.Ec2.Inputs.DefaultRouteTableRouteArgs
///             {
///                 Ipv6CidrBlock = "::/0",
///                 EgressOnlyGatewayId = exampleAwsEgressOnlyInternetGateway.Id,
///             },
///         },
///         DefaultRouteTableId = exampleAwsVpc.DefaultRouteTableId,
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewDefaultRouteTable(ctx, "example", &ec2.DefaultRouteTableArgs{
/// 			Routes: ec2.DefaultRouteTableRouteArray{
/// 				&ec2.DefaultRouteTableRouteArgs{
/// 					CidrBlock: pulumi.String("10.0.1.0/24"),
/// 					GatewayId: pulumi.Any(exampleAwsInternetGateway.Id),
/// 				},
/// 				&ec2.DefaultRouteTableRouteArgs{
/// 					Ipv6CidrBlock:       pulumi.String("::/0"),
/// 					EgressOnlyGatewayId: pulumi.Any(exampleAwsEgressOnlyInternetGateway.Id),
/// 				},
/// 			},
/// 			DefaultRouteTableId: pulumi.Any(exampleAwsVpc.DefaultRouteTableId),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
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
/// resource "aws_ec2_defaultroutetable" "example" {
///   routes {
///     cidr_block = "10.0.1.0/24"
///     gateway_id = exampleAwsInternetGateway.id
///   }
///   routes {
///     ipv6_cidr_block        = "::/0"
///     egress_only_gateway_id = exampleAwsEgressOnlyInternetGateway.id
///   }
///   default_route_table_id = exampleAwsVpc.defaultRouteTableId
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.DefaultRouteTable;
/// import com.pulumi.aws.ec2.DefaultRouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultRouteTableRouteArgs;
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
///         var example = new DefaultRouteTable("example", DefaultRouteTableArgs.builder()
///             .routes(
///                 DefaultRouteTableRouteArgs.builder()
///                     .cidrBlock("10.0.1.0/24")
///                     .gatewayId(exampleAwsInternetGateway.id())
///                     .build(),
///                 DefaultRouteTableRouteArgs.builder()
///                     .ipv6CidrBlock("::/0")
///                     .egressOnlyGatewayId(exampleAwsEgressOnlyInternetGateway.id())
///                     .build())
///             .defaultRouteTableId(exampleAwsVpc.defaultRouteTableId())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:DefaultRouteTable
///     properties:
///       routes:
///         - cidrBlock: 10.0.1.0/24
///           gatewayId: ${exampleAwsInternetGateway.id}
///         - ipv6CidrBlock: ::/0
///           egressOnlyGatewayId: ${exampleAwsEgressOnlyInternetGateway.id}
///       defaultRouteTableId: ${exampleAwsVpc.defaultRouteTableId}
///       tags:
///         Name: example
/// ```
///
///
/// To subsequently remove all managed routes:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.DefaultRouteTable("example", {
///     defaultRouteTableId: exampleAwsVpc.defaultRouteTableId,
///     routes: [],
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.DefaultRouteTable("example",
///     default_route_table_id=example_aws_vpc["defaultRouteTableId"],
///     routes=[],
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.DefaultRouteTable("example", new()
///     {
///         DefaultRouteTableId = exampleAwsVpc.DefaultRouteTableId,
///         Routes = new[] {},
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewDefaultRouteTable(ctx, "example", &ec2.DefaultRouteTableArgs{
/// 			DefaultRouteTableId: pulumi.Any(exampleAwsVpc.DefaultRouteTableId),
/// 			Routes:              ec2.DefaultRouteTableRouteArray{},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
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
/// resource "aws_ec2_defaultroutetable" "example" {
///   default_route_table_id = exampleAwsVpc.defaultRouteTableId
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.DefaultRouteTable;
/// import com.pulumi.aws.ec2.DefaultRouteTableArgs;
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
///         var example = new DefaultRouteTable("example", DefaultRouteTableArgs.builder()
///             .defaultRouteTableId(exampleAwsVpc.defaultRouteTableId())
///             .routes()
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:DefaultRouteTable
///     properties:
///       defaultRouteTableId: ${exampleAwsVpc.defaultRouteTableId}
///       routes: []
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Default VPC route tables using the `vpcId`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultRouteTable:DefaultRouteTable example vpc-33cc44dd
/// ```
class DefaultRouteTable extends pulumi.CustomResource {
  /// The ARN of the route table.
  late final pulumi.Output<String> arn;
  /// ID of the default route table.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> defaultRouteTableId;
  /// ID of the AWS account that owns the route table.
  late final pulumi.Output<String> ownerId;
  /// List of virtual gateways for propagation.
  late final pulumi.Output<List<String>?> propagatingVgws;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of objects. Detailed below
  late final pulumi.Output<List<DefaultRouteTableRoute>> routes;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ID of the VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [DefaultRouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultRouteTable]. {@macro pulumi_ec2_default_route_table_default_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultRouteTable(
    String name, {
    DefaultRouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultRouteTable:DefaultRouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    ownerId = registerOutput<String>('ownerId');
    propagatingVgws = registerOutput<List<String>?>('propagatingVgws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    routes = registerOutput<List<DefaultRouteTableRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DefaultRouteTableRoute>(guardedValue, (value) => DefaultRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [DefaultRouteTable] resource's state with the given [name] and [id].
  static DefaultRouteTable get(
    String name,
    pulumi.Input<String> id, {
    DefaultRouteTableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DefaultRouteTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DefaultRouteTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultRouteTable:DefaultRouteTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    ownerId = registerOutput<String>('ownerId');
    propagatingVgws = registerOutput<List<String>?>('propagatingVgws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    routes = registerOutput<List<DefaultRouteTableRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DefaultRouteTableRoute>(guardedValue, (value) => DefaultRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [DefaultRouteTable] resource.
  DefaultRouteTable.reference(String urn)
    : super(
        'aws:ec2/defaultRouteTable:DefaultRouteTable',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    ownerId = registerOutput<String>('ownerId');
    propagatingVgws = registerOutput<List<String>?>('propagatingVgws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    routes = registerOutput<List<DefaultRouteTableRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DefaultRouteTableRoute>(guardedValue, (value) => DefaultRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }
}
