import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_table_attachment_args.dart';
import 'gateway_route_table_attachment_state.dart';

/// Provides a VPC Gateway Route Table Attachment resource.
///
/// For information about VPC Gateway Route Table Attachment and how to use it, see [What is Gateway Route Table Attachment](https://www.alibabacloud.com/help/doc-detail/174112.htm).
///
/// &gt; **NOTE:** Available since v1.194.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.vpc.Network("example", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: "terraform-example",
/// });
/// const exampleRouteTable = new alicloud.vpc.RouteTable("example", {
///     vpcId: example.id,
///     routeTableName: "terraform-example",
///     description: "terraform-example",
///     associateType: "Gateway",
/// });
/// const exampleIpv4Gateway = new alicloud.vpc.Ipv4Gateway("example", {
///     ipv4GatewayName: "terraform-example",
///     vpcId: example.id,
///     enabled: true,
/// });
/// const exampleGatewayRouteTableAttachment = new alicloud.vpc.GatewayRouteTableAttachment("example", {
///     ipv4GatewayId: exampleIpv4Gateway.id,
///     routeTableId: exampleRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.vpc.Network("example",
///     cidr_block="172.16.0.0/12",
///     vpc_name="terraform-example")
/// example_route_table = alicloud.vpc.RouteTable("example",
///     vpc_id=example.id,
///     route_table_name="terraform-example",
///     description="terraform-example",
///     associate_type="Gateway")
/// example_ipv4_gateway = alicloud.vpc.Ipv4Gateway("example",
///     ipv4_gateway_name="terraform-example",
///     vpc_id=example.id,
///     enabled=True)
/// example_gateway_route_table_attachment = alicloud.vpc.GatewayRouteTableAttachment("example",
///     ipv4_gateway_id=example_ipv4_gateway.id,
///     route_table_id=example_route_table.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = "terraform-example",
///     });
///
///     var exampleRouteTable = new AliCloud.Vpc.RouteTable("example", new()
///     {
///         VpcId = example.Id,
///         RouteTableName = "terraform-example",
///         Description = "terraform-example",
///         AssociateType = "Gateway",
///     });
///
///     var exampleIpv4Gateway = new AliCloud.Vpc.Ipv4Gateway("example", new()
///     {
///         Ipv4GatewayName = "terraform-example",
///         VpcId = example.Id,
///         Enabled = true,
///     });
///
///     var exampleGatewayRouteTableAttachment = new AliCloud.Vpc.GatewayRouteTableAttachment("example", new()
///     {
///         Ipv4GatewayId = exampleIpv4Gateway.Id,
///         RouteTableId = exampleRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRouteTable, err := vpc.NewRouteTable(ctx, "example", &vpc.RouteTableArgs{
/// 			VpcId:          example.ID(),
/// 			RouteTableName: pulumi.String("terraform-example"),
/// 			Description:    pulumi.String("terraform-example"),
/// 			AssociateType:  pulumi.String("Gateway"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIpv4Gateway, err := vpc.NewIpv4Gateway(ctx, "example", &vpc.Ipv4GatewayArgs{
/// 			Ipv4GatewayName: pulumi.String("terraform-example"),
/// 			VpcId:           example.ID(),
/// 			Enabled:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewGatewayRouteTableAttachment(ctx, "example", &vpc.GatewayRouteTableAttachmentArgs{
/// 			Ipv4GatewayId: exampleIpv4Gateway.ID(),
/// 			RouteTableId:  exampleRouteTable.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.RouteTable;
/// import com.pulumi.alicloud.vpc.RouteTableArgs;
/// import com.pulumi.alicloud.vpc.Ipv4Gateway;
/// import com.pulumi.alicloud.vpc.Ipv4GatewayArgs;
/// import com.pulumi.alicloud.vpc.GatewayRouteTableAttachment;
/// import com.pulumi.alicloud.vpc.GatewayRouteTableAttachmentArgs;
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
///         var example = new Network("example", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName("terraform-example")
///             .build());
///
///         var exampleRouteTable = new RouteTable("exampleRouteTable", RouteTableArgs.builder()
///             .vpcId(example.id())
///             .routeTableName("terraform-example")
///             .description("terraform-example")
///             .associateType("Gateway")
///             .build());
///
///         var exampleIpv4Gateway = new Ipv4Gateway("exampleIpv4Gateway", Ipv4GatewayArgs.builder()
///             .ipv4GatewayName("terraform-example")
///             .vpcId(example.id())
///             .enabled(true)
///             .build());
///
///         var exampleGatewayRouteTableAttachment = new GatewayRouteTableAttachment("exampleGatewayRouteTableAttachment", GatewayRouteTableAttachmentArgs.builder()
///             .ipv4GatewayId(exampleIpv4Gateway.id())
///             .routeTableId(exampleRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: terraform-example
///   exampleRouteTable:
///     type: alicloud:vpc:RouteTable
///     name: example
///     properties:
///       vpcId: ${example.id}
///       routeTableName: terraform-example
///       description: terraform-example
///       associateType: Gateway
///   exampleIpv4Gateway:
///     type: alicloud:vpc:Ipv4Gateway
///     name: example
///     properties:
///       ipv4GatewayName: terraform-example
///       vpcId: ${example.id}
///       enabled: 'true'
///   exampleGatewayRouteTableAttachment:
///     type: alicloud:vpc:GatewayRouteTableAttachment
///     name: example
///     properties:
///       ipv4GatewayId: ${exampleIpv4Gateway.id}
///       routeTableId: ${exampleRouteTable.id}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Gateway Route Table Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/gatewayRouteTableAttachment:GatewayRouteTableAttachment example <route_table_id>:<ipv4_gateway_id>
/// ```
class GatewayRouteTableAttachment extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to only precheck this request. Default value: `false`.
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the IPv4 Gateway instance.
  late final pulumi.Output<String> ipv4GatewayId;
  /// The ID of the Gateway route table to be bound.
  late final pulumi.Output<String> routeTableId;
  /// The status of the IPv4 Gateway instance. Value:
  /// - **Creating**: The function is being created.
  /// - **Created**: Created and available.
  /// - **Modifying**: is being modified.
  /// - **Deleting**: Deleting.
  /// - **Deleted**: Deleted.
  /// - **Activating**: enabled.
  late final pulumi.Output<String> status;

  /// Creates a new [GatewayRouteTableAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayRouteTableAttachment]. {@macro pulumi_vpc_gateway_route_table_attachment_gateway_route_table_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayRouteTableAttachment(
    String name, {
    GatewayRouteTableAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/gatewayRouteTableAttachment:GatewayRouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dryRun = registerOutput<bool?>('dryRun');
    ipv4GatewayId = registerOutput<String>('ipv4GatewayId');
    routeTableId = registerOutput<String>('routeTableId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [GatewayRouteTableAttachment] resource's state with the given [name] and [id].
  static GatewayRouteTableAttachment get(
    String name,
    pulumi.Input<String> id, {
    GatewayRouteTableAttachmentState? state,
  }) {
    return GatewayRouteTableAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayRouteTableAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/gatewayRouteTableAttachment:GatewayRouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dryRun = registerOutput<bool?>('dryRun');
    ipv4GatewayId = registerOutput<String>('ipv4GatewayId');
    routeTableId = registerOutput<String>('routeTableId');
    status = registerOutput<String>('status');
  }
}
