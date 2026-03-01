import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_group_args.dart';
import 'get_data_group_result.dart';
import 'get_irule_args.dart';
import 'get_irule_result.dart';
import 'get_monitor_args.dart';
import 'get_monitor_result.dart';
import 'get_node_args.dart';
import 'get_node_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_pool_args.dart';
import 'get_pool_result.dart';

/// Use this data source (`f5bigip.ltm.DataGroup`) to get the data group details available on BIG-IP
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const DG_TC3 = f5bigip.ltm.getDataGroup({
///     name: "test-dg",
///     partition: "Common",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// d_g__tc3 = f5bigip.ltm.get_data_group(name="test-dg",
///     partition="Common")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var DG_TC3 = F5BigIP.Ltm.GetDataGroup.Invoke(new()
///     {
///         Name = "test-dg",
///         Partition = "Common",
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
/// 		_, err := ltm.LookupDataGroup(ctx, &ltm.LookupDataGroupArgs{
/// 			Name:      "test-dg",
/// 			Partition: "Common",
/// 		}, nil)
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
/// import com.pulumi.f5bigip.ltm.LtmFunctions;
/// import com.pulumi.f5bigip.ltm.inputs.GetDataGroupArgs;
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
///         final var DG-TC3 = LtmFunctions.getDataGroup(GetDataGroupArgs.builder()
///             .name("test-dg")
///             .partition("Common")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   DG-TC3:
///     fn::invoke:
///       function: f5bigip:ltm:getDataGroup
///       arguments:
///         name: test-dg
///         partition: Common
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ltm_get_data_group_get_data_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataGroupResult> getDataGroup(
  GetDataGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ltm/getDataGroup:getDataGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataGroupResult.fromMap(result);
}

/// Use this data source (`f5bigip.ltm.IRule`) to get the ltm irule details available on BIG-IP
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test = f5bigip.ltm.getIrule({
///     name: "terraform_irule",
///     partition: "Common",
/// });
/// export const bigipIrule = test.then(test => test.irule);
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test = f5bigip.ltm.get_irule(name="terraform_irule",
///     partition="Common")
/// pulumi.export("bigipIrule", test.irule)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = F5BigIP.Ltm.GetIrule.Invoke(new()
///     {
///         Name = "terraform_irule",
///         Partition = "Common",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bigipIrule"] = test.Apply(getIruleResult => getIruleResult.Irule),
///     };
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
/// 		test, err := ltm.GetIrule(ctx, &ltm.GetIruleArgs{
/// 			Name:      "terraform_irule",
/// 			Partition: "Common",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bigipIrule", test.Irule)
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
/// import com.pulumi.f5bigip.ltm.LtmFunctions;
/// import com.pulumi.f5bigip.ltm.inputs.GetIruleArgs;
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
///         final var test = LtmFunctions.getIrule(GetIruleArgs.builder()
///             .name("terraform_irule")
///             .partition("Common")
///             .build());
///
///         ctx.export("bigipIrule", test.irule());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: f5bigip:ltm:getIrule
///       arguments:
///         name: terraform_irule
///         partition: Common
/// outputs:
///   bigipIrule: ${test.irule}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ltm_get_irule_get_irule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIruleResult> getIrule(
  GetIruleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ltm/getIrule:getIrule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIruleResult.fromMap(result);
}

/// Use this data source (`f5bigip.ltm.Monitor`) to get the ltm monitor details available on BIG-IP
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const monitor_TC1 = f5bigip.ltm.getMonitor({
///     name: "test-monitor",
///     partition: "Common",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// monitor__tc1 = f5bigip.ltm.get_monitor(name="test-monitor",
///     partition="Common")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor_TC1 = F5BigIP.Ltm.GetMonitor.Invoke(new()
///     {
///         Name = "test-monitor",
///         Partition = "Common",
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
/// 		_, err := ltm.LookupMonitor(ctx, &ltm.LookupMonitorArgs{
/// 			Name:      "test-monitor",
/// 			Partition: "Common",
/// 		}, nil)
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
/// import com.pulumi.f5bigip.ltm.LtmFunctions;
/// import com.pulumi.f5bigip.ltm.inputs.GetMonitorArgs;
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
///         final var monitor-TC1 = LtmFunctions.getMonitor(GetMonitorArgs.builder()
///             .name("test-monitor")
///             .partition("Common")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   monitor-TC1:
///     fn::invoke:
///       function: f5bigip:ltm:getMonitor
///       arguments:
///         name: test-monitor
///         partition: Common
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ltm_get_monitor_get_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorResult> getMonitor(
  GetMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ltm/getMonitor:getMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorResult.fromMap(result);
}

/// Use this data source (`f5bigip.ltm.Node`) to get the ltm node details available on BIG-IP
/// [args] Arguments passed to this invoke. {@macro pulumi_ltm_get_node_get_node_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeResult> getNode(
  GetNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ltm/getNode:getNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeResult.fromMap(result);
}

/// Use this data source (`f5bigip.ltm.Policy`) to get the ltm policy details available on BIG-IP
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test = f5bigip.ltm.getPolicy({
///     name: "/Common/test-policy",
/// });
/// export const bigipPolicy = test.then(test => test.rules);
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test = f5bigip.ltm.get_policy(name="/Common/test-policy")
/// pulumi.export("bigipPolicy", test.rules)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = F5BigIP.Ltm.GetPolicy.Invoke(new()
///     {
///         Name = "/Common/test-policy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bigipPolicy"] = test.Apply(getPolicyResult => getPolicyResult.Rules),
///     };
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
/// 		test, err := ltm.LookupPolicy(ctx, &ltm.LookupPolicyArgs{
/// 			Name: "/Common/test-policy",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bigipPolicy", test.Rules)
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
/// import com.pulumi.f5bigip.ltm.LtmFunctions;
/// import com.pulumi.f5bigip.ltm.inputs.GetPolicyArgs;
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
///         final var test = LtmFunctions.getPolicy(GetPolicyArgs.builder()
///             .name("/Common/test-policy")
///             .build());
///
///         ctx.export("bigipPolicy", test.rules());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: f5bigip:ltm:getPolicy
///       arguments:
///         name: /Common/test-policy
/// outputs:
///   bigipPolicy: ${test.rules}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ltm_get_policy_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ltm/getPolicy:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

/// Use this data source (`f5bigip.ltm.Pool`) to get the ltm monitor details available on BIG-IP
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const pool_Example = f5bigip.ltm.getPool({
///     name: "example-pool",
///     partition: "Common",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// pool__example = f5bigip.ltm.get_pool(name="example-pool",
///     partition="Common")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool_Example = F5BigIP.Ltm.GetPool.Invoke(new()
///     {
///         Name = "example-pool",
///         Partition = "Common",
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
/// 		_, err := ltm.LookupPool(ctx, &ltm.LookupPoolArgs{
/// 			Name:      "example-pool",
/// 			Partition: "Common",
/// 		}, nil)
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
/// import com.pulumi.f5bigip.ltm.LtmFunctions;
/// import com.pulumi.f5bigip.ltm.inputs.GetPoolArgs;
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
///         final var pool-Example = LtmFunctions.getPool(GetPoolArgs.builder()
///             .name("example-pool")
///             .partition("Common")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   pool-Example:
///     fn::invoke:
///       function: f5bigip:ltm:getPool
///       arguments:
///         name: example-pool
///         partition: Common
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ltm_get_pool_get_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolResult> getPool(
  GetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ltm/getPool:getPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolResult.fromMap(result);
}
