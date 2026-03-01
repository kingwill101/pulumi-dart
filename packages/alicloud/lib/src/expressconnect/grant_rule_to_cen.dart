import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_rule_to_cen_args.dart';

/// Provides a Express Connect Grant Rule To Cen resource.
///
/// For information about Express Connect Grant Rule To Cen and how to use it, see [What is Grant Rule To Cen](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/grantinstancetocen).
///
/// > **NOTE:** Available since v1.196.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getAccount({});
/// const defaultGetPhysicalConnections = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 2999,
///     min: 1,
/// });
/// const defaultVirtualBorderRouter = new alicloud.expressconnect.VirtualBorderRouter("default", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: defaultGetPhysicalConnections.then(defaultGetPhysicalConnections => defaultGetPhysicalConnections.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: defaultInteger.id,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
/// });
/// const defaultInstance = new alicloud.cen.Instance("default", {cenInstanceName: name});
/// const defaultGrantRuleToCen = new alicloud.expressconnect.GrantRuleToCen("default", {
///     cenId: defaultInstance.id,
///     cenOwnerId: _default.then(_default => _default.id),
///     instanceId: defaultVirtualBorderRouter.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_account()
/// default_get_physical_connections = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// default_integer = random.index.Integer("default",
///     max=2999,
///     min=1)
/// default_virtual_border_router = alicloud.expressconnect.VirtualBorderRouter("default",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=default_get_physical_connections.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=default_integer["id"],
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10)
/// default_instance = alicloud.cen.Instance("default", cen_instance_name=name)
/// default_grant_rule_to_cen = alicloud.expressconnect.GrantRuleToCen("default",
///     cen_id=default_instance.id,
///     cen_owner_id=default.id,
///     instance_id=default_virtual_border_router.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultGetPhysicalConnections = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 2999,
///         Min = 1,
///     });
///
///     var defaultVirtualBorderRouter = new AliCloud.ExpressConnect.VirtualBorderRouter("default", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = defaultGetPhysicalConnections.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VirtualBorderRouterName = name,
///         VlanId = defaultInteger.Id,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///     });
///
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultGrantRuleToCen = new AliCloud.ExpressConnect.GrantRuleToCen("default", new()
///     {
///         CenId = defaultInstance.Id,
///         CenOwnerId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         InstanceId = defaultVirtualBorderRouter.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetPhysicalConnections, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 2999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVirtualBorderRouter, err := expressconnect.NewVirtualBorderRouter(ctx, "default", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(defaultGetPhysicalConnections.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  defaultInteger.Id,
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewGrantRuleToCen(ctx, "default", &expressconnect.GrantRuleToCenArgs{
/// 			CenId:      defaultInstance.ID(),
/// 			CenOwnerId: pulumi.String(_default.Id),
/// 			InstanceId: defaultVirtualBorderRouter.ID(),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.expressconnect.GrantRuleToCen;
/// import com.pulumi.alicloud.expressconnect.GrantRuleToCenArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetPhysicalConnections = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(2999)
///             .min(1)
///             .build());
///
///         var defaultVirtualBorderRouter = new VirtualBorderRouter("defaultVirtualBorderRouter", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(defaultGetPhysicalConnections.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(defaultInteger.id())
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultGrantRuleToCen = new GrantRuleToCen("defaultGrantRuleToCen", GrantRuleToCenArgs.builder()
///             .cenId(defaultInstance.id())
///             .cenOwnerId(default_.id())
///             .instanceId(defaultVirtualBorderRouter.id())
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 2999
///       min: 1
///   defaultVirtualBorderRouter:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     name: default
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${defaultGetPhysicalConnections.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: ${defaultInteger.id}
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///   defaultInstance:
///     type: alicloud:cen:Instance
///     name: default
///     properties:
///       cenInstanceName: ${name}
///   defaultGrantRuleToCen:
///     type: alicloud:expressconnect:GrantRuleToCen
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///       cenOwnerId: ${default.id}
///       instanceId: ${defaultVirtualBorderRouter.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetPhysicalConnections:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Grant Rule To Cen can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/grantRuleToCen:GrantRuleToCen example <cen_id>:<cen_owner_id>:<instance_id>
/// ```
class GrantRuleToCen extends pulumi.CustomResource {
  /// The ID of the CEN instance to which you want to grant permissions.
  late final pulumi.Output<String> cenId;
  /// The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  late final pulumi.Output<String> cenOwnerId;
  /// (Available since v1.263.0) The time when the instance was created.
  late final pulumi.Output<String> createTime;
  /// The ID of the VBR.
  late final pulumi.Output<String> instanceId;

  /// Creates a new [GrantRuleToCen].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GrantRuleToCen]. {@macro pulumi_expressconnect_grant_rule_to_cen_grant_rule_to_cen_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GrantRuleToCen(
    String name, {
    GrantRuleToCenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/grantRuleToCen:GrantRuleToCen',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenId = registerOutput<String>('cenId');
    this.cenOwnerId = registerOutput<String>('cenOwnerId');
    this.createTime = registerOutput<String>('createTime');
    this.instanceId = registerOutput<String>('instanceId');
  }
}
