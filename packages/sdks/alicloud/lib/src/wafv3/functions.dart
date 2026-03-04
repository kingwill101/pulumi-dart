import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';

/// This data source provides the Wafv3 Domains of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.200.0.
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
/// const _default = alicloud.wafv3.getInstances({});
/// const ids = _default.then(_default => alicloud.wafv3.getDomains({
///     instanceId: _default.ids?.[0],
///     ids: ["example_id"],
/// }));
/// export const wafv3DomainsId1 = ids.then(ids => ids.domains?.[0]?.id);
/// const defaultGetDomains = _default.then(_default => alicloud.wafv3.getDomains({
///     instanceId: _default.ids?.[0],
///     domain: "zctest12.wafqax.top",
/// }));
/// export const wafv3DomainsId2 = defaultGetDomains.then(defaultGetDomains => defaultGetDomains.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.wafv3.get_instances()
/// ids = alicloud.wafv3.get_domains(instance_id=default.ids[0],
///     ids=["example_id"])
/// pulumi.export("wafv3DomainsId1", ids.domains[0].id)
/// default_get_domains = alicloud.wafv3.get_domains(instance_id=default.ids[0],
///     domain="zctest12.wafqax.top")
/// pulumi.export("wafv3DomainsId2", default_get_domains.domains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Wafv3.GetInstances.Invoke();
///
///     var ids = AliCloud.Wafv3.GetDomains.Invoke(new()
///     {
///         InstanceId = @default.Apply(getInstancesResult => getInstancesResult.Ids[0]),
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var defaultGetDomains = AliCloud.Wafv3.GetDomains.Invoke(new()
///     {
///         InstanceId = @default.Apply(getInstancesResult => getInstancesResult.Ids[0]),
///         Domain = "zctest12.wafqax.top",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["wafv3DomainsId1"] = ids.Apply(getDomainsResult => getDomainsResult.Domains[0]?.Id),
///         ["wafv3DomainsId2"] = defaultGetDomains.Apply(getDomainsResult => getDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/wafv3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := wafv3.GetInstances(ctx, &wafv3.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := wafv3.GetDomains(ctx, &wafv3.GetDomainsArgs{
/// 			InstanceId: _default.Ids[0],
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("wafv3DomainsId1", ids.Domains[0].Id)
/// 		defaultGetDomains, err := wafv3.GetDomains(ctx, &wafv3.GetDomainsArgs{
/// 			InstanceId: _default.Ids[0],
/// 			Domain:     pulumi.StringRef("zctest12.wafqax.top"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("wafv3DomainsId2", defaultGetDomains.Domains[0].Id)
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
/// import com.pulumi.alicloud.wafv3.Wafv3Functions;
/// import com.pulumi.alicloud.wafv3.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.wafv3.inputs.GetDomainsArgs;
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
///         final var default = Wafv3Functions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var ids = Wafv3Functions.getDomains(GetDomainsArgs.builder()
///             .instanceId(default_.ids()[0])
///             .ids("example_id")
///             .build());
///
///         ctx.export("wafv3DomainsId1", ids.domains()[0].id());
///         final var defaultGetDomains = Wafv3Functions.getDomains(GetDomainsArgs.builder()
///             .instanceId(default_.ids()[0])
///             .domain("zctest12.wafqax.top")
///             .build());
///
///         ctx.export("wafv3DomainsId2", defaultGetDomains.domains()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:wafv3:getInstances
///       arguments: {}
///   ids:
///     fn::invoke:
///       function: alicloud:wafv3:getDomains
///       arguments:
///         instanceId: ${default.ids[0]}
///         ids:
///           - example_id
///   defaultGetDomains:
///     fn::invoke:
///       function: alicloud:wafv3:getDomains
///       arguments:
///         instanceId: ${default.ids[0]}
///         domain: zctest12.wafqax.top
/// outputs:
///   wafv3DomainsId1: ${ids.domains[0].id}
///   wafv3DomainsId2: ${defaultGetDomains.domains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafv3_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:wafv3/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// This data source provides Wafv3 Instance available to the user.[What is Instance](https://www.alibabacloud.com/help/en/web-application-firewall/latest/what-is-waf)
///
/// &gt; **NOTE:** Available since v1.200.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.wafv3.getInstances({});
/// export const alicloudWafv3InstanceExampleId = _default.then(_default => _default.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.wafv3.get_instances()
/// pulumi.export("alicloudWafv3InstanceExampleId", default.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Wafv3.GetInstances.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudWafv3InstanceExampleId"] = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/wafv3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := wafv3.GetInstances(ctx, &wafv3.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudWafv3InstanceExampleId", _default.Instances[0].Id)
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
/// import com.pulumi.alicloud.wafv3.Wafv3Functions;
/// import com.pulumi.alicloud.wafv3.inputs.GetInstancesArgs;
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
///         final var default = Wafv3Functions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         ctx.export("alicloudWafv3InstanceExampleId", default_.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:wafv3:getInstances
///       arguments: {}
/// outputs:
///   alicloudWafv3InstanceExampleId: ${default.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafv3_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:wafv3/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}
