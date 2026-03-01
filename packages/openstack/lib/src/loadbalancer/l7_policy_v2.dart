import 'package:pulumi/pulumi.dart' as pulumi;
import 'l7_policy_v2_args.dart';

/// Manages a Load Balancer L7 Policy resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     name: "subnet_1",
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
///     networkId: network1.id,
/// });
/// const loadbalancer1 = new openstack.loadbalancer.LoadBalancer("loadbalancer_1", {
///     name: "loadbalancer_1",
///     vipSubnetId: subnet1.id,
/// });
/// const listener1 = new openstack.loadbalancer.Listener("listener_1", {
///     name: "listener_1",
///     protocol: "HTTP",
///     protocolPort: 8080,
///     loadbalancerId: loadbalancer1.id,
/// });
/// const pool1 = new openstack.loadbalancer.Pool("pool_1", {
///     name: "pool_1",
///     protocol: "HTTP",
///     lbMethod: "ROUND_ROBIN",
///     loadbalancerId: loadbalancer1.id,
/// });
/// const l7policy1 = new openstack.loadbalancer.L7PolicyV2("l7policy_1", {
///     name: "test",
///     action: "REDIRECT_TO_POOL",
///     description: "test l7 policy",
///     position: 1,
///     listenerId: listener1.id,
///     redirectPoolId: pool1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     name="subnet_1",
///     cidr="192.168.199.0/24",
///     ip_version=4,
///     network_id=network1.id)
/// loadbalancer1 = openstack.loadbalancer.LoadBalancer("loadbalancer_1",
///     name="loadbalancer_1",
///     vip_subnet_id=subnet1.id)
/// listener1 = openstack.loadbalancer.Listener("listener_1",
///     name="listener_1",
///     protocol="HTTP",
///     protocol_port=8080,
///     loadbalancer_id=loadbalancer1.id)
/// pool1 = openstack.loadbalancer.Pool("pool_1",
///     name="pool_1",
///     protocol="HTTP",
///     lb_method="ROUND_ROBIN",
///     loadbalancer_id=loadbalancer1.id)
/// l7policy1 = openstack.loadbalancer.L7PolicyV2("l7policy_1",
///     name="test",
///     action="REDIRECT_TO_POOL",
///     description="test l7 policy",
///     position=1,
///     listener_id=listener1.id,
///     redirect_pool_id=pool1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var subnet1 = new OpenStack.Networking.Subnet("subnet_1", new()
///     {
///         Name = "subnet_1",
///         Cidr = "192.168.199.0/24",
///         IpVersion = 4,
///         NetworkId = network1.Id,
///     });
///
///     var loadbalancer1 = new OpenStack.LoadBalancer.LoadBalancer("loadbalancer_1", new()
///     {
///         Name = "loadbalancer_1",
///         VipSubnetId = subnet1.Id,
///     });
///
///     var listener1 = new OpenStack.LoadBalancer.Listener("listener_1", new()
///     {
///         Name = "listener_1",
///         Protocol = "HTTP",
///         ProtocolPort = 8080,
///         LoadbalancerId = loadbalancer1.Id,
///     });
///
///     var pool1 = new OpenStack.LoadBalancer.Pool("pool_1", new()
///     {
///         Name = "pool_1",
///         Protocol = "HTTP",
///         LbMethod = "ROUND_ROBIN",
///         LoadbalancerId = loadbalancer1.Id,
///     });
///
///     var l7policy1 = new OpenStack.LoadBalancer.L7PolicyV2("l7policy_1", new()
///     {
///         Name = "test",
///         Action = "REDIRECT_TO_POOL",
///         Description = "test l7 policy",
///         Position = 1,
///         ListenerId = listener1.Id,
///         RedirectPoolId = pool1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet1, err := networking.NewSubnet(ctx, "subnet_1", &networking.SubnetArgs{
/// 			Name:      pulumi.String("subnet_1"),
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 			IpVersion: pulumi.Int(4),
/// 			NetworkId: network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		loadbalancer1, err := loadbalancer.NewLoadBalancer(ctx, "loadbalancer_1", &loadbalancer.LoadBalancerArgs{
/// 			Name:        pulumi.String("loadbalancer_1"),
/// 			VipSubnetId: subnet1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listener1, err := loadbalancer.NewListener(ctx, "listener_1", &loadbalancer.ListenerArgs{
/// 			Name:           pulumi.String("listener_1"),
/// 			Protocol:       pulumi.String("HTTP"),
/// 			ProtocolPort:   pulumi.Int(8080),
/// 			LoadbalancerId: loadbalancer1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pool1, err := loadbalancer.NewPool(ctx, "pool_1", &loadbalancer.PoolArgs{
/// 			Name:           pulumi.String("pool_1"),
/// 			Protocol:       pulumi.String("HTTP"),
/// 			LbMethod:       pulumi.String("ROUND_ROBIN"),
/// 			LoadbalancerId: loadbalancer1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loadbalancer.NewL7PolicyV2(ctx, "l7policy_1", &loadbalancer.L7PolicyV2Args{
/// 			Name:           pulumi.String("test"),
/// 			Action:         pulumi.String("REDIRECT_TO_POOL"),
/// 			Description:    pulumi.String("test l7 policy"),
/// 			Position:       pulumi.Int(1),
/// 			ListenerId:     listener1.ID(),
/// 			RedirectPoolId: pool1.ID(),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Subnet;
/// import com.pulumi.openstack.networking.SubnetArgs;
/// import com.pulumi.openstack.loadbalancer.LoadBalancer;
/// import com.pulumi.openstack.loadbalancer.LoadBalancerArgs;
/// import com.pulumi.openstack.loadbalancer.Listener;
/// import com.pulumi.openstack.loadbalancer.ListenerArgs;
/// import com.pulumi.openstack.loadbalancer.Pool;
/// import com.pulumi.openstack.loadbalancer.PoolArgs;
/// import com.pulumi.openstack.loadbalancer.L7PolicyV2;
/// import com.pulumi.openstack.loadbalancer.L7PolicyV2Args;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .name("subnet_1")
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .networkId(network1.id())
///             .build());
///
///         var loadbalancer1 = new LoadBalancer("loadbalancer1", LoadBalancerArgs.builder()
///             .name("loadbalancer_1")
///             .vipSubnetId(subnet1.id())
///             .build());
///
///         var listener1 = new Listener("listener1", ListenerArgs.builder()
///             .name("listener_1")
///             .protocol("HTTP")
///             .protocolPort(8080)
///             .loadbalancerId(loadbalancer1.id())
///             .build());
///
///         var pool1 = new Pool("pool1", PoolArgs.builder()
///             .name("pool_1")
///             .protocol("HTTP")
///             .lbMethod("ROUND_ROBIN")
///             .loadbalancerId(loadbalancer1.id())
///             .build());
///
///         var l7policy1 = new L7PolicyV2("l7policy1", L7PolicyV2Args.builder()
///             .name("test")
///             .action("REDIRECT_TO_POOL")
///             .description("test l7 policy")
///             .position(1)
///             .listenerId(listener1.id())
///             .redirectPoolId(pool1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       name: subnet_1
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///       networkId: ${network1.id}
///   loadbalancer1:
///     type: openstack:loadbalancer:LoadBalancer
///     name: loadbalancer_1
///     properties:
///       name: loadbalancer_1
///       vipSubnetId: ${subnet1.id}
///   listener1:
///     type: openstack:loadbalancer:Listener
///     name: listener_1
///     properties:
///       name: listener_1
///       protocol: HTTP
///       protocolPort: 8080
///       loadbalancerId: ${loadbalancer1.id}
///   pool1:
///     type: openstack:loadbalancer:Pool
///     name: pool_1
///     properties:
///       name: pool_1
///       protocol: HTTP
///       lbMethod: ROUND_ROBIN
///       loadbalancerId: ${loadbalancer1.id}
///   l7policy1:
///     type: openstack:loadbalancer:L7PolicyV2
///     name: l7policy_1
///     properties:
///       name: test
///       action: REDIRECT_TO_POOL
///       description: test l7 policy
///       position: 1
///       listenerId: ${listener1.id}
///       redirectPoolId: ${pool1.id}
/// ```
///
///
/// ## Import
///
/// Load Balancer L7 Policy can be imported using the L7 Policy ID, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/l7PolicyV2:L7PolicyV2 l7policy_1 8a7a79c2-cf17-4e65-b2ae-ddc8bfcf6c74
/// ```
class L7PolicyV2 extends pulumi.CustomResource {
  /// The L7 Policy action - can either be REDIRECT\_TO\_POOL,
  /// REDIRECT\_TO\_URL or REJECT.
  late final pulumi.Output<String> action;
  /// The administrative state of the L7 Policy.
  /// A valid value is true (UP) or false (DOWN).
  late final pulumi.Output<bool?> adminStateUp;
  /// Human-readable description for the L7 Policy.
  late final pulumi.Output<String?> description;
  /// The Listener on which the L7 Policy will be associated with.
  /// Changing this creates a new L7 Policy.
  late final pulumi.Output<String> listenerId;
  /// Human-readable name for the L7 Policy. Does not have
  /// to be unique.
  late final pulumi.Output<String> name;
  /// The position of this policy on the listener. Positions start at 1.
  late final pulumi.Output<int> position;
  /// Integer. Requests matching this policy will be
  /// redirected to the specified URL or Prefix URL with the HTTP response code.
  /// Valid if action is REDIRECT\_TO\_URL or REDIRECT\_PREFIX. Valid options are:
  /// 301, 302, 303, 307, or 308. Default is 302. New in octavia version 2.9
  late final pulumi.Output<int> redirectHttpCode;
  /// Requests matching this policy will be redirected to the
  /// pool with this ID. Only valid if action is REDIRECT\_TO\_POOL.
  late final pulumi.Output<String?> redirectPoolId;
  /// Requests matching this policy will be redirected to
  /// this Prefix URL. Only valid if action is REDIRECT\_PREFIX.
  late final pulumi.Output<String?> redirectPrefix;
  /// Requests matching this policy will be redirected to this URL.
  /// Only valid if action is REDIRECT\_TO\_URL.
  late final pulumi.Output<String?> redirectUrl;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an L7 policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// L7 Policy.
  late final pulumi.Output<String> region;
  /// Required for admins. The UUID of the tenant who owns
  /// the L7 Policy.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new L7 Policy.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [L7PolicyV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [L7PolicyV2]. {@macro pulumi_loadbalancer_l7_policy_v2_l7_policy_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  L7PolicyV2(
    String name, {
    L7PolicyV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/l7PolicyV2:L7PolicyV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.adminStateUp = registerOutput<bool?>('adminStateUp');
    this.description = registerOutput<String?>('description');
    this.listenerId = registerOutput<String>('listenerId');
    this.name = registerOutput<String>('name');
    this.position = registerOutput<int>('position');
    this.redirectHttpCode = registerOutput<int>('redirectHttpCode');
    this.redirectPoolId = registerOutput<String?>('redirectPoolId');
    this.redirectPrefix = registerOutput<String?>('redirectPrefix');
    this.redirectUrl = registerOutput<String?>('redirectUrl');
    this.region = registerOutput<String>('region');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
