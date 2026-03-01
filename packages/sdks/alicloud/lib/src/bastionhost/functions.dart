import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_accounts_args.dart';
import 'get_host_accounts_result.dart';
import 'get_host_groups_args.dart';
import 'get_host_groups_result.dart';
import 'get_host_share_keys_args.dart';
import 'get_host_share_keys_result.dart';
import 'get_hosts_args.dart';
import 'get_hosts_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_user_groups_args.dart';
import 'get_user_groups_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';

/// This data source provides the Bastionhost Host Accounts of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
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
/// const ids = alicloud.bastionhost.getHostAccounts({
///     hostId: "15",
///     instanceId: "example_value",
///     ids: [
///         "1",
///         "2",
///     ],
/// });
/// export const bastionhostHostAccountId1 = ids.then(ids => ids.accounts?.[0]?.id);
/// const nameRegex = alicloud.bastionhost.getHostAccounts({
///     hostId: "15",
///     instanceId: "example_value",
///     nameRegex: "^my-HostAccount",
/// });
/// export const bastionhostHostAccountId2 = nameRegex.then(nameRegex => nameRegex.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.bastionhost.get_host_accounts(host_id="15",
///     instance_id="example_value",
///     ids=[
///         "1",
///         "2",
///     ])
/// pulumi.export("bastionhostHostAccountId1", ids.accounts[0].id)
/// name_regex = alicloud.bastionhost.get_host_accounts(host_id="15",
///     instance_id="example_value",
///     name_regex="^my-HostAccount")
/// pulumi.export("bastionhostHostAccountId2", name_regex.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.BastionHost.GetHostAccounts.Invoke(new()
///     {
///         HostId = "15",
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "1",
///             "2",
///         },
///     });
///
///     var nameRegex = AliCloud.BastionHost.GetHostAccounts.Invoke(new()
///     {
///         HostId = "15",
///         InstanceId = "example_value",
///         NameRegex = "^my-HostAccount",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bastionhostHostAccountId1"] = ids.Apply(getHostAccountsResult => getHostAccountsResult.Accounts[0]?.Id),
///         ["bastionhostHostAccountId2"] = nameRegex.Apply(getHostAccountsResult => getHostAccountsResult.Accounts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := bastionhost.GetHostAccounts(ctx, &bastionhost.GetHostAccountsArgs{
/// 			HostId:     "15",
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"1",
/// 				"2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostAccountId1", ids.Accounts[0].Id)
/// 		nameRegex, err := bastionhost.GetHostAccounts(ctx, &bastionhost.GetHostAccountsArgs{
/// 			HostId:     "15",
/// 			InstanceId: "example_value",
/// 			NameRegex:  pulumi.StringRef("^my-HostAccount"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostAccountId2", nameRegex.Accounts[0].Id)
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
/// import com.pulumi.alicloud.bastionhost.BastionhostFunctions;
/// import com.pulumi.alicloud.bastionhost.inputs.GetHostAccountsArgs;
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
///         final var ids = BastionhostFunctions.getHostAccounts(GetHostAccountsArgs.builder()
///             .hostId("15")
///             .instanceId("example_value")
///             .ids(
///                 "1",
///                 "2")
///             .build());
///
///         ctx.export("bastionhostHostAccountId1", ids.accounts()[0].id());
///         final var nameRegex = BastionhostFunctions.getHostAccounts(GetHostAccountsArgs.builder()
///             .hostId("15")
///             .instanceId("example_value")
///             .nameRegex("^my-HostAccount")
///             .build());
///
///         ctx.export("bastionhostHostAccountId2", nameRegex.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:bastionhost:getHostAccounts
///       arguments:
///         hostId: '15'
///         instanceId: example_value
///         ids:
///           - '1'
///           - '2'
///   nameRegex:
///     fn::invoke:
///       function: alicloud:bastionhost:getHostAccounts
///       arguments:
///         hostId: '15'
///         instanceId: example_value
///         nameRegex: ^my-HostAccount
/// outputs:
///   bastionhostHostAccountId1: ${ids.accounts[0].id}
///   bastionhostHostAccountId2: ${nameRegex.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bastionhost_get_host_accounts_get_host_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostAccountsResult> getHostAccounts(
  GetHostAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bastionhost/getHostAccounts:getHostAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostAccountsResult.fromMap(result);
}

/// This data source provides the Bastionhost Host Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.134.0+.
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
/// const ids = alicloud.bastionhost.getHostGroups({
///     instanceId: "bastionhost-cn-tl3xxxxxxx",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const bastionhostHostGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.bastionhost.getHostGroups({
///     instanceId: "bastionhost-cn-tl3xxxxxxx",
///     nameRegex: "^my-HostGroup",
/// });
/// export const bastionhostHostGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.bastionhost.get_host_groups(instance_id="bastionhost-cn-tl3xxxxxxx",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("bastionhostHostGroupId1", ids.groups[0].id)
/// name_regex = alicloud.bastionhost.get_host_groups(instance_id="bastionhost-cn-tl3xxxxxxx",
///     name_regex="^my-HostGroup")
/// pulumi.export("bastionhostHostGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.BastionHost.GetHostGroups.Invoke(new()
///     {
///         InstanceId = "bastionhost-cn-tl3xxxxxxx",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.BastionHost.GetHostGroups.Invoke(new()
///     {
///         InstanceId = "bastionhost-cn-tl3xxxxxxx",
///         NameRegex = "^my-HostGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bastionhostHostGroupId1"] = ids.Apply(getHostGroupsResult => getHostGroupsResult.Groups[0]?.Id),
///         ["bastionhostHostGroupId2"] = nameRegex.Apply(getHostGroupsResult => getHostGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := bastionhost.GetHostGroups(ctx, &bastionhost.GetHostGroupsArgs{
/// 			InstanceId: "bastionhost-cn-tl3xxxxxxx",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := bastionhost.GetHostGroups(ctx, &bastionhost.GetHostGroupsArgs{
/// 			InstanceId: "bastionhost-cn-tl3xxxxxxx",
/// 			NameRegex:  pulumi.StringRef("^my-HostGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.bastionhost.BastionhostFunctions;
/// import com.pulumi.alicloud.bastionhost.inputs.GetHostGroupsArgs;
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
///         final var ids = BastionhostFunctions.getHostGroups(GetHostGroupsArgs.builder()
///             .instanceId("bastionhost-cn-tl3xxxxxxx")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("bastionhostHostGroupId1", ids.groups()[0].id());
///         final var nameRegex = BastionhostFunctions.getHostGroups(GetHostGroupsArgs.builder()
///             .instanceId("bastionhost-cn-tl3xxxxxxx")
///             .nameRegex("^my-HostGroup")
///             .build());
///
///         ctx.export("bastionhostHostGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:bastionhost:getHostGroups
///       arguments:
///         instanceId: bastionhost-cn-tl3xxxxxxx
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:bastionhost:getHostGroups
///       arguments:
///         instanceId: bastionhost-cn-tl3xxxxxxx
///         nameRegex: ^my-HostGroup
/// outputs:
///   bastionhostHostGroupId1: ${ids.groups[0].id}
///   bastionhostHostGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bastionhost_get_host_groups_get_host_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostGroupsResult> getHostGroups(
  GetHostGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bastionhost/getHostGroups:getHostGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostGroupsResult.fromMap(result);
}

/// This data source provides the Bastionhost Host Share Keys of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.165.0+.
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
/// const ids = alicloud.bastionhost.getHostShareKeys({
///     instanceId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const bastionhostHostShareKeyId1 = ids.then(ids => ids.keys?.[0]?.id);
/// const nameRegex = alicloud.bastionhost.getHostShareKeys({
///     instanceId: "example_value",
///     nameRegex: "^my-HostShareKey",
/// });
/// export const bastionhostHostShareKeyId2 = nameRegex.then(nameRegex => nameRegex.keys?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.bastionhost.get_host_share_keys(instance_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("bastionhostHostShareKeyId1", ids.keys[0].id)
/// name_regex = alicloud.bastionhost.get_host_share_keys(instance_id="example_value",
///     name_regex="^my-HostShareKey")
/// pulumi.export("bastionhostHostShareKeyId2", name_regex.keys[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.BastionHost.GetHostShareKeys.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.BastionHost.GetHostShareKeys.Invoke(new()
///     {
///         InstanceId = "example_value",
///         NameRegex = "^my-HostShareKey",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bastionhostHostShareKeyId1"] = ids.Apply(getHostShareKeysResult => getHostShareKeysResult.Keys[0]?.Id),
///         ["bastionhostHostShareKeyId2"] = nameRegex.Apply(getHostShareKeysResult => getHostShareKeysResult.Keys[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := bastionhost.GetHostShareKeys(ctx, &bastionhost.GetHostShareKeysArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostShareKeyId1", ids.Keys[0].Id)
/// 		nameRegex, err := bastionhost.GetHostShareKeys(ctx, &bastionhost.GetHostShareKeysArgs{
/// 			InstanceId: "example_value",
/// 			NameRegex:  pulumi.StringRef("^my-HostShareKey"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostShareKeyId2", nameRegex.Keys[0].Id)
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
/// import com.pulumi.alicloud.bastionhost.BastionhostFunctions;
/// import com.pulumi.alicloud.bastionhost.inputs.GetHostShareKeysArgs;
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
///         final var ids = BastionhostFunctions.getHostShareKeys(GetHostShareKeysArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("bastionhostHostShareKeyId1", ids.keys()[0].id());
///         final var nameRegex = BastionhostFunctions.getHostShareKeys(GetHostShareKeysArgs.builder()
///             .instanceId("example_value")
///             .nameRegex("^my-HostShareKey")
///             .build());
///
///         ctx.export("bastionhostHostShareKeyId2", nameRegex.keys()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:bastionhost:getHostShareKeys
///       arguments:
///         instanceId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:bastionhost:getHostShareKeys
///       arguments:
///         instanceId: example_value
///         nameRegex: ^my-HostShareKey
/// outputs:
///   bastionhostHostShareKeyId1: ${ids.keys[0].id}
///   bastionhostHostShareKeyId2: ${nameRegex.keys[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bastionhost_get_host_share_keys_get_host_share_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostShareKeysResult> getHostShareKeys(
  GetHostShareKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bastionhost/getHostShareKeys:getHostShareKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostShareKeysResult.fromMap(result);
}

/// This data source provides the Bastionhost Hosts of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
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
/// const ids = alicloud.bastionhost.getHosts({
///     instanceId: "example_value",
///     ids: [
///         "1",
///         "2",
///     ],
/// });
/// export const bastionhostHostId1 = ids.then(ids => ids.hosts?.[0]?.id);
/// const nameRegex = alicloud.bastionhost.getHosts({
///     instanceId: "example_value",
///     nameRegex: "^my-Host",
/// });
/// export const bastionhostHostId2 = nameRegex.then(nameRegex => nameRegex.hosts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.bastionhost.get_hosts(instance_id="example_value",
///     ids=[
///         "1",
///         "2",
///     ])
/// pulumi.export("bastionhostHostId1", ids.hosts[0].id)
/// name_regex = alicloud.bastionhost.get_hosts(instance_id="example_value",
///     name_regex="^my-Host")
/// pulumi.export("bastionhostHostId2", name_regex.hosts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.BastionHost.GetHosts.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "1",
///             "2",
///         },
///     });
///
///     var nameRegex = AliCloud.BastionHost.GetHosts.Invoke(new()
///     {
///         InstanceId = "example_value",
///         NameRegex = "^my-Host",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bastionhostHostId1"] = ids.Apply(getHostsResult => getHostsResult.Hosts[0]?.Id),
///         ["bastionhostHostId2"] = nameRegex.Apply(getHostsResult => getHostsResult.Hosts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := bastionhost.GetHosts(ctx, &bastionhost.GetHostsArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"1",
/// 				"2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostId1", ids.Hosts[0].Id)
/// 		nameRegex, err := bastionhost.GetHosts(ctx, &bastionhost.GetHostsArgs{
/// 			InstanceId: "example_value",
/// 			NameRegex:  pulumi.StringRef("^my-Host"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostHostId2", nameRegex.Hosts[0].Id)
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
/// import com.pulumi.alicloud.bastionhost.BastionhostFunctions;
/// import com.pulumi.alicloud.bastionhost.inputs.GetHostsArgs;
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
///         final var ids = BastionhostFunctions.getHosts(GetHostsArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "1",
///                 "2")
///             .build());
///
///         ctx.export("bastionhostHostId1", ids.hosts()[0].id());
///         final var nameRegex = BastionhostFunctions.getHosts(GetHostsArgs.builder()
///             .instanceId("example_value")
///             .nameRegex("^my-Host")
///             .build());
///
///         ctx.export("bastionhostHostId2", nameRegex.hosts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:bastionhost:getHosts
///       arguments:
///         instanceId: example_value
///         ids:
///           - '1'
///           - '2'
///   nameRegex:
///     fn::invoke:
///       function: alicloud:bastionhost:getHosts
///       arguments:
///         instanceId: example_value
///         nameRegex: ^my-Host
/// outputs:
///   bastionhostHostId1: ${ids.hosts[0].id}
///   bastionhostHostId2: ${nameRegex.hosts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bastionhost_get_hosts_get_hosts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostsResult> getHosts(
  GetHostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bastionhost/getHosts:getHosts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostsResult.fromMap(result);
}

/// > **NOTE:** From the version 1.132.0, the data source has been renamed to `alicloud.bastionhost.getInstances`.
///
/// This data source provides a list of cloud Bastionhost instances in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.63.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// export = async () => {
///     const instance = await alicloud.bastionhost.getInstances({
///         descriptionRegex: "^bastionhost",
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
/// instance = alicloud.bastionhost.get_instances(description_regex="^bastionhost")
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
///     var instance = AliCloud.BastionHost.GetInstances.Invoke(new()
///     {
///         DescriptionRegex = "^bastionhost",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// instance, err := bastionhost.GetInstances(ctx, &bastionhost.GetInstancesArgs{
/// DescriptionRegex: pulumi.StringRef("^bastionhost"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("instance", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:5,11-25)))
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
/// import com.pulumi.alicloud.bastionhost.BastionhostFunctions;
/// import com.pulumi.alicloud.bastionhost.inputs.GetInstancesArgs;
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
///         final var instance = BastionhostFunctions.getInstances(GetInstancesArgs.builder()
///             .descriptionRegex("^bastionhost")
///             .build());
///
///         ctx.export("instance", List.of(instance).stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bastionhost_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bastionhost/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Bastionhost User Groups of the current Alibaba Cloud user.
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
/// const ids = alicloud.bastionhost.getUserGroups({
///     instanceId: "bastionhost-cn-xxxx",
///     ids: [
///         "1",
///         "2",
///     ],
/// });
/// export const bastionhostUserGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.bastionhost.getUserGroups({
///     instanceId: "bastionhost-cn-xxxx",
///     nameRegex: "^my-UserGroup",
/// });
/// export const bastionhostUserGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.bastionhost.get_user_groups(instance_id="bastionhost-cn-xxxx",
///     ids=[
///         "1",
///         "2",
///     ])
/// pulumi.export("bastionhostUserGroupId1", ids.groups[0].id)
/// name_regex = alicloud.bastionhost.get_user_groups(instance_id="bastionhost-cn-xxxx",
///     name_regex="^my-UserGroup")
/// pulumi.export("bastionhostUserGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.BastionHost.GetUserGroups.Invoke(new()
///     {
///         InstanceId = "bastionhost-cn-xxxx",
///         Ids = new[]
///         {
///             "1",
///             "2",
///         },
///     });
///
///     var nameRegex = AliCloud.BastionHost.GetUserGroups.Invoke(new()
///     {
///         InstanceId = "bastionhost-cn-xxxx",
///         NameRegex = "^my-UserGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bastionhostUserGroupId1"] = ids.Apply(getUserGroupsResult => getUserGroupsResult.Groups[0]?.Id),
///         ["bastionhostUserGroupId2"] = nameRegex.Apply(getUserGroupsResult => getUserGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := bastionhost.GetUserGroups(ctx, &bastionhost.GetUserGroupsArgs{
/// 			InstanceId: "bastionhost-cn-xxxx",
/// 			Ids: []string{
/// 				"1",
/// 				"2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostUserGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := bastionhost.GetUserGroups(ctx, &bastionhost.GetUserGroupsArgs{
/// 			InstanceId: "bastionhost-cn-xxxx",
/// 			NameRegex:  pulumi.StringRef("^my-UserGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostUserGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.bastionhost.BastionhostFunctions;
/// import com.pulumi.alicloud.bastionhost.inputs.GetUserGroupsArgs;
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
///         final var ids = BastionhostFunctions.getUserGroups(GetUserGroupsArgs.builder()
///             .instanceId("bastionhost-cn-xxxx")
///             .ids(
///                 "1",
///                 "2")
///             .build());
///
///         ctx.export("bastionhostUserGroupId1", ids.groups()[0].id());
///         final var nameRegex = BastionhostFunctions.getUserGroups(GetUserGroupsArgs.builder()
///             .instanceId("bastionhost-cn-xxxx")
///             .nameRegex("^my-UserGroup")
///             .build());
///
///         ctx.export("bastionhostUserGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:bastionhost:getUserGroups
///       arguments:
///         instanceId: bastionhost-cn-xxxx
///         ids:
///           - '1'
///           - '2'
///   nameRegex:
///     fn::invoke:
///       function: alicloud:bastionhost:getUserGroups
///       arguments:
///         instanceId: bastionhost-cn-xxxx
///         nameRegex: ^my-UserGroup
/// outputs:
///   bastionhostUserGroupId1: ${ids.groups[0].id}
///   bastionhostUserGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bastionhost_get_user_groups_get_user_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserGroupsResult> getUserGroups(
  GetUserGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bastionhost/getUserGroups:getUserGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserGroupsResult.fromMap(result);
}

/// This data source provides the Bastionhost Users of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.133.0+.
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
/// const ids = alicloud.bastionhost.getUsers({
///     instanceId: "example_value",
///     ids: [
///         "1",
///         "10",
///     ],
/// });
/// export const bastionhostUserId1 = ids.then(ids => ids.users?.[0]?.id);
/// const nameRegex = alicloud.bastionhost.getUsers({
///     instanceId: "example_value",
///     nameRegex: "^my-User",
/// });
/// export const bastionhostUserId2 = nameRegex.then(nameRegex => nameRegex.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.bastionhost.get_users(instance_id="example_value",
///     ids=[
///         "1",
///         "10",
///     ])
/// pulumi.export("bastionhostUserId1", ids.users[0].id)
/// name_regex = alicloud.bastionhost.get_users(instance_id="example_value",
///     name_regex="^my-User")
/// pulumi.export("bastionhostUserId2", name_regex.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.BastionHost.GetUsers.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "1",
///             "10",
///         },
///     });
///
///     var nameRegex = AliCloud.BastionHost.GetUsers.Invoke(new()
///     {
///         InstanceId = "example_value",
///         NameRegex = "^my-User",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bastionhostUserId1"] = ids.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///         ["bastionhostUserId2"] = nameRegex.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := bastionhost.GetUsers(ctx, &bastionhost.GetUsersArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"1",
/// 				"10",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostUserId1", ids.Users[0].Id)
/// 		nameRegex, err := bastionhost.GetUsers(ctx, &bastionhost.GetUsersArgs{
/// 			InstanceId: "example_value",
/// 			NameRegex:  pulumi.StringRef("^my-User"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bastionhostUserId2", nameRegex.Users[0].Id)
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
/// import com.pulumi.alicloud.bastionhost.BastionhostFunctions;
/// import com.pulumi.alicloud.bastionhost.inputs.GetUsersArgs;
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
///         final var ids = BastionhostFunctions.getUsers(GetUsersArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "1",
///                 "10")
///             .build());
///
///         ctx.export("bastionhostUserId1", ids.users()[0].id());
///         final var nameRegex = BastionhostFunctions.getUsers(GetUsersArgs.builder()
///             .instanceId("example_value")
///             .nameRegex("^my-User")
///             .build());
///
///         ctx.export("bastionhostUserId2", nameRegex.users()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:bastionhost:getUsers
///       arguments:
///         instanceId: example_value
///         ids:
///           - '1'
///           - '10'
///   nameRegex:
///     fn::invoke:
///       function: alicloud:bastionhost:getUsers
///       arguments:
///         instanceId: example_value
///         nameRegex: ^my-User
/// outputs:
///   bastionhostUserId1: ${ids.users[0].id}
///   bastionhostUserId2: ${nameRegex.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bastionhost_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bastionhost/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}
