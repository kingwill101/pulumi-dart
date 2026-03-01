import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_strategies_args.dart';
import 'get_access_strategies_result.dart';
import 'get_address_pools_args.dart';
import 'get_address_pools_result.dart';
import 'get_alidns_domain_groups_args.dart';
import 'get_alidns_domain_groups_result.dart';
import 'get_alidns_domains_args.dart';
import 'get_alidns_domains_result.dart';
import 'get_alidns_instances_args.dart';
import 'get_alidns_instances_result.dart';
import 'get_alidns_records_args.dart';
import 'get_alidns_records_result.dart';
import 'get_custom_lines_args.dart';
import 'get_custom_lines_result.dart';
import 'get_domain_groups_args.dart';
import 'get_domain_groups_result.dart';
import 'get_domain_records_args.dart';
import 'get_domain_records_result.dart';
import 'get_domain_txt_guid_args.dart';
import 'get_domain_txt_guid_result.dart';
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_gtm_instances_args.dart';
import 'get_gtm_instances_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_records_args.dart';
import 'get_records_result.dart';
import 'get_resolution_lines_args.dart';
import 'get_resolution_lines_result.dart';

/// This data source provides the Alidns Access Strategies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.152.0+.
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
/// const ids = alicloud.dns.getAccessStrategies({
///     instanceId: "example_value",
///     strategyMode: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
///     nameRegex: "the_resource_name",
/// });
/// export const alidnsAccessStrategyId1 = ids.then(ids => ids.strategies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dns.get_access_strategies(instance_id="example_value",
///     strategy_mode="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ],
///     name_regex="the_resource_name")
/// pulumi.export("alidnsAccessStrategyId1", ids.strategies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dns.GetAccessStrategies.Invoke(new()
///     {
///         InstanceId = "example_value",
///         StrategyMode = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alidnsAccessStrategyId1"] = ids.Apply(getAccessStrategiesResult => getAccessStrategiesResult.Strategies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dns.GetAccessStrategies(ctx, &dns.GetAccessStrategiesArgs{
/// 			InstanceId:   "example_value",
/// 			StrategyMode: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alidnsAccessStrategyId1", ids.Strategies[0].Id)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetAccessStrategiesArgs;
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
///         final var ids = DnsFunctions.getAccessStrategies(GetAccessStrategiesArgs.builder()
///             .instanceId("example_value")
///             .strategyMode("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("alidnsAccessStrategyId1", ids.strategies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dns:getAccessStrategies
///       arguments:
///         instanceId: example_value
///         strategyMode: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///         nameRegex: the_resource_name
/// outputs:
///   alidnsAccessStrategyId1: ${ids.strategies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_access_strategies_get_access_strategies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessStrategiesResult> getAccessStrategies(
  GetAccessStrategiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getAccessStrategies:getAccessStrategies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessStrategiesResult.fromMap(result);
}

/// This data source provides the Alidns Address Pools of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.152.0+.
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
/// const ids = alicloud.dns.getAddressPools({
///     instanceId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const alidnsAddressPoolId1 = ids.then(ids => ids.pools?.[0]?.id);
/// const nameRegex = alicloud.dns.getAddressPools({
///     instanceId: "example_value",
///     nameRegex: "^my-AddressPool",
/// });
/// export const alidnsAddressPoolId2 = nameRegex.then(nameRegex => nameRegex.pools?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dns.get_address_pools(instance_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("alidnsAddressPoolId1", ids.pools[0].id)
/// name_regex = alicloud.dns.get_address_pools(instance_id="example_value",
///     name_regex="^my-AddressPool")
/// pulumi.export("alidnsAddressPoolId2", name_regex.pools[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dns.GetAddressPools.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Dns.GetAddressPools.Invoke(new()
///     {
///         InstanceId = "example_value",
///         NameRegex = "^my-AddressPool",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alidnsAddressPoolId1"] = ids.Apply(getAddressPoolsResult => getAddressPoolsResult.Pools[0]?.Id),
///         ["alidnsAddressPoolId2"] = nameRegex.Apply(getAddressPoolsResult => getAddressPoolsResult.Pools[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dns.GetAddressPools(ctx, &dns.GetAddressPoolsArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alidnsAddressPoolId1", ids.Pools[0].Id)
/// 		nameRegex, err := dns.GetAddressPools(ctx, &dns.GetAddressPoolsArgs{
/// 			InstanceId: "example_value",
/// 			NameRegex:  pulumi.StringRef("^my-AddressPool"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alidnsAddressPoolId2", nameRegex.Pools[0].Id)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetAddressPoolsArgs;
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
///         final var ids = DnsFunctions.getAddressPools(GetAddressPoolsArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("alidnsAddressPoolId1", ids.pools()[0].id());
///         final var nameRegex = DnsFunctions.getAddressPools(GetAddressPoolsArgs.builder()
///             .instanceId("example_value")
///             .nameRegex("^my-AddressPool")
///             .build());
///
///         ctx.export("alidnsAddressPoolId2", nameRegex.pools()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dns:getAddressPools
///       arguments:
///         instanceId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:dns:getAddressPools
///       arguments:
///         instanceId: example_value
///         nameRegex: ^my-AddressPool
/// outputs:
///   alidnsAddressPoolId1: ${ids.pools[0].id}
///   alidnsAddressPoolId2: ${nameRegex.pools[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_address_pools_get_address_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressPoolsResult> getAddressPools(
  GetAddressPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getAddressPools:getAddressPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressPoolsResult.fromMap(result);
}

/// This data source provides a list of Alidns Domain Groups in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:**  Available in 1.85.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.dns.getAlidnsDomainGroups({
///     ids: ["c5ef2bc43064445787adf182af2****"],
/// });
/// export const firstDomainGroupId = example.then(example => example.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.dns.get_alidns_domain_groups(ids=["c5ef2bc43064445787adf182af2****"])
/// pulumi.export("firstDomainGroupId", example.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Dns.GetAlidnsDomainGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "c5ef2bc43064445787adf182af2****",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDomainGroupId"] = example.Apply(getAlidnsDomainGroupsResult => getAlidnsDomainGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.GetAlidnsDomainGroups(ctx, &dns.GetAlidnsDomainGroupsArgs{
/// 			Ids: []string{
/// 				"c5ef2bc43064445787adf182af2****",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDomainGroupId", example.Groups[0].Id)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetAlidnsDomainGroupsArgs;
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
///         final var example = DnsFunctions.getAlidnsDomainGroups(GetAlidnsDomainGroupsArgs.builder()
///             .ids("c5ef2bc43064445787adf182af2****")
///             .build());
///
///         ctx.export("firstDomainGroupId", example.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:dns:getAlidnsDomainGroups
///       arguments:
///         ids:
///           - c5ef2bc43064445787adf182af2****
/// outputs:
///   firstDomainGroupId: ${example.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_alidns_domain_groups_get_alidns_domain_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlidnsDomainGroupsResult> getAlidnsDomainGroups(
  GetAlidnsDomainGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getAlidnsDomainGroups:getAlidnsDomainGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlidnsDomainGroupsResult.fromMap(result);
}

/// This data source provides a list of Alidns Domains in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.95.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const domainsDs = alicloud.dns.getAlidnsDomains({
///     domainNameRegex: "^hegu",
///     outputFile: "domains.txt",
/// });
/// export const firstDomainId = domainsDs.then(domainsDs => domainsDs.domains?.[0]?.domainId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// domains_ds = alicloud.dns.get_alidns_domains(domain_name_regex="^hegu",
///     output_file="domains.txt")
/// pulumi.export("firstDomainId", domains_ds.domains[0].domain_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domainsDs = AliCloud.Dns.GetAlidnsDomains.Invoke(new()
///     {
///         DomainNameRegex = "^hegu",
///         OutputFile = "domains.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDomainId"] = domainsDs.Apply(getAlidnsDomainsResult => getAlidnsDomainsResult.Domains[0]?.DomainId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		domainsDs, err := dns.GetAlidnsDomains(ctx, &dns.GetAlidnsDomainsArgs{
/// 			DomainNameRegex: pulumi.StringRef("^hegu"),
/// 			OutputFile:      pulumi.StringRef("domains.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDomainId", domainsDs.Domains[0].DomainId)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetAlidnsDomainsArgs;
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
///         final var domainsDs = DnsFunctions.getAlidnsDomains(GetAlidnsDomainsArgs.builder()
///             .domainNameRegex("^hegu")
///             .outputFile("domains.txt")
///             .build());
///
///         ctx.export("firstDomainId", domainsDs.domains()[0].domainId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   domainsDs:
///     fn::invoke:
///       function: alicloud:dns:getAlidnsDomains
///       arguments:
///         domainNameRegex: ^hegu
///         outputFile: domains.txt
/// outputs:
///   firstDomainId: ${domainsDs.domains[0].domainId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_alidns_domains_get_alidns_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlidnsDomainsResult> getAlidnsDomains(
  GetAlidnsDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getAlidnsDomains:getAlidnsDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlidnsDomainsResult.fromMap(result);
}

/// This data source provides a list of Alidns instances in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:**  Available in 1.95.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.dns.getAlidnsInstances({
///     ids: ["dns-cn-oew1npk****"],
/// });
/// export const firstInstanceId = example.then(example => example.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.dns.get_alidns_instances(ids=["dns-cn-oew1npk****"])
/// pulumi.export("firstInstanceId", example.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Dns.GetAlidnsInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "dns-cn-oew1npk****",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceId"] = example.Apply(getAlidnsInstancesResult => getAlidnsInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.GetAlidnsInstances(ctx, &dns.GetAlidnsInstancesArgs{
/// 			Ids: []string{
/// 				"dns-cn-oew1npk****",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceId", example.Instances[0].Id)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetAlidnsInstancesArgs;
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
///         final var example = DnsFunctions.getAlidnsInstances(GetAlidnsInstancesArgs.builder()
///             .ids("dns-cn-oew1npk****")
///             .build());
///
///         ctx.export("firstInstanceId", example.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:dns:getAlidnsInstances
///       arguments:
///         ids:
///           - dns-cn-oew1npk****
/// outputs:
///   firstInstanceId: ${example.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_alidns_instances_get_alidns_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlidnsInstancesResult> getAlidnsInstances(
  GetAlidnsInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getAlidnsInstances:getAlidnsInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlidnsInstancesResult.fromMap(result);
}

/// This data source provides a list of Alidns Domain Records in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.86.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const recordsDs = alicloud.dns.getAlidnsRecords({
///     domainName: "xiaozhu.top",
///     ids: ["1978593525779****"],
///     type: "A",
///     outputFile: "records.txt",
/// });
/// export const firstRecordId = recordsDs.then(recordsDs => recordsDs.records?.[0]?.recordId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// records_ds = alicloud.dns.get_alidns_records(domain_name="xiaozhu.top",
///     ids=["1978593525779****"],
///     type="A",
///     output_file="records.txt")
/// pulumi.export("firstRecordId", records_ds.records[0].record_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordsDs = AliCloud.Dns.GetAlidnsRecords.Invoke(new()
///     {
///         DomainName = "xiaozhu.top",
///         Ids = new[]
///         {
///             "1978593525779****",
///         },
///         Type = "A",
///         OutputFile = "records.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRecordId"] = recordsDs.Apply(getAlidnsRecordsResult => getAlidnsRecordsResult.Records[0]?.RecordId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		recordsDs, err := dns.GetAlidnsRecords(ctx, &dns.GetAlidnsRecordsArgs{
/// 			DomainName: "xiaozhu.top",
/// 			Ids: []string{
/// 				"1978593525779****",
/// 			},
/// 			Type:       pulumi.StringRef("A"),
/// 			OutputFile: pulumi.StringRef("records.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRecordId", recordsDs.Records[0].RecordId)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetAlidnsRecordsArgs;
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
///         final var recordsDs = DnsFunctions.getAlidnsRecords(GetAlidnsRecordsArgs.builder()
///             .domainName("xiaozhu.top")
///             .ids("1978593525779****")
///             .type("A")
///             .outputFile("records.txt")
///             .build());
///
///         ctx.export("firstRecordId", recordsDs.records()[0].recordId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   recordsDs:
///     fn::invoke:
///       function: alicloud:dns:getAlidnsRecords
///       arguments:
///         domainName: xiaozhu.top
///         ids:
///           - 1978593525779****
///         type: A
///         outputFile: records.txt
/// outputs:
///   firstRecordId: ${recordsDs.records[0].recordId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_alidns_records_get_alidns_records_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlidnsRecordsResult> getAlidnsRecords(
  GetAlidnsRecordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getAlidnsRecords:getAlidnsRecords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlidnsRecordsResult.fromMap(result);
}

/// This data source provides the Alidns Custom Lines of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.151.0+.
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
/// const ids = alicloud.dns.getCustomLines({
///     enableDetails: true,
///     domainName: "your_domain_name",
/// });
/// export const alidnsCustomLineId1 = ids.then(ids => ids.lines?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dns.get_custom_lines(enable_details=True,
///     domain_name="your_domain_name")
/// pulumi.export("alidnsCustomLineId1", ids.lines[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dns.GetCustomLines.Invoke(new()
///     {
///         EnableDetails = true,
///         DomainName = "your_domain_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alidnsCustomLineId1"] = ids.Apply(getCustomLinesResult => getCustomLinesResult.Lines[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dns.GetCustomLines(ctx, &dns.GetCustomLinesArgs{
/// 			EnableDetails: pulumi.BoolRef(true),
/// 			DomainName:    "your_domain_name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alidnsCustomLineId1", ids.Lines[0].Id)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetCustomLinesArgs;
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
///         final var ids = DnsFunctions.getCustomLines(GetCustomLinesArgs.builder()
///             .enableDetails(true)
///             .domainName("your_domain_name")
///             .build());
///
///         ctx.export("alidnsCustomLineId1", ids.lines()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dns:getCustomLines
///       arguments:
///         enableDetails: true
///         domainName: your_domain_name
/// outputs:
///   alidnsCustomLineId1: ${ids.lines[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_custom_lines_get_custom_lines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomLinesResult> getCustomLines(
  GetCustomLinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getCustomLines:getCustomLines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomLinesResult.fromMap(result);
}

/// > **NOTE:** This datasource has been deprecated from v1.3.2. Please use the datasource `alicloud.dns.getGroups` instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_domain_groups_get_domain_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainGroupsResult> getDomainGroups(
  GetDomainGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getDomainGroups:getDomainGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainGroupsResult.fromMap(result);
}

/// > **NOTE:** This resource has been deprecated from v1.3.2. Please use the datasource `alicloud.dns.getRecords` instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_domain_records_get_domain_records_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainRecordsResult> getDomainRecords(
  GetDomainRecordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getDomainRecords:getDomainRecords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainRecordsResult.fromMap(result);
}

/// Provides the generation of txt records to realize the retrieval and verification of domain names.
///
/// > **NOTE:** Available in v1.80.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _this = alicloud.dns.getDomainTxtGuid({
///     domainName: "test111.abc",
///     type: "ADD_SUB_DOMAIN",
/// });
/// export const rr = _this.then(_this => _this.rr);
/// export const value = _this.then(_this => _this.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.dns.get_domain_txt_guid(domain_name="test111.abc",
///     type="ADD_SUB_DOMAIN")
/// pulumi.export("rr", this.rr)
/// pulumi.export("value", this.value)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.Dns.GetDomainTxtGuid.Invoke(new()
///     {
///         DomainName = "test111.abc",
///         Type = "ADD_SUB_DOMAIN",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["rr"] = @this.Apply(@this => @this.Apply(getDomainTxtGuidResult => getDomainTxtGuidResult.Rr)),
///         ["value"] = @this.Apply(@this => @this.Apply(getDomainTxtGuidResult => getDomainTxtGuidResult.Value)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := dns.GetDomainTxtGuid(ctx, &dns.GetDomainTxtGuidArgs{
/// 			DomainName: "test111.abc",
/// 			Type:       "ADD_SUB_DOMAIN",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rr", this.Rr)
/// 		ctx.Export("value", this.Value)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetDomainTxtGuidArgs;
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
///         final var this = DnsFunctions.getDomainTxtGuid(GetDomainTxtGuidArgs.builder()
///             .domainName("test111.abc")
///             .type("ADD_SUB_DOMAIN")
///             .build());
///
///         ctx.export("rr", this_.rr());
///         ctx.export("value", this_.value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:dns:getDomainTxtGuid
///       arguments:
///         domainName: test111.abc
///         type: ADD_SUB_DOMAIN
/// outputs:
///   rr: ${this.rr}
///   value: ${this.value}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_domain_txt_guid_get_domain_txt_guid_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainTxtGuidResult> getDomainTxtGuid(
  GetDomainTxtGuidArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getDomainTxtGuid:getDomainTxtGuid',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainTxtGuidResult.fromMap(result);
}

/// > **DEPRECATED:**  This resource has been renamed to alicloud.dns.getAlidnsDomains from version 1.95.0.
///
/// This data source provides a list of DNS Domains in an Alibaba Cloud account according to the specified filters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const domainsDs = alicloud.dns.getDomains({
///     domainNameRegex: "^hegu",
///     outputFile: "domains.txt",
/// });
/// export const firstDomainId = domainsDs.then(domainsDs => domainsDs.domains?.[0]?.domainId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// domains_ds = alicloud.dns.get_domains(domain_name_regex="^hegu",
///     output_file="domains.txt")
/// pulumi.export("firstDomainId", domains_ds.domains[0].domain_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domainsDs = AliCloud.Dns.GetDomains.Invoke(new()
///     {
///         DomainNameRegex = "^hegu",
///         OutputFile = "domains.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDomainId"] = domainsDs.Apply(getDomainsResult => getDomainsResult.Domains[0]?.DomainId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		domainsDs, err := dns.GetDomains(ctx, &dns.GetDomainsArgs{
/// 			DomainNameRegex: pulumi.StringRef("^hegu"),
/// 			OutputFile:      pulumi.StringRef("domains.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDomainId", domainsDs.Domains[0].DomainId)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetDomainsArgs;
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
///         final var domainsDs = DnsFunctions.getDomains(GetDomainsArgs.builder()
///             .domainNameRegex("^hegu")
///             .outputFile("domains.txt")
///             .build());
///
///         ctx.export("firstDomainId", domainsDs.domains()[0].domainId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   domainsDs:
///     fn::invoke:
///       function: alicloud:dns:getDomains
///       arguments:
///         domainNameRegex: ^hegu
///         outputFile: domains.txt
/// outputs:
///   firstDomainId: ${domainsDs.domains[0].domainId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// This data source provides a list of DNS Domain Groups in an Alibaba Cloud account according to the specified filters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const groupsDs = alicloud.dns.getGroups({
///     nameRegex: "^y[A-Za-z]+",
///     outputFile: "groups.txt",
/// });
/// export const firstGroupName = groupsDs.then(groupsDs => groupsDs.groups?.[0]?.groupName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// groups_ds = alicloud.dns.get_groups(name_regex="^y[A-Za-z]+",
///     output_file="groups.txt")
/// pulumi.export("firstGroupName", groups_ds.groups[0].group_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groupsDs = AliCloud.Dns.GetGroups.Invoke(new()
///     {
///         NameRegex = "^y[A-Za-z]+",
///         OutputFile = "groups.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGroupName"] = groupsDs.Apply(getGroupsResult => getGroupsResult.Groups[0]?.GroupName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		groupsDs, err := dns.GetGroups(ctx, &dns.GetGroupsArgs{
/// 			NameRegex:  pulumi.StringRef("^y[A-Za-z]+"),
/// 			OutputFile: pulumi.StringRef("groups.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGroupName", groupsDs.Groups[0].GroupName)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetGroupsArgs;
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
///         final var groupsDs = DnsFunctions.getGroups(GetGroupsArgs.builder()
///             .nameRegex("^y[A-Za-z]+")
///             .outputFile("groups.txt")
///             .build());
///
///         ctx.export("firstGroupName", groupsDs.groups()[0].groupName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   groupsDs:
///     fn::invoke:
///       function: alicloud:dns:getGroups
///       arguments:
///         nameRegex: ^y[A-Za-z]+
///         outputFile: groups.txt
/// outputs:
///   firstGroupName: ${groupsDs.groups[0].groupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

/// This data source provides the Alidns Gtm Instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.151.0+.
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
/// const ids = alicloud.dns.getGtmInstances({});
/// export const alidnsGtmInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dns.get_gtm_instances()
/// pulumi.export("alidnsGtmInstanceId1", ids.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dns.GetGtmInstances.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alidnsGtmInstanceId1"] = ids.Apply(getGtmInstancesResult => getGtmInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dns.GetGtmInstances(ctx, &dns.GetGtmInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alidnsGtmInstanceId1", ids.Instances[0].Id)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetGtmInstancesArgs;
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
///         final var ids = DnsFunctions.getGtmInstances(GetGtmInstancesArgs.builder()
///             .build());
///
///         ctx.export("alidnsGtmInstanceId1", ids.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dns:getGtmInstances
///       arguments: {}
/// outputs:
///   alidnsGtmInstanceId1: ${ids.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_gtm_instances_get_gtm_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGtmInstancesResult> getGtmInstances(
  GetGtmInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getGtmInstances:getGtmInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGtmInstancesResult.fromMap(result);
}

/// > **DEPRECATED:**  This resource has been renamed to alicloud.dns.getAlidnsInstances from version 1.95.0.
///
/// This data source provides a list of DNS instances in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:**  Available in 1.84.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.dns.getInstances({
///     ids: ["dns-cn-oew1npk****"],
/// });
/// export const firstInstanceId = example.then(example => example.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.dns.get_instances(ids=["dns-cn-oew1npk****"])
/// pulumi.export("firstInstanceId", example.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Dns.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "dns-cn-oew1npk****",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceId"] = example.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dns.GetInstances(ctx, &dns.GetInstancesArgs{
/// 			Ids: []string{
/// 				"dns-cn-oew1npk****",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceId", example.Instances[0].Id)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetInstancesArgs;
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
///         final var example = DnsFunctions.getInstances(GetInstancesArgs.builder()
///             .ids("dns-cn-oew1npk****")
///             .build());
///
///         ctx.export("firstInstanceId", example.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:dns:getInstances
///       arguments:
///         ids:
///           - dns-cn-oew1npk****
/// outputs:
///   firstInstanceId: ${example.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides a list of DNS Domain Records in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.0.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const recordsDs = alicloud.dns.getRecords({
///     domainName: "xiaozhu.top",
///     isLocked: false,
///     type: "A",
///     hostRecordRegex: "^@",
///     outputFile: "records.txt",
/// });
/// export const firstRecordId = recordsDs.then(recordsDs => recordsDs.records?.[0]?.recordId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// records_ds = alicloud.dns.get_records(domain_name="xiaozhu.top",
///     is_locked=False,
///     type="A",
///     host_record_regex="^@",
///     output_file="records.txt")
/// pulumi.export("firstRecordId", records_ds.records[0].record_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordsDs = AliCloud.Dns.GetRecords.Invoke(new()
///     {
///         DomainName = "xiaozhu.top",
///         IsLocked = false,
///         Type = "A",
///         HostRecordRegex = "^@",
///         OutputFile = "records.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRecordId"] = recordsDs.Apply(getRecordsResult => getRecordsResult.Records[0]?.RecordId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		recordsDs, err := dns.GetRecords(ctx, &dns.GetRecordsArgs{
/// 			DomainName:      "xiaozhu.top",
/// 			IsLocked:        pulumi.BoolRef(false),
/// 			Type:            pulumi.StringRef("A"),
/// 			HostRecordRegex: pulumi.StringRef("^@"),
/// 			OutputFile:      pulumi.StringRef("records.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRecordId", recordsDs.Records[0].RecordId)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetRecordsArgs;
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
///         final var recordsDs = DnsFunctions.getRecords(GetRecordsArgs.builder()
///             .domainName("xiaozhu.top")
///             .isLocked(false)
///             .type("A")
///             .hostRecordRegex("^@")
///             .outputFile("records.txt")
///             .build());
///
///         ctx.export("firstRecordId", recordsDs.records()[0].recordId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   recordsDs:
///     fn::invoke:
///       function: alicloud:dns:getRecords
///       arguments:
///         domainName: xiaozhu.top
///         isLocked: false
///         type: A
///         hostRecordRegex: ^@
///         outputFile: records.txt
/// outputs:
///   firstRecordId: ${recordsDs.records[0].recordId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_records_get_records_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecordsResult> getRecords(
  GetRecordsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getRecords:getRecords',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecordsResult.fromMap(result);
}

/// This data source provides a list of DNS Resolution Lines in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in 1.60.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resolutionLinesDs = alicloud.dns.getResolutionLines({
///     lineCodes: ["cn_unicom_shanxi"],
///     outputFile: "support_lines.txt",
/// });
/// export const firstLineCode = resolutionLinesDs.then(resolutionLinesDs => resolutionLinesDs.lines?.[0]?.lineCode);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resolution_lines_ds = alicloud.dns.get_resolution_lines(line_codes=["cn_unicom_shanxi"],
///     output_file="support_lines.txt")
/// pulumi.export("firstLineCode", resolution_lines_ds.lines[0].line_code)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resolutionLinesDs = AliCloud.Dns.GetResolutionLines.Invoke(new()
///     {
///         LineCodes = new[]
///         {
///             "cn_unicom_shanxi",
///         },
///         OutputFile = "support_lines.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstLineCode"] = resolutionLinesDs.Apply(getResolutionLinesResult => getResolutionLinesResult.Lines[0]?.LineCode),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resolutionLinesDs, err := dns.GetResolutionLines(ctx, &dns.GetResolutionLinesArgs{
/// 			LineCodes: []string{
/// 				"cn_unicom_shanxi",
/// 			},
/// 			OutputFile: pulumi.StringRef("support_lines.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstLineCode", resolutionLinesDs.Lines[0].LineCode)
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
/// import com.pulumi.alicloud.dns.DnsFunctions;
/// import com.pulumi.alicloud.dns.inputs.GetResolutionLinesArgs;
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
///         final var resolutionLinesDs = DnsFunctions.getResolutionLines(GetResolutionLinesArgs.builder()
///             .lineCodes("cn_unicom_shanxi")
///             .outputFile("support_lines.txt")
///             .build());
///
///         ctx.export("firstLineCode", resolutionLinesDs.lines()[0].lineCode());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resolutionLinesDs:
///     fn::invoke:
///       function: alicloud:dns:getResolutionLines
///       arguments:
///         lineCodes:
///           - cn_unicom_shanxi
///         outputFile: support_lines.txt
/// outputs:
///   firstLineCode: ${resolutionLinesDs.lines[0].lineCode}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_get_resolution_lines_get_resolution_lines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResolutionLinesResult> getResolutionLines(
  GetResolutionLinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dns/getResolutionLines:getResolutionLines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResolutionLinesResult.fromMap(result);
}
