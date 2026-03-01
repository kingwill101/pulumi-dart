import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';

/// `f5bigip.ltm.Pool` Manages F5 BIG-IP LTM pools via iControl REST API.
///
/// For resources should be named with their `full path`. The full path is the combination of the `partition + name` of the resource or  `partition + directory + name`.
/// For example `/Common/my-pool`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const monitor = new f5bigip.ltm.Monitor("monitor", {
///     name: "/Common/terraform_monitor",
///     parent: "/Common/http",
/// });
/// const pool = new f5bigip.ltm.Pool("pool", {
///     name: "/Common/Axiom_Environment_APP1_Pool",
///     loadBalancingMode: "round-robin",
///     minimumActiveMembers: 1,
///     monitors: [monitor.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// monitor = f5bigip.ltm.Monitor("monitor",
///     name="/Common/terraform_monitor",
///     parent="/Common/http")
/// pool = f5bigip.ltm.Pool("pool",
///     name="/Common/Axiom_Environment_APP1_Pool",
///     load_balancing_mode="round-robin",
///     minimum_active_members=1,
///     monitors=[monitor.name])
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
///     });
///
///     var pool = new F5BigIP.Ltm.Pool("pool", new()
///     {
///         Name = "/Common/Axiom_Environment_APP1_Pool",
///         LoadBalancingMode = "round-robin",
///         MinimumActiveMembers = 1,
///         Monitors = new[]
///         {
///             monitor.Name,
///         },
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
/// 			Name:   pulumi.String("/Common/terraform_monitor"),
/// 			Parent: pulumi.String("/Common/http"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewPool(ctx, "pool", &ltm.PoolArgs{
/// 			Name:                 pulumi.String("/Common/Axiom_Environment_APP1_Pool"),
/// 			LoadBalancingMode:    pulumi.String("round-robin"),
/// 			MinimumActiveMembers: pulumi.Int(1),
/// 			Monitors: pulumi.StringArray{
/// 				monitor.Name,
/// 			},
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
///             .build());
///
///         var pool = new Pool("pool", PoolArgs.builder()
///             .name("/Common/Axiom_Environment_APP1_Pool")
///             .loadBalancingMode("round-robin")
///             .minimumActiveMembers(1)
///             .monitors(monitor.name())
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
///   pool:
///     type: f5bigip:ltm:Pool
///     properties:
///       name: /Common/Axiom_Environment_APP1_Pool
///       loadBalancingMode: round-robin
///       minimumActiveMembers: 1
///       monitors:
///         - ${monitor.name}
/// ```
///
///
/// ## Importing
///
/// An existing pool can be imported into this resource by supplying pool Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_pool.k8s_prod_import /Common/k8prod_Pool
///
/// ```
class Pool extends pulumi.CustomResource {
  /// Specifies whether NATs are automatically enabled or disabled for any connections using this pool, [ Default : `yes`, Possible Values `yes` or `no`].
  late final pulumi.Output<String> allowNat;
  /// Specifies whether SNATs are automatically enabled or disabled for any connections using this pool,[ Default : `yes`, Possible Values `yes` or `no`].
  late final pulumi.Output<String> allowSnat;
  /// Specifies descriptive text that identifies the pool.
  late final pulumi.Output<String?> description;
  /// Specifies the load balancing method. The default is `round-robin`. Possible options: [`dynamic-ratio-member`,`dynamic-ratio-node`, `fastest-app-response`,`fastest-node`, `least-connections-members`,`least-connections-node`,`least-sessions`,`observed-member`,`observed-node`,`predictive-member`,`predictive-node`,`ratio-least-connections-member`,`ratio-least-connections-node`,`ratio-member`,`ratio-node`,`ratio-session`,`round-robin`,`weighted-least-connections-member`,`weighted-least-connections-node`]
  late final pulumi.Output<String> loadBalancingMode;
  /// Specifies whether the system load balances traffic according to the priority number assigned to the pool member,Default Value is `0` meaning `disabled`.
  late final pulumi.Output<int> minimumActiveMembers;
  /// List of monitor names to associate with the pool
  late final pulumi.Output<List<String>> monitors;
  /// Name of the pool,it should be `full path`.The full path is the combination of the `partition + name` of the pool.(For example `/Common/my-pool`)
  late final pulumi.Output<String> name;
  /// Specifies the number of times the system tries to contact a new pool member after a passive failure.
  late final pulumi.Output<int> reselectTries;
  /// Specifies how the system should respond when the target pool member becomes unavailable. The default is `None`, Possible values: `[none, reset, reselect, drop]`.
  late final pulumi.Output<String> serviceDownAction;
  /// Specifies the duration during which the system sends less traffic to a newly-enabled pool member.
  late final pulumi.Output<int> slowRampTime;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_ltm_pool_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(
    String name, {
    PoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/pool:Pool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowNat = registerOutput<String>('allowNat');
    this.allowSnat = registerOutput<String>('allowSnat');
    this.description = registerOutput<String?>('description');
    this.loadBalancingMode = registerOutput<String>('loadBalancingMode');
    this.minimumActiveMembers = registerOutput<int>('minimumActiveMembers');
    this.monitors = registerOutput<List<String>>('monitors');
    this.name = registerOutput<String>('name');
    this.reselectTries = registerOutput<int>('reselectTries');
    this.serviceDownAction = registerOutput<String>('serviceDownAction');
    this.slowRampTime = registerOutput<int>('slowRampTime');
  }
}
