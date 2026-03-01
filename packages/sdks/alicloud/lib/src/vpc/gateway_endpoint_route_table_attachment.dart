import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_endpoint_route_table_attachment_args.dart';
import 'gateway_endpoint_route_table_attachment_state.dart';

/// Provides a VPC Gateway Endpoint Route Table Attachment resource. VPC gateway node association route.
///
/// For information about VPC Gateway Endpoint Route Table Attachment and how to use it, see [What is Gateway Endpoint Route Table Attachment](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/311148).
///
/// > **NOTE:** Available since v1.208.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaulteVpc = new alicloud.vpc.Network("defaulteVpc", {description: "test"});
/// const defaultGE = new alicloud.vpc.GatewayEndpoint("defaultGE", {
///     serviceName: "com.aliyun.cn-hangzhou.oss",
///     policyDocument: `        {
///           \\"Version\\": \\"1\\",
///           \\"Statement\\": [{
///             \\"Effect\\": \\"Allow\\",
///             \\"Resource\\": [\\"*\\"],
///             \\"Action\\": [\\"*\\"],
///             \\"Principal\\": [\\"*\\"]
///           }]
///         }
/// `,
///     vpcId: defaulteVpc.id,
///     gatewayEndpointDescrption: "test-gateway-endpoint",
///     gatewayEndpointName: `${name}1`,
/// });
/// const defaultRT = new alicloud.vpc.RouteTable("defaultRT", {
///     vpcId: defaulteVpc.id,
///     routeTableName: `${name}2`,
/// });
/// const _default = new alicloud.vpc.GatewayEndpointRouteTableAttachment("default", {
///     gatewayEndpointId: defaultGE.id,
///     routeTableId: defaultRT.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// defaulte_vpc = alicloud.vpc.Network("defaulteVpc", description="test")
/// default_ge = alicloud.vpc.GatewayEndpoint("defaultGE",
///     service_name="com.aliyun.cn-hangzhou.oss",
///     policy_document="""        {
///           \"Version\": \"1\",
///           \"Statement\": [{
///             \"Effect\": \"Allow\",
///             \"Resource\": [\"*\"],
///             \"Action\": [\"*\"],
///             \"Principal\": [\"*\"]
///           }]
///         }
/// """,
///     vpc_id=defaulte_vpc.id,
///     gateway_endpoint_descrption="test-gateway-endpoint",
///     gateway_endpoint_name=f"{name}1")
/// default_rt = alicloud.vpc.RouteTable("defaultRT",
///     vpc_id=defaulte_vpc.id,
///     route_table_name=f"{name}2")
/// default = alicloud.vpc.GatewayEndpointRouteTableAttachment("default",
///     gateway_endpoint_id=default_ge.id,
///     route_table_id=default_rt.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaulteVpc = new AliCloud.Vpc.Network("defaulteVpc", new()
///     {
///         Description = "test",
///     });
///
///     var defaultGE = new AliCloud.Vpc.GatewayEndpoint("defaultGE", new()
///     {
///         ServiceName = "com.aliyun.cn-hangzhou.oss",
///         PolicyDocument = @"        {
///           \""Version\"": \""1\"",
///           \""Statement\"": [{
///             \""Effect\"": \""Allow\"",
///             \""Resource\"": [\""*\""],
///             \""Action\"": [\""*\""],
///             \""Principal\"": [\""*\""]
///           }]
///         }
/// ",
///         VpcId = defaulteVpc.Id,
///         GatewayEndpointDescrption = "test-gateway-endpoint",
///         GatewayEndpointName = $"{name}1",
///     });
///
///     var defaultRT = new AliCloud.Vpc.RouteTable("defaultRT", new()
///     {
///         VpcId = defaulteVpc.Id,
///         RouteTableName = $"{name}2",
///     });
///
///     var @default = new AliCloud.Vpc.GatewayEndpointRouteTableAttachment("default", new()
///     {
///         GatewayEndpointId = defaultGE.Id,
///         RouteTableId = defaultRT.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaulteVpc, err := vpc.NewNetwork(ctx, "defaulteVpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGE, err := vpc.NewGatewayEndpoint(ctx, "defaultGE", &vpc.GatewayEndpointArgs{
/// 			ServiceName: pulumi.String("com.aliyun.cn-hangzhou.oss"),
/// 			PolicyDocument: pulumi.String(`        {
///           \"Version\": \"1\",
///           \"Statement\": [{
///             \"Effect\": \"Allow\",
///             \"Resource\": [\"*\"],
///             \"Action\": [\"*\"],
///             \"Principal\": [\"*\"]
///           }]
///         }
/// `),
/// 			VpcId:                     defaulteVpc.ID(),
/// 			GatewayEndpointDescrption: pulumi.String("test-gateway-endpoint"),
/// 			GatewayEndpointName:       pulumi.Sprintf("%v1", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRT, err := vpc.NewRouteTable(ctx, "defaultRT", &vpc.RouteTableArgs{
/// 			VpcId:          defaulteVpc.ID(),
/// 			RouteTableName: pulumi.Sprintf("%v2", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewGatewayEndpointRouteTableAttachment(ctx, "default", &vpc.GatewayEndpointRouteTableAttachmentArgs{
/// 			GatewayEndpointId: defaultGE.ID(),
/// 			RouteTableId:      defaultRT.ID(),
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
/// import com.pulumi.alicloud.vpc.GatewayEndpoint;
/// import com.pulumi.alicloud.vpc.GatewayEndpointArgs;
/// import com.pulumi.alicloud.vpc.RouteTable;
/// import com.pulumi.alicloud.vpc.RouteTableArgs;
/// import com.pulumi.alicloud.vpc.GatewayEndpointRouteTableAttachment;
/// import com.pulumi.alicloud.vpc.GatewayEndpointRouteTableAttachmentArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var defaulteVpc = new Network("defaulteVpc", NetworkArgs.builder()
///             .description("test")
///             .build());
///
///         var defaultGE = new GatewayEndpoint("defaultGE", GatewayEndpointArgs.builder()
///             .serviceName("com.aliyun.cn-hangzhou.oss")
///             .policyDocument("""
///         {
///           \"Version\": \"1\",
///           \"Statement\": [{
///             \"Effect\": \"Allow\",
///             \"Resource\": [\"*\"],
///             \"Action\": [\"*\"],
///             \"Principal\": [\"*\"]
///           }]
///         }
///             """)
///             .vpcId(defaulteVpc.id())
///             .gatewayEndpointDescrption("test-gateway-endpoint")
///             .gatewayEndpointName(String.format("%s1", name))
///             .build());
///
///         var defaultRT = new RouteTable("defaultRT", RouteTableArgs.builder()
///             .vpcId(defaulteVpc.id())
///             .routeTableName(String.format("%s2", name))
///             .build());
///
///         var default_ = new GatewayEndpointRouteTableAttachment("default", GatewayEndpointRouteTableAttachmentArgs.builder()
///             .gatewayEndpointId(defaultGE.id())
///             .routeTableId(defaultRT.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaulteVpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: test
///   defaultGE:
///     type: alicloud:vpc:GatewayEndpoint
///     properties:
///       serviceName: com.aliyun.cn-hangzhou.oss
///       policyDocument: |2
///                 {
///                   \"Version\": \"1\",
///                   \"Statement\": [{
///                     \"Effect\": \"Allow\",
///                     \"Resource\": [\"*\"],
///                     \"Action\": [\"*\"],
///                     \"Principal\": [\"*\"]
///                   }]
///                 }
///       vpcId: ${defaulteVpc.id}
///       gatewayEndpointDescrption: test-gateway-endpoint
///       gatewayEndpointName: ${name}1
///   defaultRT:
///     type: alicloud:vpc:RouteTable
///     properties:
///       vpcId: ${defaulteVpc.id}
///       routeTableName: ${name}2
///   default:
///     type: alicloud:vpc:GatewayEndpointRouteTableAttachment
///     properties:
///       gatewayEndpointId: ${defaultGE.id}
///       routeTableId: ${defaultRT.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Gateway Endpoint Route Table Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/gatewayEndpointRouteTableAttachment:GatewayEndpointRouteTableAttachment example <gateway_endpoint_id>:<route_table_id>
/// ```
class GatewayEndpointRouteTableAttachment extends pulumi.CustomResource {
  /// The ID of the gateway endpoint instance to which you want to associate the route table.
  late final pulumi.Output<String> gatewayEndpointId;
  /// Routing table ID.
  late final pulumi.Output<String> routeTableId;
  /// Status of the gateway endpoint.
  late final pulumi.Output<String> status;

  /// Creates a new [GatewayEndpointRouteTableAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayEndpointRouteTableAttachment]. {@macro pulumi_vpc_gateway_endpoint_route_table_attachment_gateway_endpoint_route_table_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayEndpointRouteTableAttachment(
    String name, {
    GatewayEndpointRouteTableAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/gatewayEndpointRouteTableAttachment:GatewayEndpointRouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.gatewayEndpointId = registerOutput<String>('gatewayEndpointId');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [GatewayEndpointRouteTableAttachment] resource's state with the given [name] and [id].
  static GatewayEndpointRouteTableAttachment get(
    String name,
    pulumi.Input<String> id, {
    GatewayEndpointRouteTableAttachmentState? state,
  }) {
    return GatewayEndpointRouteTableAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayEndpointRouteTableAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/gatewayEndpointRouteTableAttachment:GatewayEndpointRouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.gatewayEndpointId = registerOutput<String>('gatewayEndpointId');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.status = registerOutput<String>('status');
  }
}
