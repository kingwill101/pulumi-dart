import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_gateway_route_table_args.dart';
import 'local_gateway_route_table_state.dart';
import 'local_gateway_route_table_timeouts.dart';

/// Manages an EC2 Local Gateway Route Table. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-local-gateways.html#route-tables).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getLocalGateway({
///     id: "lgw-1234567890abcdef",
/// });
/// const exampleLocalGatewayRouteTable = new aws.ec2.LocalGatewayRouteTable("example", {
///     localGatewayId: example.then(example => example.id),
///     mode: "direct-vpc-routing",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_local_gateway(id="lgw-1234567890abcdef")
/// example_local_gateway_route_table = aws.ec2.LocalGatewayRouteTable("example",
///     local_gateway_id=example.id,
///     mode="direct-vpc-routing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetLocalGateway.Invoke(new()
///     {
///         Id = "lgw-1234567890abcdef",
///     });
///
///     var exampleLocalGatewayRouteTable = new Aws.Ec2.LocalGatewayRouteTable("example", new()
///     {
///         LocalGatewayId = example.Apply(getLocalGatewayResult => getLocalGatewayResult.Id),
///         Mode = "direct-vpc-routing",
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
/// 		example, err := ec2.GetLocalGateway(ctx, &ec2.GetLocalGatewayArgs{
/// 			Id: pulumi.StringRef("lgw-1234567890abcdef"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewLocalGatewayRouteTable(ctx, "example", &ec2.LocalGatewayRouteTableArgs{
/// 			LocalGatewayId: pulumi.String(example.Id),
/// 			Mode:           pulumi.String("direct-vpc-routing"),
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
/// data "aws_ec2_getlocalgateway" "example" {
///   id = "lgw-1234567890abcdef"
/// }
///
/// resource "aws_ec2_localgatewayroutetable" "example" {
///   local_gateway_id = data.aws_ec2_getlocalgateway.example.id
///   mode             = "direct-vpc-routing"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayArgs;
/// import com.pulumi.aws.ec2.LocalGatewayRouteTable;
/// import com.pulumi.aws.ec2.LocalGatewayRouteTableArgs;
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
///         final var example = Ec2Functions.getLocalGateway(GetLocalGatewayArgs.builder()
///             .id("lgw-1234567890abcdef")
///             .build());
///
///         var exampleLocalGatewayRouteTable = new LocalGatewayRouteTable("exampleLocalGatewayRouteTable", LocalGatewayRouteTableArgs.builder()
///             .localGatewayId(example.id())
///             .mode("direct-vpc-routing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLocalGatewayRouteTable:
///     type: aws:ec2:LocalGatewayRouteTable
///     name: example
///     properties:
///       localGatewayId: ${example.id}
///       mode: direct-vpc-routing
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getLocalGateway
///       arguments:
///         id: lgw-1234567890abcdef
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.LocalGatewayRouteTable` using the Local Gateway Route Table identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/localGatewayRouteTable:LocalGatewayRouteTable example lgw-rtb-1234567890abcdef
/// ```
class LocalGatewayRouteTable extends pulumi.CustomResource {
  /// ARN of the Local Gateway Route Table.
  late final pulumi.Output<String> arn;
  /// Identifier of the EC2 Local Gateway.
  late final pulumi.Output<String> localGatewayId;
  /// Identifier of the Local Gateway Route Table.
  late final pulumi.Output<String> localGatewayRouteTableId;
  /// Mode of the Local Gateway Route Table. Valid values: `direct-vpc-routing`, `coip`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> mode;
  /// ARN of the Outpost.
  late final pulumi.Output<String> outpostArn;
  /// AWS account identifier that owns the Local Gateway Route Table.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the Local Gateway Route Table.
  late final pulumi.Output<String> state;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<LocalGatewayRouteTableTimeouts?> timeouts;

  /// Creates a new [LocalGatewayRouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalGatewayRouteTable]. {@macro pulumi_ec2_local_gateway_route_table_local_gateway_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalGatewayRouteTable(
    String name, {
    LocalGatewayRouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTable:LocalGatewayRouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    mode = registerOutput<String>('mode');
    outpostArn = registerOutput<String>('outpostArn');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<LocalGatewayRouteTableTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocalGatewayRouteTableTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [LocalGatewayRouteTable] resource's state with the given [name] and [id].
  static LocalGatewayRouteTable get(
    String name,
    pulumi.Input<String> id, {
    LocalGatewayRouteTableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LocalGatewayRouteTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LocalGatewayRouteTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTable:LocalGatewayRouteTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    mode = registerOutput<String>('mode');
    outpostArn = registerOutput<String>('outpostArn');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<LocalGatewayRouteTableTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocalGatewayRouteTableTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [LocalGatewayRouteTable] resource.
  LocalGatewayRouteTable.reference(String urn)
    : super(
        'aws:ec2/localGatewayRouteTable:LocalGatewayRouteTable',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    mode = registerOutput<String>('mode');
    outpostArn = registerOutput<String>('outpostArn');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<LocalGatewayRouteTableTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocalGatewayRouteTableTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
