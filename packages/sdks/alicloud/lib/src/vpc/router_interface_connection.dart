import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_interface_connection_args.dart';
import 'router_interface_connection_state.dart';

/// &gt; **DEPRECATED:**  This resource has been deprecated from version `1.199.0`. Please use new resource alicloud_express_connect_router_interface.
///
/// Provides a VPC router interface connection resource to connect two router interfaces which are in two different VPCs.
/// After that, all of the two router interfaces will be active.
///
/// &gt; **NOTE:** At present, Router interface does not support changing opposite router interface, the connection delete action is only deactivating it to inactive, not modifying the connection to empty.
///
/// &gt; **NOTE:** If you want to changing opposite router interface, you can delete router interface and re-build them.
///
/// &gt; **NOTE:** A integrated router interface connection tunnel requires both InitiatingSide and AcceptingSide configuring opposite router interface.
///
/// &gt; **NOTE:** Please remember to add a `depends_on` clause in the router interface connection from the InitiatingSide to the AcceptingSide, because the connection from the AcceptingSide to the InitiatingSide must be done first.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "alicloudRouterInterfaceConnectionBasic";
/// const foo = new alicloud.vpc.Network("foo", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const bar = new alicloud.vpc.Network("bar", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const initiate = new alicloud.vpc.RouterInterface("initiate", {
///     oppositeRegion: region,
///     routerType: "VRouter",
///     routerId: foo.routerId,
///     role: "InitiatingSide",
///     specification: "Large.2",
///     name: name,
///     description: name,
///     instanceChargeType: "PostPaid",
/// });
/// const opposite = new alicloud.vpc.RouterInterface("opposite", {
///     oppositeRegion: region,
///     routerType: "VRouter",
///     routerId: bar.routerId,
///     role: "AcceptingSide",
///     specification: "Large.1",
///     name: `${name}-opposite`,
///     description: `${name}-opposite`,
/// });
/// const barRouterInterfaceConnection = new alicloud.vpc.RouterInterfaceConnection("bar", {
///     interfaceId: opposite.id,
///     oppositeInterfaceId: initiate.id,
/// });
/// // A integrated router interface connection tunnel requires both InitiatingSide and AcceptingSide configuring opposite router interface.
/// const fooRouterInterfaceConnection = new alicloud.vpc.RouterInterfaceConnection("foo", {
///     interfaceId: initiate.id,
///     oppositeInterfaceId: opposite.id,
/// }, {
///     dependsOn: [barRouterInterfaceConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "alicloudRouterInterfaceConnectionBasic"
/// foo = alicloud.vpc.Network("foo",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// bar = alicloud.vpc.Network("bar",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// initiate = alicloud.vpc.RouterInterface("initiate",
///     opposite_region=region,
///     router_type="VRouter",
///     router_id=foo.router_id,
///     role="InitiatingSide",
///     specification="Large.2",
///     name=name,
///     description=name,
///     instance_charge_type="PostPaid")
/// opposite = alicloud.vpc.RouterInterface("opposite",
///     opposite_region=region,
///     router_type="VRouter",
///     router_id=bar.router_id,
///     role="AcceptingSide",
///     specification="Large.1",
///     name=f"{name}-opposite",
///     description=f"{name}-opposite")
/// bar_router_interface_connection = alicloud.vpc.RouterInterfaceConnection("bar",
///     interface_id=opposite.id,
///     opposite_interface_id=initiate.id)
/// # A integrated router interface connection tunnel requires both InitiatingSide and AcceptingSide configuring opposite router interface.
/// foo_router_interface_connection = alicloud.vpc.RouterInterfaceConnection("foo",
///     interface_id=initiate.id,
///     opposite_interface_id=opposite.id,
///     opts = pulumi.ResourceOptions(depends_on=[bar_router_interface_connection]))
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "alicloudRouterInterfaceConnectionBasic";
///     var foo = new AliCloud.Vpc.Network("foo", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var bar = new AliCloud.Vpc.Network("bar", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var initiate = new AliCloud.Vpc.RouterInterface("initiate", new()
///     {
///         OppositeRegion = region,
///         RouterType = "VRouter",
///         RouterId = foo.RouterId,
///         Role = "InitiatingSide",
///         Specification = "Large.2",
///         Name = name,
///         Description = name,
///         InstanceChargeType = "PostPaid",
///     });
///
///     var opposite = new AliCloud.Vpc.RouterInterface("opposite", new()
///     {
///         OppositeRegion = region,
///         RouterType = "VRouter",
///         RouterId = bar.RouterId,
///         Role = "AcceptingSide",
///         Specification = "Large.1",
///         Name = $"{name}-opposite",
///         Description = $"{name}-opposite",
///     });
///
///     var barRouterInterfaceConnection = new AliCloud.Vpc.RouterInterfaceConnection("bar", new()
///     {
///         InterfaceId = opposite.Id,
///         OppositeInterfaceId = initiate.Id,
///     });
///
///     // A integrated router interface connection tunnel requires both InitiatingSide and AcceptingSide configuring opposite router interface.
///     var fooRouterInterfaceConnection = new AliCloud.Vpc.RouterInterfaceConnection("foo", new()
///     {
///         InterfaceId = initiate.Id,
///         OppositeInterfaceId = opposite.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             barRouterInterfaceConnection,
///         },
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
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "alicloudRouterInterfaceConnectionBasic"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		foo, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := vpc.NewNetwork(ctx, "bar", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		initiate, err := vpc.NewRouterInterface(ctx, "initiate", &vpc.RouterInterfaceArgs{
/// 			OppositeRegion:     pulumi.String(region),
/// 			RouterType:         pulumi.String("VRouter"),
/// 			RouterId:           foo.RouterId,
/// 			Role:               pulumi.String("InitiatingSide"),
/// 			Specification:      pulumi.String("Large.2"),
/// 			Name:               pulumi.String(name),
/// 			Description:        pulumi.String(name),
/// 			InstanceChargeType: pulumi.String("PostPaid"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		opposite, err := vpc.NewRouterInterface(ctx, "opposite", &vpc.RouterInterfaceArgs{
/// 			OppositeRegion: pulumi.String(region),
/// 			RouterType:     pulumi.String("VRouter"),
/// 			RouterId:       bar.RouterId,
/// 			Role:           pulumi.String("AcceptingSide"),
/// 			Specification:  pulumi.String("Large.1"),
/// 			Name:           pulumi.Sprintf("%v-opposite", name),
/// 			Description:    pulumi.Sprintf("%v-opposite", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		barRouterInterfaceConnection, err := vpc.NewRouterInterfaceConnection(ctx, "bar", &vpc.RouterInterfaceConnectionArgs{
/// 			InterfaceId:         opposite.ID(),
/// 			OppositeInterfaceId: initiate.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// A integrated router interface connection tunnel requires both InitiatingSide and AcceptingSide configuring opposite router interface.
/// 		_, err = vpc.NewRouterInterfaceConnection(ctx, "foo", &vpc.RouterInterfaceConnectionArgs{
/// 			InterfaceId:         initiate.ID(),
/// 			OppositeInterfaceId: opposite.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			barRouterInterfaceConnection,
/// 		}))
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
/// import com.pulumi.alicloud.vpc.RouterInterface;
/// import com.pulumi.alicloud.vpc.RouterInterfaceArgs;
/// import com.pulumi.alicloud.vpc.RouterInterfaceConnection;
/// import com.pulumi.alicloud.vpc.RouterInterfaceConnectionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var name = config.get("name").orElse("alicloudRouterInterfaceConnectionBasic");
///         var foo = new Network("foo", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var bar = new Network("bar", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var initiate = new RouterInterface("initiate", RouterInterfaceArgs.builder()
///             .oppositeRegion(region)
///             .routerType("VRouter")
///             .routerId(foo.routerId())
///             .role("InitiatingSide")
///             .specification("Large.2")
///             .name(name)
///             .description(name)
///             .instanceChargeType("PostPaid")
///             .build());
///
///         var opposite = new RouterInterface("opposite", RouterInterfaceArgs.builder()
///             .oppositeRegion(region)
///             .routerType("VRouter")
///             .routerId(bar.routerId())
///             .role("AcceptingSide")
///             .specification("Large.1")
///             .name(String.format("%s-opposite", name))
///             .description(String.format("%s-opposite", name))
///             .build());
///
///         var barRouterInterfaceConnection = new RouterInterfaceConnection("barRouterInterfaceConnection", RouterInterfaceConnectionArgs.builder()
///             .interfaceId(opposite.id())
///             .oppositeInterfaceId(initiate.id())
///             .build());
///
///         // A integrated router interface connection tunnel requires both InitiatingSide and AcceptingSide configuring opposite router interface.
///         var fooRouterInterfaceConnection = new RouterInterfaceConnection("fooRouterInterfaceConnection", RouterInterfaceConnectionArgs.builder()
///             .interfaceId(initiate.id())
///             .oppositeInterfaceId(opposite.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(barRouterInterfaceConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
///   name:
///     type: string
///     default: alicloudRouterInterfaceConnectionBasic
/// resources:
///   foo:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   bar:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   initiate:
///     type: alicloud:vpc:RouterInterface
///     properties:
///       oppositeRegion: ${region}
///       routerType: VRouter
///       routerId: ${foo.routerId}
///       role: InitiatingSide
///       specification: Large.2
///       name: ${name}
///       description: ${name}
///       instanceChargeType: PostPaid
///   opposite:
///     type: alicloud:vpc:RouterInterface
///     properties:
///       oppositeRegion: ${region}
///       routerType: VRouter
///       routerId: ${bar.routerId}
///       role: AcceptingSide
///       specification: Large.1
///       name: ${name}-opposite
///       description: ${name}-opposite
///   # A integrated router interface connection tunnel requires both InitiatingSide and AcceptingSide configuring opposite router interface.
///   fooRouterInterfaceConnection:
///     type: alicloud:vpc:RouterInterfaceConnection
///     name: foo
///     properties:
///       interfaceId: ${initiate.id}
///       oppositeInterfaceId: ${opposite.id}
///     options:
///       dependsOn:
///         - ${barRouterInterfaceConnection}
///   barRouterInterfaceConnection:
///     type: alicloud:vpc:RouterInterfaceConnection
///     name: bar
///     properties:
///       interfaceId: ${opposite.id}
///       oppositeInterfaceId: ${initiate.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The router interface connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/routerInterfaceConnection:RouterInterfaceConnection foo ri-abc123456
/// ```
class RouterInterfaceConnection extends pulumi.CustomResource {
  /// One side router interface ID.
  late final pulumi.Output<String> interfaceId;

  /// Another side router interface ID. It must belong the specified "opposite_interface_owner_id" account.
  late final pulumi.Output<String> oppositeInterfaceId;

  /// Another side router interface account ID. Log on to the Alibaba Cloud console, select User Info &gt; Account Management to check the account ID. Default to Provider account_id.
  late final pulumi.Output<String> oppositeInterfaceOwnerId;

  /// Another side router ID. It must belong the specified "opposite_interface_owner_id" account. It is valid when field "opposite_interface_owner_id" is specified.
  late final pulumi.Output<String> oppositeRouterId;

  /// Another side router Type. Optional value: VRouter, VBR. It is valid when field "opposite_interface_owner_id" is specified.
  ///
  /// &gt; **NOTE:** The value of "opposite_interface_owner_id" or "account_id" must be main account and not be sub account.
  late final pulumi.Output<String?> oppositeRouterType;

  /// Creates a new [RouterInterfaceConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterInterfaceConnection]. {@macro pulumi_vpc_router_interface_connection_router_interface_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterInterfaceConnection(
    String name, {
    RouterInterfaceConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/routerInterfaceConnection:RouterInterfaceConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    interfaceId = registerOutput<String>('interfaceId');
    oppositeInterfaceId = registerOutput<String>('oppositeInterfaceId');
    oppositeInterfaceOwnerId = registerOutput<String>(
      'oppositeInterfaceOwnerId',
    );
    oppositeRouterId = registerOutput<String>('oppositeRouterId');
    oppositeRouterType = registerOutput<String?>('oppositeRouterType');
  }

  /// Gets an existing [RouterInterfaceConnection] resource's state with the given [name] and [id].
  static RouterInterfaceConnection get(
    String name,
    pulumi.Input<String> id, {
    RouterInterfaceConnectionState? state,
  }) {
    return RouterInterfaceConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterInterfaceConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/routerInterfaceConnection:RouterInterfaceConnection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    interfaceId = registerOutput<String>('interfaceId');
    oppositeInterfaceId = registerOutput<String>('oppositeInterfaceId');
    oppositeInterfaceOwnerId = registerOutput<String>(
      'oppositeInterfaceOwnerId',
    );
    oppositeRouterId = registerOutput<String>('oppositeRouterId');
    oppositeRouterType = registerOutput<String?>('oppositeRouterType');
  }
}
