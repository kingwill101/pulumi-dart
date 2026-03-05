import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_attachment_args.dart';
import 'route_table_attachment_state.dart';

/// Provides a VPC Route Table Attachment resource. Routing table associated resource type.
///
/// For information about VPC Route Table Attachment and how to use it, see [What is Route Table Attachment](https://www.alibabacloud.com/help/doc-detail/174112.htm).
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const foo = new alicloud.vpc.Network("foo", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const fooSwitch = new alicloud.vpc.Switch("foo", {
///     vpcId: foo.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const fooRouteTable = new alicloud.vpc.RouteTable("foo", {
///     vpcId: foo.id,
///     routeTableName: name,
///     description: "route_table_attachment",
/// });
/// const fooRouteTableAttachment = new alicloud.vpc.RouteTableAttachment("foo", {
///     vswitchId: fooSwitch.id,
///     routeTableId: fooRouteTable.id,
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
/// foo = alicloud.vpc.Network("foo",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// foo_switch = alicloud.vpc.Switch("foo",
///     vpc_id=foo.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// foo_route_table = alicloud.vpc.RouteTable("foo",
///     vpc_id=foo.id,
///     route_table_name=name,
///     description="route_table_attachment")
/// foo_route_table_attachment = alicloud.vpc.RouteTableAttachment("foo",
///     vswitch_id=foo_switch.id,
///     route_table_id=foo_route_table.id)
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
///     var foo = new AliCloud.Vpc.Network("foo", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var fooSwitch = new AliCloud.Vpc.Switch("foo", new()
///     {
///         VpcId = foo.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var fooRouteTable = new AliCloud.Vpc.RouteTable("foo", new()
///     {
///         VpcId = foo.Id,
///         RouteTableName = name,
///         Description = "route_table_attachment",
///     });
///
///     var fooRouteTableAttachment = new AliCloud.Vpc.RouteTableAttachment("foo", new()
///     {
///         VswitchId = fooSwitch.Id,
///         RouteTableId = fooRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		foo, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooSwitch, err := vpc.NewSwitch(ctx, "foo", &vpc.SwitchArgs{
/// 			VpcId:       foo.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooRouteTable, err := vpc.NewRouteTable(ctx, "foo", &vpc.RouteTableArgs{
/// 			VpcId:          foo.ID(),
/// 			RouteTableName: pulumi.String(name),
/// 			Description:    pulumi.String("route_table_attachment"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewRouteTableAttachment(ctx, "foo", &vpc.RouteTableAttachmentArgs{
/// 			VswitchId:    fooSwitch.ID(),
/// 			RouteTableId: fooRouteTable.ID(),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.RouteTable;
/// import com.pulumi.alicloud.vpc.RouteTableArgs;
/// import com.pulumi.alicloud.vpc.RouteTableAttachment;
/// import com.pulumi.alicloud.vpc.RouteTableAttachmentArgs;
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
///         var foo = new Network("foo", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var fooSwitch = new Switch("fooSwitch", SwitchArgs.builder()
///             .vpcId(foo.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var fooRouteTable = new RouteTable("fooRouteTable", RouteTableArgs.builder()
///             .vpcId(foo.id())
///             .routeTableName(name)
///             .description("route_table_attachment")
///             .build());
///
///         var fooRouteTableAttachment = new RouteTableAttachment("fooRouteTableAttachment", RouteTableAttachmentArgs.builder()
///             .vswitchId(fooSwitch.id())
///             .routeTableId(fooRouteTable.id())
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
///   foo:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   fooSwitch:
///     type: alicloud:vpc:Switch
///     name: foo
///     properties:
///       vpcId: ${foo.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   fooRouteTable:
///     type: alicloud:vpc:RouteTable
///     name: foo
///     properties:
///       vpcId: ${foo.id}
///       routeTableName: ${name}
///       description: route_table_attachment
///   fooRouteTableAttachment:
///     type: alicloud:vpc:RouteTableAttachment
///     name: foo
///     properties:
///       vswitchId: ${fooSwitch.id}
///       routeTableId: ${fooRouteTable.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Route Table Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/routeTableAttachment:RouteTableAttachment example <route_table_id>:<vswitch_id>
/// ```
class RouteTableAttachment extends pulumi.CustomResource {
  /// The ID of the route table to be bound to the switch.
  late final pulumi.Output<String> routeTableId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The ID of the switch to bind the route table.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [RouteTableAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteTableAttachment]. {@macro pulumi_vpc_route_table_attachment_route_table_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteTableAttachment(
    String name, {
    RouteTableAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/routeTableAttachment:RouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    routeTableId = registerOutput<String>('routeTableId');
    status = registerOutput<String>('status');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [RouteTableAttachment] resource's state with the given [name] and [id].
  static RouteTableAttachment get(
    String name,
    pulumi.Input<String> id, {
    RouteTableAttachmentState? state,
  }) {
    return RouteTableAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteTableAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/routeTableAttachment:RouteTableAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    routeTableId = registerOutput<String>('routeTableId');
    status = registerOutput<String>('status');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
