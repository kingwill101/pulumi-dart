import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_accounts_args.dart';
import 'get_dedicated_host_accounts_result.dart';
import 'get_dedicated_host_groups_args.dart';
import 'get_dedicated_host_groups_result.dart';
import 'get_dedicated_hosts_args.dart';
import 'get_dedicated_hosts_result.dart';
import 'get_host_ecs_level_infos_args.dart';
import 'get_host_ecs_level_infos_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Cddc Dedicated Host Accounts of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.148.0+.
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
/// const ids = alicloud.cddc.getDedicatedHostAccounts({});
/// export const cddcDedicatedHostAccountId1 = ids.then(ids => ids.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cddc.get_dedicated_host_accounts()
/// pulumi.export("cddcDedicatedHostAccountId1", ids.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cddc.GetDedicatedHostAccounts.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["cddcDedicatedHostAccountId1"] = ids.Apply(getDedicatedHostAccountsResult => getDedicatedHostAccountsResult.Accounts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cddc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cddc.GetDedicatedHostAccounts(ctx, &cddc.GetDedicatedHostAccountsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcDedicatedHostAccountId1", ids.Accounts[0].Id)
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
/// import com.pulumi.alicloud.cddc.CddcFunctions;
/// import com.pulumi.alicloud.cddc.inputs.GetDedicatedHostAccountsArgs;
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
///         final var ids = CddcFunctions.getDedicatedHostAccounts(GetDedicatedHostAccountsArgs.builder()
///             .build());
///
///         ctx.export("cddcDedicatedHostAccountId1", ids.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cddc:getDedicatedHostAccounts
///       arguments: {}
/// outputs:
///   cddcDedicatedHostAccountId1: ${ids.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cddc_get_dedicated_host_accounts_get_dedicated_host_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostAccountsResult> getDedicatedHostAccounts(
  GetDedicatedHostAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cddc/getDedicatedHostAccounts:getDedicatedHostAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostAccountsResult.fromMap(result);
}

/// This data source provides the Cddc Dedicated Host Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.132.0+.
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
/// const _default = alicloud.cddc.getDedicatedHostGroups({
///     engine: "MongoDB",
/// });
/// export const cddcDedicatedHostGroupId = _default.then(_default => _default.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cddc.get_dedicated_host_groups(engine="MongoDB")
/// pulumi.export("cddcDedicatedHostGroupId", default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cddc.GetDedicatedHostGroups.Invoke(new()
///     {
///         Engine = "MongoDB",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cddcDedicatedHostGroupId"] = @default.Apply(@default => @default.Apply(getDedicatedHostGroupsResult => getDedicatedHostGroupsResult.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cddc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cddc.GetDedicatedHostGroups(ctx, &cddc.GetDedicatedHostGroupsArgs{
/// 			Engine: pulumi.StringRef("MongoDB"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcDedicatedHostGroupId", _default.Id)
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
/// import com.pulumi.alicloud.cddc.CddcFunctions;
/// import com.pulumi.alicloud.cddc.inputs.GetDedicatedHostGroupsArgs;
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
///         final var default = CddcFunctions.getDedicatedHostGroups(GetDedicatedHostGroupsArgs.builder()
///             .engine("MongoDB")
///             .build());
///
///         ctx.export("cddcDedicatedHostGroupId", default_.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cddc:getDedicatedHostGroups
///       arguments:
///         engine: MongoDB
/// outputs:
///   cddcDedicatedHostGroupId: ${default.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cddc_get_dedicated_host_groups_get_dedicated_host_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostGroupsResult> getDedicatedHostGroups(
  GetDedicatedHostGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cddc/getDedicatedHostGroups:getDedicatedHostGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostGroupsResult.fromMap(result);
}

/// This data source provides the Cddc Dedicated Hosts of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.147.0+.
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
/// const ids = alicloud.cddc.getDedicatedHosts({
///     dedicatedHostGroupId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cddcDedicatedHostId1 = ids.then(ids => ids.hosts?.[0]?.id);
/// const status = alicloud.cddc.getDedicatedHosts({
///     dedicatedHostGroupId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
///     status: "1",
/// });
/// export const cddcDedicatedHostId2 = status.then(status => status.hosts?.[0]?.id);
/// const zoneId = alicloud.cddc.getDedicatedHosts({
///     dedicatedHostGroupId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
///     zoneId: "example_value",
/// });
/// export const cddcDedicatedHostId3 = zoneId.then(zoneId => zoneId.hosts?.[0]?.id);
/// const allocationStatus = alicloud.cddc.getDedicatedHosts({
///     dedicatedHostGroupId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
///     allocationStatus: "Allocatable",
/// });
/// export const cddcDedicatedHostId4 = allocationStatus.then(allocationStatus => allocationStatus.hosts?.[0]?.id);
/// const hostType = alicloud.cddc.getDedicatedHosts({
///     dedicatedHostGroupId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
///     hostType: "dhg_cloud_ssd",
/// });
/// export const cddcDedicatedHostId5 = hostType.then(hostType => hostType.hosts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cddc.get_dedicated_hosts(dedicated_host_group_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cddcDedicatedHostId1", ids.hosts[0].id)
/// status = alicloud.cddc.get_dedicated_hosts(dedicated_host_group_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ],
///     status="1")
/// pulumi.export("cddcDedicatedHostId2", status.hosts[0].id)
/// zone_id = alicloud.cddc.get_dedicated_hosts(dedicated_host_group_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ],
///     zone_id="example_value")
/// pulumi.export("cddcDedicatedHostId3", zone_id.hosts[0].id)
/// allocation_status = alicloud.cddc.get_dedicated_hosts(dedicated_host_group_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ],
///     allocation_status="Allocatable")
/// pulumi.export("cddcDedicatedHostId4", allocation_status.hosts[0].id)
/// host_type = alicloud.cddc.get_dedicated_hosts(dedicated_host_group_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ],
///     host_type="dhg_cloud_ssd")
/// pulumi.export("cddcDedicatedHostId5", host_type.hosts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cddc.GetDedicatedHosts.Invoke(new()
///     {
///         DedicatedHostGroupId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var status = AliCloud.Cddc.GetDedicatedHosts.Invoke(new()
///     {
///         DedicatedHostGroupId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///         Status = "1",
///     });
///
///     var zoneId = AliCloud.Cddc.GetDedicatedHosts.Invoke(new()
///     {
///         DedicatedHostGroupId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///         ZoneId = "example_value",
///     });
///
///     var allocationStatus = AliCloud.Cddc.GetDedicatedHosts.Invoke(new()
///     {
///         DedicatedHostGroupId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///         AllocationStatus = "Allocatable",
///     });
///
///     var hostType = AliCloud.Cddc.GetDedicatedHosts.Invoke(new()
///     {
///         DedicatedHostGroupId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///         HostType = "dhg_cloud_ssd",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cddcDedicatedHostId1"] = ids.Apply(getDedicatedHostsResult => getDedicatedHostsResult.Hosts[0]?.Id),
///         ["cddcDedicatedHostId2"] = status.Apply(getDedicatedHostsResult => getDedicatedHostsResult.Hosts[0]?.Id),
///         ["cddcDedicatedHostId3"] = zoneId.Apply(getDedicatedHostsResult => getDedicatedHostsResult.Hosts[0]?.Id),
///         ["cddcDedicatedHostId4"] = allocationStatus.Apply(getDedicatedHostsResult => getDedicatedHostsResult.Hosts[0]?.Id),
///         ["cddcDedicatedHostId5"] = hostType.Apply(getDedicatedHostsResult => getDedicatedHostsResult.Hosts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cddc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cddc.GetDedicatedHosts(ctx, &cddc.GetDedicatedHostsArgs{
/// 			DedicatedHostGroupId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcDedicatedHostId1", ids.Hosts[0].Id)
/// 		status, err := cddc.GetDedicatedHosts(ctx, &cddc.GetDedicatedHostsArgs{
/// 			DedicatedHostGroupId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 			Status: pulumi.StringRef("1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcDedicatedHostId2", status.Hosts[0].Id)
/// 		zoneId, err := cddc.GetDedicatedHosts(ctx, &cddc.GetDedicatedHostsArgs{
/// 			DedicatedHostGroupId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 			ZoneId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcDedicatedHostId3", zoneId.Hosts[0].Id)
/// 		allocationStatus, err := cddc.GetDedicatedHosts(ctx, &cddc.GetDedicatedHostsArgs{
/// 			DedicatedHostGroupId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 			AllocationStatus: pulumi.StringRef("Allocatable"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcDedicatedHostId4", allocationStatus.Hosts[0].Id)
/// 		hostType, err := cddc.GetDedicatedHosts(ctx, &cddc.GetDedicatedHostsArgs{
/// 			DedicatedHostGroupId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 			HostType: pulumi.StringRef("dhg_cloud_ssd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcDedicatedHostId5", hostType.Hosts[0].Id)
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
/// import com.pulumi.alicloud.cddc.CddcFunctions;
/// import com.pulumi.alicloud.cddc.inputs.GetDedicatedHostsArgs;
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
///         final var ids = CddcFunctions.getDedicatedHosts(GetDedicatedHostsArgs.builder()
///             .dedicatedHostGroupId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cddcDedicatedHostId1", ids.hosts()[0].id());
///         final var status = CddcFunctions.getDedicatedHosts(GetDedicatedHostsArgs.builder()
///             .dedicatedHostGroupId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .status("1")
///             .build());
///
///         ctx.export("cddcDedicatedHostId2", status.hosts()[0].id());
///         final var zoneId = CddcFunctions.getDedicatedHosts(GetDedicatedHostsArgs.builder()
///             .dedicatedHostGroupId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .zoneId("example_value")
///             .build());
///
///         ctx.export("cddcDedicatedHostId3", zoneId.hosts()[0].id());
///         final var allocationStatus = CddcFunctions.getDedicatedHosts(GetDedicatedHostsArgs.builder()
///             .dedicatedHostGroupId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .allocationStatus("Allocatable")
///             .build());
///
///         ctx.export("cddcDedicatedHostId4", allocationStatus.hosts()[0].id());
///         final var hostType = CddcFunctions.getDedicatedHosts(GetDedicatedHostsArgs.builder()
///             .dedicatedHostGroupId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .hostType("dhg_cloud_ssd")
///             .build());
///
///         ctx.export("cddcDedicatedHostId5", hostType.hosts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cddc:getDedicatedHosts
///       arguments:
///         dedicatedHostGroupId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   status:
///     fn::invoke:
///       function: alicloud:cddc:getDedicatedHosts
///       arguments:
///         dedicatedHostGroupId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///         status: '1'
///   zoneId:
///     fn::invoke:
///       function: alicloud:cddc:getDedicatedHosts
///       arguments:
///         dedicatedHostGroupId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///         zoneId: example_value
///   allocationStatus:
///     fn::invoke:
///       function: alicloud:cddc:getDedicatedHosts
///       arguments:
///         dedicatedHostGroupId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///         allocationStatus: Allocatable
///   hostType:
///     fn::invoke:
///       function: alicloud:cddc:getDedicatedHosts
///       arguments:
///         dedicatedHostGroupId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///         hostType: dhg_cloud_ssd
/// outputs:
///   cddcDedicatedHostId1: ${ids.hosts[0].id}
///   cddcDedicatedHostId2: ${status.hosts[0].id}
///   cddcDedicatedHostId3: ${zoneId.hosts[0].id}
///   cddcDedicatedHostId4: ${allocationStatus.hosts[0].id}
///   cddcDedicatedHostId5: ${hostType.hosts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cddc_get_dedicated_hosts_get_dedicated_hosts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostsResult> getDedicatedHosts(
  GetDedicatedHostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cddc/getDedicatedHosts:getDedicatedHosts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostsResult.fromMap(result);
}

/// This data source provides the Cddc Host Ecs Level Infos of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.147.0+.
/// [args] Arguments passed to this invoke. {@macro pulumi_cddc_get_host_ecs_level_infos_get_host_ecs_level_infos_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostEcsLevelInfosResult> getHostEcsLevelInfos(
  GetHostEcsLevelInfosArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cddc/getHostEcsLevelInfos:getHostEcsLevelInfos',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostEcsLevelInfosResult.fromMap(result);
}

/// This data source provides the Cddc Zones of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.147.0+.
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
/// const example = alicloud.cddc.getZones({});
/// export const cddcZonesId1 = example.then(example => example.zones?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cddc.get_zones()
/// pulumi.export("cddcZonesId1", example.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cddc.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["cddcZonesId1"] = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cddc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cddc.GetZones(ctx, &cddc.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cddcZonesId1", example.Zones[0].Id)
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
/// import com.pulumi.alicloud.cddc.CddcFunctions;
/// import com.pulumi.alicloud.cddc.inputs.GetZonesArgs;
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
///         final var example = CddcFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("cddcZonesId1", example.zones()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cddc:getZones
///       arguments: {}
/// outputs:
///   cddcZonesId1: ${example.zones[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cddc_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cddc/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
