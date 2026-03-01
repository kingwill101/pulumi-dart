import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_attachment_args.dart';

/// `f5bigip.ltm.PoolAttachment` Manages nodes membership in pools
///
/// ## Example Usage
///
/// There are two ways to use `f5bigip.ltm.PoolAttachment` resource for `node` attribute
///
/// * It can be reference from `f5bigip.ltm.Node` (or)
/// * It can be specify directly with `ipv4:port`/`fqdn:port`/`ipv6.port` which will also create node and attach member to pool.
///
/// > For adding IPv6 node/member to pool it should be specific in `node` attribute in format like `ipv6_address.port`.
/// IPv4 should be specified as `ipv4_address:port`
///
///
/// ### Usage Pool attachment with node/member directly attaching to pool.
///
/// node can be specified in format `ipv4:port` / `fqdn:port` / `ipv6.port`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const monitor = new f5bigip.ltm.Monitor("monitor", {
///     name: "/Common/terraform_monitor",
///     parent: "/Common/http",
///     send: "GET /some/path\x0d\n",
///     timeout: 999,
///     interval: 998,
/// });
/// const pool = new f5bigip.ltm.Pool("pool", {
///     name: "/Common/terraform-pool",
///     loadBalancingMode: "round-robin",
///     monitors: [monitor.name],
///     allowSnat: "yes",
///     allowNat: "yes",
/// });
/// // attaching ipv4 address with service port
/// const ipv4NodeAttach = new f5bigip.ltm.PoolAttachment("ipv4_node_attach", {
///     pool: pool.name,
///     node: "1.1.1.1:80",
/// });
/// // attaching ipv6 address with service port
/// const ipv6NodeAttach = new f5bigip.ltm.PoolAttachment("ipv6_node_attach", {
///     pool: pool.name,
///     node: "2003::4.80",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// monitor = f5bigip.ltm.Monitor("monitor",
///     name="/Common/terraform_monitor",
///     parent="/Common/http",
///     send="GET /some/path\x0d\n",
///     timeout=999,
///     interval=998)
/// pool = f5bigip.ltm.Pool("pool",
///     name="/Common/terraform-pool",
///     load_balancing_mode="round-robin",
///     monitors=[monitor.name],
///     allow_snat="yes",
///     allow_nat="yes")
/// # attaching ipv4 address with service port
/// ipv4_node_attach = f5bigip.ltm.PoolAttachment("ipv4_node_attach",
///     pool=pool.name,
///     node="1.1.1.1:80")
/// # attaching ipv6 address with service port
/// ipv6_node_attach = f5bigip.ltm.PoolAttachment("ipv6_node_attach",
///     pool=pool.name,
///     node="2003::4.80")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor = new F5BigIP.Ltm.Monitor("monitor", new()
///     {
///         Name = "/Common/terraform_monitor",
///         Parent = "/Common/http",
///         Send = @"GET /some/path
/// ",
///         Timeout = 999,
///         Interval = 998,
///     });
///
///     var pool = new F5BigIP.Ltm.Pool("pool", new()
///     {
///         Name = "/Common/terraform-pool",
///         LoadBalancingMode = "round-robin",
///         Monitors = new[]
///         {
///             monitor.Name,
///         },
///         AllowSnat = "yes",
///         AllowNat = "yes",
///     });
///
///     // attaching ipv4 address with service port
///     var ipv4NodeAttach = new F5BigIP.Ltm.PoolAttachment("ipv4_node_attach", new()
///     {
///         Pool = pool.Name,
///         Node = "1.1.1.1:80",
///     });
///
///     // attaching ipv6 address with service port
///     var ipv6NodeAttach = new F5BigIP.Ltm.PoolAttachment("ipv6_node_attach", new()
///     {
///         Pool = pool.Name,
///         Node = "2003::4.80",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		monitor, err := ltm.NewMonitor(ctx, "monitor", &ltm.MonitorArgs{
/// 			Name:     pulumi.String("/Common/terraform_monitor"),
/// 			Parent:   pulumi.String("/Common/http"),
/// 			Send:     pulumi.String("GET /some/path\n"),
/// 			Timeout:  pulumi.Int(999),
/// 			Interval: pulumi.Int(998),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pool, err := ltm.NewPool(ctx, "pool", &ltm.PoolArgs{
/// 			Name:              pulumi.String("/Common/terraform-pool"),
/// 			LoadBalancingMode: pulumi.String("round-robin"),
/// 			Monitors: pulumi.StringArray{
/// 				monitor.Name,
/// 			},
/// 			AllowSnat: pulumi.String("yes"),
/// 			AllowNat:  pulumi.String("yes"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// attaching ipv4 address with service port
/// 		_, err = ltm.NewPoolAttachment(ctx, "ipv4_node_attach", &ltm.PoolAttachmentArgs{
/// 			Pool: pool.Name,
/// 			Node: pulumi.String("1.1.1.1:80"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// attaching ipv6 address with service port
/// 		_, err = ltm.NewPoolAttachment(ctx, "ipv6_node_attach", &ltm.PoolAttachmentArgs{
/// 			Pool: pool.Name,
/// 			Node: pulumi.String("2003::4.80"),
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
/// import com.pulumi.f5bigip.ltm.Monitor;
/// import com.pulumi.f5bigip.ltm.MonitorArgs;
/// import com.pulumi.f5bigip.ltm.Pool;
/// import com.pulumi.f5bigip.ltm.PoolArgs;
/// import com.pulumi.f5bigip.ltm.PoolAttachment;
/// import com.pulumi.f5bigip.ltm.PoolAttachmentArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .name("/Common/terraform_monitor")
///             .parent("/Common/http")
///             .send("""
/// GET /some/path
///             """)
///             .timeout(999)
///             .interval(998)
///             .build());
///
///         var pool = new Pool("pool", PoolArgs.builder()
///             .name("/Common/terraform-pool")
///             .loadBalancingMode("round-robin")
///             .monitors(monitor.name())
///             .allowSnat("yes")
///             .allowNat("yes")
///             .build());
///
///         // attaching ipv4 address with service port
///         var ipv4NodeAttach = new PoolAttachment("ipv4NodeAttach", PoolAttachmentArgs.builder()
///             .pool(pool.name())
///             .node("1.1.1.1:80")
///             .build());
///
///         // attaching ipv6 address with service port
///         var ipv6NodeAttach = new PoolAttachment("ipv6NodeAttach", PoolAttachmentArgs.builder()
///             .pool(pool.name())
///             .node("2003::4.80")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/terraform_monitor
///       parent: /Common/http
///       send: "GET /some/path\r\n"
///       timeout: '999'
///       interval: '998'
///   pool:
///     type: f5bigip:ltm:Pool
///     properties:
///       name: /Common/terraform-pool
///       loadBalancingMode: round-robin
///       monitors:
///         - ${monitor.name}
///       allowSnat: yes
///       allowNat: yes
///   # attaching ipv4 address with service port
///   ipv4NodeAttach:
///     type: f5bigip:ltm:PoolAttachment
///     name: ipv4_node_attach
///     properties:
///       pool: ${pool.name}
///       node: 1.1.1.1:80
///   # attaching ipv6 address with service port
///   ipv6NodeAttach:
///     type: f5bigip:ltm:PoolAttachment
///     name: ipv6_node_attach
///     properties:
///       pool: ${pool.name}
///       node: 2003::4.80
/// ```
///
///
/// ### Usage Pool attachment with node referenced from `f5bigip.ltm.Node`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const monitor = new f5bigip.ltm.Monitor("monitor", {
///     name: "/Common/terraform_monitor",
///     parent: "/Common/http",
///     send: "GET /some/path\x0d\n",
///     timeout: 999,
///     interval: 998,
/// });
/// const pool = new f5bigip.ltm.Pool("pool", {
///     name: "/Common/terraform-pool",
///     loadBalancingMode: "round-robin",
///     monitors: [monitor.name],
///     allowSnat: "yes",
///     allowNat: "yes",
/// });
/// const node = new f5bigip.ltm.Node("node", {
///     name: "/Common/terraform_node",
///     address: "192.168.30.2",
/// });
/// const attachNode = new f5bigip.ltm.PoolAttachment("attach_node", {
///     pool: pool.name,
///     node: pulumi.interpolate`${node.name}:80`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// monitor = f5bigip.ltm.Monitor("monitor",
///     name="/Common/terraform_monitor",
///     parent="/Common/http",
///     send="GET /some/path\x0d\n",
///     timeout=999,
///     interval=998)
/// pool = f5bigip.ltm.Pool("pool",
///     name="/Common/terraform-pool",
///     load_balancing_mode="round-robin",
///     monitors=[monitor.name],
///     allow_snat="yes",
///     allow_nat="yes")
/// node = f5bigip.ltm.Node("node",
///     name="/Common/terraform_node",
///     address="192.168.30.2")
/// attach_node = f5bigip.ltm.PoolAttachment("attach_node",
///     pool=pool.name,
///     node=node.name.apply(lambda name: f"{name}:80"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor = new F5BigIP.Ltm.Monitor("monitor", new()
///     {
///         Name = "/Common/terraform_monitor",
///         Parent = "/Common/http",
///         Send = @"GET /some/path
/// ",
///         Timeout = 999,
///         Interval = 998,
///     });
///
///     var pool = new F5BigIP.Ltm.Pool("pool", new()
///     {
///         Name = "/Common/terraform-pool",
///         LoadBalancingMode = "round-robin",
///         Monitors = new[]
///         {
///             monitor.Name,
///         },
///         AllowSnat = "yes",
///         AllowNat = "yes",
///     });
///
///     var node = new F5BigIP.Ltm.Node("node", new()
///     {
///         Name = "/Common/terraform_node",
///         Address = "192.168.30.2",
///     });
///
///     var attachNode = new F5BigIP.Ltm.PoolAttachment("attach_node", new()
///     {
///         Pool = pool.Name,
///         Node = node.Name.Apply(name => $"{name}:80"),
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
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		monitor, err := ltm.NewMonitor(ctx, "monitor", &ltm.MonitorArgs{
/// 			Name:     pulumi.String("/Common/terraform_monitor"),
/// 			Parent:   pulumi.String("/Common/http"),
/// 			Send:     pulumi.String("GET /some/path\n"),
/// 			Timeout:  pulumi.Int(999),
/// 			Interval: pulumi.Int(998),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pool, err := ltm.NewPool(ctx, "pool", &ltm.PoolArgs{
/// 			Name:              pulumi.String("/Common/terraform-pool"),
/// 			LoadBalancingMode: pulumi.String("round-robin"),
/// 			Monitors: pulumi.StringArray{
/// 				monitor.Name,
/// 			},
/// 			AllowSnat: pulumi.String("yes"),
/// 			AllowNat:  pulumi.String("yes"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		node, err := ltm.NewNode(ctx, "node", &ltm.NodeArgs{
/// 			Name:    pulumi.String("/Common/terraform_node"),
/// 			Address: pulumi.String("192.168.30.2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewPoolAttachment(ctx, "attach_node", &ltm.PoolAttachmentArgs{
/// 			Pool: pool.Name,
/// 			Node: node.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("%v:80", name), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.f5bigip.ltm.Monitor;
/// import com.pulumi.f5bigip.ltm.MonitorArgs;
/// import com.pulumi.f5bigip.ltm.Pool;
/// import com.pulumi.f5bigip.ltm.PoolArgs;
/// import com.pulumi.f5bigip.ltm.Node;
/// import com.pulumi.f5bigip.ltm.NodeArgs;
/// import com.pulumi.f5bigip.ltm.PoolAttachment;
/// import com.pulumi.f5bigip.ltm.PoolAttachmentArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .name("/Common/terraform_monitor")
///             .parent("/Common/http")
///             .send("""
/// GET /some/path
///             """)
///             .timeout(999)
///             .interval(998)
///             .build());
///
///         var pool = new Pool("pool", PoolArgs.builder()
///             .name("/Common/terraform-pool")
///             .loadBalancingMode("round-robin")
///             .monitors(monitor.name())
///             .allowSnat("yes")
///             .allowNat("yes")
///             .build());
///
///         var node = new Node("node", NodeArgs.builder()
///             .name("/Common/terraform_node")
///             .address("192.168.30.2")
///             .build());
///
///         var attachNode = new PoolAttachment("attachNode", PoolAttachmentArgs.builder()
///             .pool(pool.name())
///             .node(node.name().applyValue(_name -> String.format("%s:80", _name)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   monitor:
///     type: f5bigip:ltm:Monitor
///     properties:
///       name: /Common/terraform_monitor
///       parent: /Common/http
///       send: "GET /some/path\r\n"
///       timeout: '999'
///       interval: '998'
///   pool:
///     type: f5bigip:ltm:Pool
///     properties:
///       name: /Common/terraform-pool
///       loadBalancingMode: round-robin
///       monitors:
///         - ${monitor.name}
///       allowSnat: yes
///       allowNat: yes
///   node:
///     type: f5bigip:ltm:Node
///     properties:
///       name: /Common/terraform_node
///       address: 192.168.30.2
///   attachNode:
///     type: f5bigip:ltm:PoolAttachment
///     name: attach_node
///     properties:
///       pool: ${pool.name}
///       node: ${node.name}:80
/// ```
///
///
/// ### Pool attachment resource with attaching multiple nodes in same pool using `for_each`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
///     const node1 = new f5bigip.ltm.Node("node1", {
///         name: "/Common/terraform_node1",
///         address: "192.168.30.1",
///     });
///     const node2 = new f5bigip.ltm.Node("node2", {
///         name: "/Common/terraform_node2",
///         address: "192.168.30.2",
///     });
///     const k8sProd = new f5bigip.ltm.Pool("k8s_prod", {name: "/Common/k8prod_Pool"});
///     const k8sprod: f5bigip.ltm.PoolAttachment[] = [];
///     for (const range of std.toset({
///         input: [
///             node1.name,
///             node2.name,
///         ],
///     }).result.map((v, k) => ({key: k, value: v}))) {
///         k8sprod.push(new f5bigip.ltm.PoolAttachment(`k8sprod-${range.key}`, {
///             pool: k8sProd.name,
///             node: `${range.key}:80`,
///         }));
///     }
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// node1 = f5bigip.ltm.Node("node1",
///     name="/Common/terraform_node1",
///     address="192.168.30.1")
/// node2 = f5bigip.ltm.Node("node2",
///     name="/Common/terraform_node2",
///     address="192.168.30.2")
/// k8s_prod = f5bigip.ltm.Pool("k8s_prod", name="/Common/k8prod_Pool")
/// k8sprod = []
/// for range in [{"key": k, "value": v} for [k, v] in enumerate(std.toset(input=[
///     node1.name,
///     node2.name,
/// ]).result)]:
///     k8sprod.append(f5bigip.ltm.PoolAttachment(f"k8sprod-{range['key']}",
///         pool=k8s_prod.name,
///         node=f"{range['key']}:80"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
///     var node1 = new F5BigIP.Ltm.Node("node1", new()
///     {
///         Name = "/Common/terraform_node1",
///         Address = "192.168.30.1",
///     });
///
///     var node2 = new F5BigIP.Ltm.Node("node2", new()
///     {
///         Name = "/Common/terraform_node2",
///         Address = "192.168.30.2",
///     });
///
///     var k8sProd = new F5BigIP.Ltm.Pool("k8s_prod", new()
///     {
///         Name = "/Common/k8prod_Pool",
///     });
///
///     var k8sprod = new List<F5BigIP.Ltm.PoolAttachment>();
///     foreach (var range in )
///     {
///         k8sprod.Add(new F5BigIP.Ltm.PoolAttachment($"k8sprod-{range.Key}", new()
///         {
///             Pool = k8sProd.Name,
///             Node = $"{range.Key}:80",
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		node1, err := ltm.NewNode(ctx, "node1", &ltm.NodeArgs{
/// 			Name:    pulumi.String("/Common/terraform_node1"),
/// 			Address: pulumi.String("192.168.30.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		node2, err := ltm.NewNode(ctx, "node2", &ltm.NodeArgs{
/// 			Name:    pulumi.String("/Common/terraform_node2"),
/// 			Address: pulumi.String("192.168.30.2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		k8sProd, err := ltm.NewPool(ctx, "k8s_prod", &ltm.PoolArgs{
/// 			Name: pulumi.String("/Common/k8prod_Pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var k8sprod []*ltm.PoolAttachment
/// 		for key0, _ := range interface{}(std.Toset(ctx, &std.TosetArgs{
/// 			Input: pulumi.StringArray{
/// 				node1.Name,
/// 				node2.Name,
/// 			},
/// 		}, nil).Result) {
/// 			__res, err := ltm.NewPoolAttachment(ctx, fmt.Sprintf("k8sprod-%v", key0), &ltm.PoolAttachmentArgs{
/// 				Pool: k8sProd.Name,
/// 				Node: pulumi.Sprintf("%v:80", key0),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			k8sprod = append(k8sprod, __res)
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
/// import com.pulumi.f5bigip.ltm.Node;
/// import com.pulumi.f5bigip.ltm.NodeArgs;
/// import com.pulumi.f5bigip.ltm.Pool;
/// import com.pulumi.f5bigip.ltm.PoolArgs;
/// import com.pulumi.f5bigip.ltm.PoolAttachment;
/// import com.pulumi.f5bigip.ltm.PoolAttachmentArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var node1 = new Node("node1", NodeArgs.builder()
///             .name("/Common/terraform_node1")
///             .address("192.168.30.1")
///             .build());
///
///         var node2 = new Node("node2", NodeArgs.builder()
///             .name("/Common/terraform_node2")
///             .address("192.168.30.2")
///             .build());
///
///         var k8sProd = new Pool("k8sProd", PoolArgs.builder()
///             .name("/Common/k8prod_Pool")
///             .build());
///
///         for (var range : KeyedValue.of(com.pulumi.std.StdFunctions(TosetArgs.builder()
///             .input(
///                 node1.name(),
///                 node2.name())
///             .build()).result())) {
///             new PoolAttachment("k8sprod-" + range.key(), PoolAttachmentArgs.builder()
///                 .pool(k8sProd.name())
///                 .node(String.format("%s:80", range.key()))
///                 .build());
///         }
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   node1:
///     type: f5bigip:ltm:Node
///     properties:
///       name: /Common/terraform_node1
///       address: 192.168.30.1
///   node2:
///     type: f5bigip:ltm:Node
///     properties:
///       name: /Common/terraform_node2
///       address: 192.168.30.2
///   k8sProd:
///     type: f5bigip:ltm:Pool
///     name: k8s_prod
///     properties:
///       name: /Common/k8prod_Pool
///   k8sprod:
///     type: f5bigip:ltm:PoolAttachment
///     properties:
///       pool: ${k8sProd.name}
///       node: ${range.key}:80
///     options: {}
/// ```
///
///
///
/// ## Importing
///
/// An existing pool attachment (i.e. pool membership) can be imported into this resource by supplying both the pool full path, and the node full path with the relevant port. If the pool or node membership is not found, an error will be returned. An example is below:
///
/// ```sh
/// $ terraform import bigip_ltm_pool_attachment.node-pool-attach \
/// 	'{"pool": "/Common/terraform-pool", "node": "/Common/node1:80"}'
/// ```
class PoolAttachment extends pulumi.CustomResource {
  /// Specifies a maximum established connection limit for a pool member or node.The default is 0, meaning that there is no limit to the number of connections.
  late final pulumi.Output<int> connectionLimit;
  /// Specifies the maximum number of connections-per-second allowed for a pool member,The default is 0.
  late final pulumi.Output<String> connectionRateLimit;
  /// Specifies the fixed ratio value used for a node during ratio load balancing.
  late final pulumi.Output<int> dynamicRatio;
  /// Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN. The default is enabled
  late final pulumi.Output<String?> fqdnAutopopulate;
  /// Specifies the health monitors that the system uses to monitor this pool member,value can be `none` (or) `default` (or) list of monitors joined with and ( ex: `/Common/test_monitor_pa_tc1 and /Common/gateway_icmp`).
  late final pulumi.Output<String> monitor;
  /// Pool member address/fqdn with service port, (ex: `1.1.1.1:80/www.google.com:80`). (Note: Member will be in same partition of Pool)
  late final pulumi.Output<String> node;
  /// Name of the pool to which members should be attached,it should be "full path".The full path is the combination of the partition + name of the pool.(For example `/Common/my-pool`) or partition + directory + name of the pool (For example `/Common/test/my-pool`).When including directory in fullpath we have to make sure it is created in the given partition before using it.
  late final pulumi.Output<String> pool;
  /// Specifies a number representing the priority group for the pool member. The default is 0, meaning that the member has no priority
  late final pulumi.Output<int> priorityGroup;
  /// "Specifies the ratio weight to assign to the pool member. Valid values range from 1 through 65535. The default is 1, which means that each pool member has an equal ratio proportion.".
  late final pulumi.Output<int> ratio;
  /// Specifies the state the pool member should be in,value can be `enabled` (or) `disabled` (or) `forced_offline`).
  late final pulumi.Output<String?> state;

  /// Creates a new [PoolAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PoolAttachment]. {@macro pulumi_ltm_pool_attachment_pool_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PoolAttachment(
    String name, {
    PoolAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/poolAttachment:PoolAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionLimit = registerOutput<int>('connectionLimit');
    this.connectionRateLimit = registerOutput<String>('connectionRateLimit');
    this.dynamicRatio = registerOutput<int>('dynamicRatio');
    this.fqdnAutopopulate = registerOutput<String?>('fqdnAutopopulate');
    this.monitor = registerOutput<String>('monitor');
    this.node = registerOutput<String>('node');
    this.pool = registerOutput<String>('pool');
    this.priorityGroup = registerOutput<int>('priorityGroup');
    this.ratio = registerOutput<int>('ratio');
    this.state = registerOutput<String?>('state');
  }
}
