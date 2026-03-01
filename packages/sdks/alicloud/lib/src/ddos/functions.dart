import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ddos_bgp_instances_args.dart';
import 'get_ddos_bgp_instances_result.dart';
import 'get_ddos_bgp_ips_args.dart';
import 'get_ddos_bgp_ips_result.dart';
import 'get_ddos_coo_domain_resources_args.dart';
import 'get_ddos_coo_domain_resources_result.dart';
import 'get_ddos_coo_instances_args.dart';
import 'get_ddos_coo_instances_result.dart';
import 'get_ddos_coo_ports_args.dart';
import 'get_ddos_coo_ports_result.dart';

/// This data source provides a list of Anti-DDoS Advanced instances in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in v1.183.0+ .
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// export = async () => {
///     const config = new pulumi.Config();
///     const name = config.get("name") || "tf-example";
///     const instanceDdosBgpInstance = new alicloud.ddos.DdosBgpInstance("instance", {
///         name: name,
///         baseBandwidth: 20,
///         bandwidth: -1,
///         ipCount: 100,
///         ipType: "IPv4",
///         normalBandwidth: 100,
///         type: "Enterprise",
///     });
///     const instance = await alicloud.ddos.getDdosBgpInstances({
///         nameRegex: "ddosbgp",
///     });
///     return {
///         instance: [instance].map(__item => __item.id),
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// instance_ddos_bgp_instance = alicloud.ddos.DdosBgpInstance("instance",
///     name=name,
///     base_bandwidth=20,
///     bandwidth=-1,
///     ip_count=100,
///     ip_type="IPv4",
///     normal_bandwidth=100,
///     type="Enterprise")
/// instance = alicloud.ddos.get_ddos_bgp_instances(name_regex="ddosbgp")
/// pulumi.export("instance", [__item.id for __item in [instance]])
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
///     var name = config.Get("name") ?? "tf-example";
///     var instanceDdosBgpInstance = new AliCloud.Ddos.DdosBgpInstance("instance", new()
///     {
///         Name = name,
///         BaseBandwidth = 20,
///         Bandwidth = -1,
///         IpCount = 100,
///         IpType = "IPv4",
///         NormalBandwidth = 100,
///         Type = "Enterprise",
///     });
///
///     var instance = AliCloud.Ddos.GetDdosBgpInstances.Invoke(new()
///     {
///         NameRegex = "ddosbgp",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["instance"] = new[]
///         {
///             instance,
///         }.Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _, err := ddos.NewDdosBgpInstance(ctx, "instance", &ddos.DdosBgpInstanceArgs{
/// Name: pulumi.String(name),
/// BaseBandwidth: pulumi.Int(20),
/// Bandwidth: pulumi.Int(-1),
/// IpCount: pulumi.Int(100),
/// IpType: pulumi.String("IPv4"),
/// NormalBandwidth: pulumi.Int(100),
/// Type: pulumi.String("Enterprise"),
/// })
/// if err != nil {
/// return err
/// }
/// instance, err := ddos.GetDdosBgpInstances(ctx, &ddos.GetDdosBgpInstancesArgs{
/// NameRegex: pulumi.StringRef("ddosbgp"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("instance", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:21,11-25)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ddos.DdosBgpInstance;
/// import com.pulumi.alicloud.ddos.DdosBgpInstanceArgs;
/// import com.pulumi.alicloud.ddos.DdosFunctions;
/// import com.pulumi.alicloud.ddos.inputs.GetDdosBgpInstancesArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var instanceDdosBgpInstance = new DdosBgpInstance("instanceDdosBgpInstance", DdosBgpInstanceArgs.builder()
///             .name(name)
///             .baseBandwidth(20)
///             .bandwidth(-1)
///             .ipCount(100)
///             .ipType("IPv4")
///             .normalBandwidth(100)
///             .type("Enterprise")
///             .build());
///
///         final var instance = DdosFunctions.getDdosBgpInstances(GetDdosBgpInstancesArgs.builder()
///             .nameRegex("ddosbgp")
///             .build());
///
///         ctx.export("instance", instance.stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ddos_get_ddos_bgp_instances_get_ddos_bgp_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDdosBgpInstancesResult> getDdosBgpInstances(
  GetDdosBgpInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ddos/getDdosBgpInstances:getDdosBgpInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDdosBgpInstancesResult.fromMap(result);
}

/// This data source provides the Ddos Bgp Ips of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.180.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ddos.getDdosBgpIps({
///     instanceId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const ddosbgpIpId1 = ids.then(ids => ids.ips?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ddos.get_ddos_bgp_ips(instance_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("ddosbgpIpId1", ids.ips[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ddos.GetDdosBgpIps.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ddosbgpIpId1"] = ids.Apply(getDdosBgpIpsResult => getDdosBgpIpsResult.Ips[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ddos.GetDdosBgpIps(ctx, &ddos.GetDdosBgpIpsArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ddosbgpIpId1", ids.Ips[0].Id)
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
/// import com.pulumi.alicloud.ddos.DdosFunctions;
/// import com.pulumi.alicloud.ddos.inputs.GetDdosBgpIpsArgs;
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
///         final var ids = DdosFunctions.getDdosBgpIps(GetDdosBgpIpsArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("ddosbgpIpId1", ids.ips()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ddos:getDdosBgpIps
///       arguments:
///         instanceId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   ddosbgpIpId1: ${ids.ips[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ddos_get_ddos_bgp_ips_get_ddos_bgp_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDdosBgpIpsResult> getDdosBgpIps(
  GetDdosBgpIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ddos/getDdosBgpIps:getDdosBgpIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDdosBgpIpsResult.fromMap(result);
}

/// This data source provides the Ddoscoo Domain Resources of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.123.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ddos.getDdosCooDomainResources({
///     ids: ["tftestacc1234.abc"],
/// });
/// export const firstDdoscooDomainResourceId = example.then(example => example.resources?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ddos.get_ddos_coo_domain_resources(ids=["tftestacc1234.abc"])
/// pulumi.export("firstDdoscooDomainResourceId", example.resources[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ddos.GetDdosCooDomainResources.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "tftestacc1234.abc",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDdoscooDomainResourceId"] = example.Apply(getDdosCooDomainResourcesResult => getDdosCooDomainResourcesResult.Resources[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ddos.GetDdosCooDomainResources(ctx, &ddos.GetDdosCooDomainResourcesArgs{
/// 			Ids: []string{
/// 				"tftestacc1234.abc",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDdoscooDomainResourceId", example.Resources[0].Id)
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
/// import com.pulumi.alicloud.ddos.DdosFunctions;
/// import com.pulumi.alicloud.ddos.inputs.GetDdosCooDomainResourcesArgs;
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
///         final var example = DdosFunctions.getDdosCooDomainResources(GetDdosCooDomainResourcesArgs.builder()
///             .ids("tftestacc1234.abc")
///             .build());
///
///         ctx.export("firstDdoscooDomainResourceId", example.resources()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ddos:getDdosCooDomainResources
///       arguments:
///         ids:
///           - tftestacc1234.abc
/// outputs:
///   firstDdoscooDomainResourceId: ${example.resources[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ddos_get_ddos_coo_domain_resources_get_ddos_coo_domain_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDdosCooDomainResourcesResult> getDdosCooDomainResources(
  GetDdosCooDomainResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ddos/getDdosCooDomainResources:getDdosCooDomainResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDdosCooDomainResourcesResult.fromMap(result);
}

/// This data source provides the BGP-Line Anti-DDoS Pro(DdosCoo) instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.39.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ddos.getDdosCooInstances({
///     nameRegex: "tf",
/// });
/// export const instance = _default.then(_default => _default.instances.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ddos.get_ddos_coo_instances(name_regex="tf")
/// pulumi.export("instance", [__item.id for __item in default.instances])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ddos.GetDdosCooInstances.Invoke(new()
///     {
///         NameRegex = "tf",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["instance"] = @default.Apply(@default => @default.Apply(getDdosCooInstancesResult => getDdosCooInstancesResult.Instances).Select(__item => __item.Id).ToList()),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := ddos.GetDdosCooInstances(ctx, &ddos.GetDdosCooInstancesArgs{
/// NameRegex: pulumi.StringRef("tf"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("instance", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:6,11-34)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ddos.DdosFunctions;
/// import com.pulumi.alicloud.ddos.inputs.GetDdosCooInstancesArgs;
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
///         final var default = DdosFunctions.getDdosCooInstances(GetDdosCooInstancesArgs.builder()
///             .nameRegex("tf")
///             .build());
///
///         ctx.export("instance", default_.instances().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ddos_get_ddos_coo_instances_get_ddos_coo_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDdosCooInstancesResult> getDdosCooInstances(
  GetDdosCooInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ddos/getDdosCooInstances:getDdosCooInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDdosCooInstancesResult.fromMap(result);
}

/// This data source provides the Ddoscoo Ports of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.123.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ddos.getDdosCooPorts({
///     instanceId: "ddoscoo-cn-6ja1rl4j****",
///     ids: ["ddoscoo-cn-6ja1rl4j****:7001:tcp"],
/// });
/// export const firstDdoscooPortId = example.then(example => example.ports?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ddos.get_ddos_coo_ports(instance_id="ddoscoo-cn-6ja1rl4j****",
///     ids=["ddoscoo-cn-6ja1rl4j****:7001:tcp"])
/// pulumi.export("firstDdoscooPortId", example.ports[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ddos.GetDdosCooPorts.Invoke(new()
///     {
///         InstanceId = "ddoscoo-cn-6ja1rl4j****",
///         Ids = new[]
///         {
///             "ddoscoo-cn-6ja1rl4j****:7001:tcp",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDdoscooPortId"] = example.Apply(getDdosCooPortsResult => getDdosCooPortsResult.Ports[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ddos.GetDdosCooPorts(ctx, &ddos.GetDdosCooPortsArgs{
/// 			InstanceId: "ddoscoo-cn-6ja1rl4j****",
/// 			Ids: []string{
/// 				"ddoscoo-cn-6ja1rl4j****:7001:tcp",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDdoscooPortId", example.Ports[0].Id)
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
/// import com.pulumi.alicloud.ddos.DdosFunctions;
/// import com.pulumi.alicloud.ddos.inputs.GetDdosCooPortsArgs;
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
///         final var example = DdosFunctions.getDdosCooPorts(GetDdosCooPortsArgs.builder()
///             .instanceId("ddoscoo-cn-6ja1rl4j****")
///             .ids("ddoscoo-cn-6ja1rl4j****:7001:tcp")
///             .build());
///
///         ctx.export("firstDdoscooPortId", example.ports()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ddos:getDdosCooPorts
///       arguments:
///         instanceId: ddoscoo-cn-6ja1rl4j****
///         ids:
///           - ddoscoo-cn-6ja1rl4j****:7001:tcp
/// outputs:
///   firstDdoscooPortId: ${example.ports[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ddos_get_ddos_coo_ports_get_ddos_coo_ports_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDdosCooPortsResult> getDdosCooPorts(
  GetDdosCooPortsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ddos/getDdosCooPorts:getDdosCooPorts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDdosCooPortsResult.fromMap(result);
}
