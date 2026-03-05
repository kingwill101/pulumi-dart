import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_args.dart';
import 'route_table_state.dart';

/// Provides a VPC Route Table resource.
///
/// Currently, customized route tables are available in most regions apart from China (Beijing), China (Hangzhou), and China (Shenzhen) regions.
///
/// For information about VPC Route Table and how to use it, see [What is Route Table](https://www.alibabacloud.com/help/doc-detail/87057.htm).
///
/// &gt; **NOTE:** Available since v1.0.0.
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
/// const defaultVpc = new alicloud.vpc.Network("defaultVpc", {vpcName: name});
/// const _default = new alicloud.vpc.RouteTable("default", {
///     description: "test-description",
///     vpcId: defaultVpc.id,
///     routeTableName: name,
///     associateType: "VSwitch",
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
/// default_vpc = alicloud.vpc.Network("defaultVpc", vpc_name=name)
/// default = alicloud.vpc.RouteTable("default",
///     description="test-description",
///     vpc_id=default_vpc.id,
///     route_table_name=name,
///     associate_type="VSwitch")
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
///     var defaultVpc = new AliCloud.Vpc.Network("defaultVpc", new()
///     {
///         VpcName = name,
///     });
///
///     var @default = new AliCloud.Vpc.RouteTable("default", new()
///     {
///         Description = "test-description",
///         VpcId = defaultVpc.Id,
///         RouteTableName = name,
///         AssociateType = "VSwitch",
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
/// 		defaultVpc, err := vpc.NewNetwork(ctx, "defaultVpc", &vpc.NetworkArgs{
/// 			VpcName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewRouteTable(ctx, "default", &vpc.RouteTableArgs{
/// 			Description:    pulumi.String("test-description"),
/// 			VpcId:          defaultVpc.ID(),
/// 			RouteTableName: pulumi.String(name),
/// 			AssociateType:  pulumi.String("VSwitch"),
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
///         var defaultVpc = new Network("defaultVpc", NetworkArgs.builder()
///             .vpcName(name)
///             .build());
///
///         var default_ = new RouteTable("default", RouteTableArgs.builder()
///             .description("test-description")
///             .vpcId(defaultVpc.id())
///             .routeTableName(name)
///             .associateType("VSwitch")
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
///   defaultVpc:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///   default:
///     type: alicloud:vpc:RouteTable
///     properties:
///       description: test-description
///       vpcId: ${defaultVpc.id}
///       routeTableName: ${name}
///       associateType: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Route Table can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/routeTable:RouteTable example <id>
/// ```
class RouteTable extends pulumi.CustomResource {
  /// The type of cloud resource that is bound to the routing table. Value:
  /// - `VSwitch`: switch.
  /// - `Gateway`:IPv4 Gateway.
  late final pulumi.Output<String> associateType;
  /// The creation time of the routing table
  late final pulumi.Output<String> createTime;
  /// Description of the routing table.
  late final pulumi.Output<String?> description;
  /// . Field 'name' has been deprecated from provider version 1.119.1. New field 'route_table_name' instead.
  late final pulumi.Output<String> name;
  /// Resource group ID.
  late final pulumi.Output<String> resourceGroupId;
  /// Route Table Receive Propagate Route State
  late final pulumi.Output<bool> routePropagationEnable;
  /// The name of the routing table.
  late final pulumi.Output<String> routeTableName;
  /// Routing table state
  late final pulumi.Output<String> status;
  /// The tag
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of VPC.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [RouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteTable]. {@macro pulumi_vpc_route_table_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteTable(
    String name, {
    RouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associateType = registerOutput<String>('associateType');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    routePropagationEnable = registerOutput<bool>('routePropagationEnable');
    routeTableName = registerOutput<String>('routeTableName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [RouteTable] resource's state with the given [name] and [id].
  static RouteTable get(
    String name,
    pulumi.Input<String> id, {
    RouteTableState? state,
  }) {
    return RouteTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associateType = registerOutput<String>('associateType');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    routePropagationEnable = registerOutput<bool>('routePropagationEnable');
    routeTableName = registerOutput<String>('routeTableName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }
}
