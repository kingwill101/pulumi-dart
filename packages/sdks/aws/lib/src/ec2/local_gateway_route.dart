import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_gateway_route_args.dart';
import 'local_gateway_route_state.dart';

/// Manages an EC2 Local Gateway Route. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.LocalGatewayRoute("example", {
///     destinationCidrBlock: "172.16.0.0/16",
///     localGatewayRouteTableId: exampleAwsEc2LocalGatewayRouteTable.id,
///     localGatewayVirtualInterfaceGroupId: exampleAwsEc2LocalGatewayVirtualInterfaceGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.LocalGatewayRoute("example",
///     destination_cidr_block="172.16.0.0/16",
///     local_gateway_route_table_id=example_aws_ec2_local_gateway_route_table["id"],
///     local_gateway_virtual_interface_group_id=example_aws_ec2_local_gateway_virtual_interface_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.LocalGatewayRoute("example", new()
///     {
///         DestinationCidrBlock = "172.16.0.0/16",
///         LocalGatewayRouteTableId = exampleAwsEc2LocalGatewayRouteTable.Id,
///         LocalGatewayVirtualInterfaceGroupId = exampleAwsEc2LocalGatewayVirtualInterfaceGroup.Id,
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
/// 		_, err := ec2.NewLocalGatewayRoute(ctx, "example", &ec2.LocalGatewayRouteArgs{
/// 			DestinationCidrBlock:                pulumi.String("172.16.0.0/16"),
/// 			LocalGatewayRouteTableId:            pulumi.Any(exampleAwsEc2LocalGatewayRouteTable.Id),
/// 			LocalGatewayVirtualInterfaceGroupId: pulumi.Any(exampleAwsEc2LocalGatewayVirtualInterfaceGroup.Id),
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
/// import com.pulumi.aws.ec2.LocalGatewayRoute;
/// import com.pulumi.aws.ec2.LocalGatewayRouteArgs;
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
///         var example = new LocalGatewayRoute("example", LocalGatewayRouteArgs.builder()
///             .destinationCidrBlock("172.16.0.0/16")
///             .localGatewayRouteTableId(exampleAwsEc2LocalGatewayRouteTable.id())
///             .localGatewayVirtualInterfaceGroupId(exampleAwsEc2LocalGatewayVirtualInterfaceGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:LocalGatewayRoute
///     properties:
///       destinationCidrBlock: 172.16.0.0/16
///       localGatewayRouteTableId: ${exampleAwsEc2LocalGatewayRouteTable.id}
///       localGatewayVirtualInterfaceGroupId: ${exampleAwsEc2LocalGatewayVirtualInterfaceGroup.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.LocalGatewayRoute` using the EC2 Local Gateway Route Table identifier and destination CIDR block separated by underscores (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2/localGatewayRoute:LocalGatewayRoute example lgw-rtb-12345678_172.16.0.0/16
/// ```
class LocalGatewayRoute extends pulumi.CustomResource {
  /// IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.
  late final pulumi.Output<String> destinationCidrBlock;
  /// Identifier of EC2 Local Gateway Route Table.
  late final pulumi.Output<String> localGatewayRouteTableId;
  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  late final pulumi.Output<String> localGatewayVirtualInterfaceGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LocalGatewayRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalGatewayRoute]. {@macro pulumi_ec2_local_gateway_route_local_gateway_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalGatewayRoute(
    String name, {
    LocalGatewayRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRoute:LocalGatewayRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    localGatewayVirtualInterfaceGroupId = registerOutput<String>('localGatewayVirtualInterfaceGroupId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [LocalGatewayRoute] resource's state with the given [name] and [id].
  static LocalGatewayRoute get(
    String name,
    pulumi.Input<String> id, {
    LocalGatewayRouteState? state,
  }) {
    return LocalGatewayRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocalGatewayRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRoute:LocalGatewayRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    localGatewayVirtualInterfaceGroupId = registerOutput<String>('localGatewayVirtualInterfaceGroupId');
    region = registerOutput<String>('region');
  }
}
