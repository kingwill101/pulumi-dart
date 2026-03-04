import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_databases_args.dart';
import 'get_enterprise_databases_result.dart';
import 'get_enterprise_instances_args.dart';
import 'get_enterprise_instances_result.dart';
import 'get_enterprise_logic_databases_args.dart';
import 'get_enterprise_logic_databases_result.dart';
import 'get_enterprise_proxies_args.dart';
import 'get_enterprise_proxies_result.dart';
import 'get_enterprise_proxy_accesses_args.dart';
import 'get_enterprise_proxy_accesses_result.dart';
import 'get_enterprise_users_args.dart';
import 'get_enterprise_users_result.dart';
import 'get_user_tenants_args.dart';
import 'get_user_tenants_result.dart';

/// This data source provides DMS Enterprise Database available to the user. [What is Database](https://www.alibabacloud.com/help/en/dms/developer-reference/api-dms-enterprise-2018-11-01-listdatabases).
///
/// &gt; **NOTE:** Available since v1.195.0.
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
/// const _default = alicloud.dms.getEnterpriseDatabases({
///     nameRegex: "test2",
///     instanceId: "2195118",
/// });
/// export const alicloudDmsEnterpriseDatabaseExampleId = _default.then(_default => _default.databases?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dms.get_enterprise_databases(name_regex="test2",
///     instance_id="2195118")
/// pulumi.export("alicloudDmsEnterpriseDatabaseExampleId", default.databases[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Dms.GetEnterpriseDatabases.Invoke(new()
///     {
///         NameRegex = "test2",
///         InstanceId = "2195118",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudDmsEnterpriseDatabaseExampleId"] = @default.Apply(@default => @default.Apply(getEnterpriseDatabasesResult => getEnterpriseDatabasesResult.Databases[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := dms.GetEnterpriseDatabases(ctx, &dms.GetEnterpriseDatabasesArgs{
/// 			NameRegex:  pulumi.StringRef("test2"),
/// 			InstanceId: "2195118",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudDmsEnterpriseDatabaseExampleId", _default.Databases[0].Id)
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetEnterpriseDatabasesArgs;
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
///         final var default = DmsFunctions.getEnterpriseDatabases(GetEnterpriseDatabasesArgs.builder()
///             .nameRegex("test2")
///             .instanceId("2195118")
///             .build());
///
///         ctx.export("alicloudDmsEnterpriseDatabaseExampleId", default_.databases()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseDatabases
///       arguments:
///         nameRegex: test2
///         instanceId: '2195118'
/// outputs:
///   alicloudDmsEnterpriseDatabaseExampleId: ${default.databases[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_enterprise_databases_get_enterprise_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseDatabasesResult> getEnterpriseDatabases(
  GetEnterpriseDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dms/getEnterpriseDatabases:getEnterpriseDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseDatabasesResult.fromMap(result);
}

/// This data source provides a list of DMS Enterprise Instances in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.88.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const dmsEnterpriseInstancesDs = alicloud.dms.getEnterpriseInstances({
///     netType: "CLASSIC",
///     instanceType: "mysql",
///     envType: "test",
///     nameRegex: "tf_testAcc",
///     outputFile: "dms_enterprise_instances.json",
/// });
/// export const firstDatabaseInstanceId = dmsEnterpriseInstancesDs.then(dmsEnterpriseInstancesDs => dmsEnterpriseInstancesDs.instances?.[0]?.instanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// dms_enterprise_instances_ds = alicloud.dms.get_enterprise_instances(net_type="CLASSIC",
///     instance_type="mysql",
///     env_type="test",
///     name_regex="tf_testAcc",
///     output_file="dms_enterprise_instances.json")
/// pulumi.export("firstDatabaseInstanceId", dms_enterprise_instances_ds.instances[0].instance_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var dmsEnterpriseInstancesDs = AliCloud.Dms.GetEnterpriseInstances.Invoke(new()
///     {
///         NetType = "CLASSIC",
///         InstanceType = "mysql",
///         EnvType = "test",
///         NameRegex = "tf_testAcc",
///         OutputFile = "dms_enterprise_instances.json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDatabaseInstanceId"] = dmsEnterpriseInstancesDs.Apply(getEnterpriseInstancesResult => getEnterpriseInstancesResult.Instances[0]?.InstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		dmsEnterpriseInstancesDs, err := dms.GetEnterpriseInstances(ctx, &dms.GetEnterpriseInstancesArgs{
/// 			NetType:      pulumi.StringRef("CLASSIC"),
/// 			InstanceType: pulumi.StringRef("mysql"),
/// 			EnvType:      pulumi.StringRef("test"),
/// 			NameRegex:    pulumi.StringRef("tf_testAcc"),
/// 			OutputFile:   pulumi.StringRef("dms_enterprise_instances.json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDatabaseInstanceId", dmsEnterpriseInstancesDs.Instances[0].InstanceId)
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetEnterpriseInstancesArgs;
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
///         // Declare the data source
///         final var dmsEnterpriseInstancesDs = DmsFunctions.getEnterpriseInstances(GetEnterpriseInstancesArgs.builder()
///             .netType("CLASSIC")
///             .instanceType("mysql")
///             .envType("test")
///             .nameRegex("tf_testAcc")
///             .outputFile("dms_enterprise_instances.json")
///             .build());
///
///         ctx.export("firstDatabaseInstanceId", dmsEnterpriseInstancesDs.instances()[0].instanceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   dmsEnterpriseInstancesDs:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseInstances
///       arguments:
///         netType: CLASSIC
///         instanceType: mysql
///         envType: test
///         nameRegex: tf_testAcc
///         outputFile: dms_enterprise_instances.json
/// outputs:
///   firstDatabaseInstanceId: ${dmsEnterpriseInstancesDs.instances[0].instanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_enterprise_instances_get_enterprise_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseInstancesResult> getEnterpriseInstances(
  GetEnterpriseInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dms/getEnterpriseInstances:getEnterpriseInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseInstancesResult.fromMap(result);
}

/// This data source provides DMS Enterprise Logic Database available to the user. [What is Logic Database](https://www.alibabacloud.com/help/en/dms/developer-reference/api-dms-enterprise-2018-11-01-createlogicdatabase).
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```yaml
/// variables:
///   dmsEnterpriseInstancesDs:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseInstances
///       arguments:
///         instanceType: mysql
///         searchKey: tf-test-no-deleting
///   default:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseLogicDatabases
///       arguments:
///         instanceId: ${dmsEnterpriseInstancesDs.instances[0].instanceId}
/// outputs:
///   alicloudDmsEnterpriseLogicDatabaseExampleId: ${default.databases[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_enterprise_logic_databases_get_enterprise_logic_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseLogicDatabasesResult> getEnterpriseLogicDatabases(
  GetEnterpriseLogicDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dms/getEnterpriseLogicDatabases:getEnterpriseLogicDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseLogicDatabasesResult.fromMap(result);
}

/// This data source provides the Dms Enterprise Proxies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.188.0+.
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
/// const ids = alicloud.dms.getEnterpriseProxies({});
/// export const dmsEnterpriseProxyId1 = ids.then(ids => ids.proxies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dms.get_enterprise_proxies()
/// pulumi.export("dmsEnterpriseProxyId1", ids.proxies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dms.GetEnterpriseProxies.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["dmsEnterpriseProxyId1"] = ids.Apply(getEnterpriseProxiesResult => getEnterpriseProxiesResult.Proxies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dms.GetEnterpriseProxies(ctx, &dms.GetEnterpriseProxiesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dmsEnterpriseProxyId1", ids.Proxies[0].Id)
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetEnterpriseProxiesArgs;
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
///         final var ids = DmsFunctions.getEnterpriseProxies(GetEnterpriseProxiesArgs.builder()
///             .build());
///
///         ctx.export("dmsEnterpriseProxyId1", ids.proxies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseProxies
///       arguments: {}
/// outputs:
///   dmsEnterpriseProxyId1: ${ids.proxies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_enterprise_proxies_get_enterprise_proxies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseProxiesResult> getEnterpriseProxies(
  GetEnterpriseProxiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dms/getEnterpriseProxies:getEnterpriseProxies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseProxiesResult.fromMap(result);
}

/// This data source provides DMS Enterprise Proxy Access available to the user.[What is Proxy Access](https://next.api.alibabacloud.com/document/dms-enterprise/2018-11-01/CreateProxyAccess)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultEnterpriseProxyAccess = new alicloud.dms.EnterpriseProxyAccess("default", {
///     indepPassword: "PASSWORD-DEMO",
///     proxyId: "1881",
///     indepAccount: "dmstest",
///     userId: "104442",
/// });
/// const _default = alicloud.dms.getEnterpriseProxyAccessesOutput({
///     ids: [defaultEnterpriseProxyAccess.id],
///     proxyId: "1881",
/// });
/// export const alicloudDmsProxyAccesesExampleId = _default.apply(_default => _default.accesses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_enterprise_proxy_access = alicloud.dms.EnterpriseProxyAccess("default",
///     indep_password="PASSWORD-DEMO",
///     proxy_id="1881",
///     indep_account="dmstest",
///     user_id="104442")
/// default = alicloud.dms.get_enterprise_proxy_accesses_output(ids=[default_enterprise_proxy_access.id],
///     proxy_id="1881")
/// pulumi.export("alicloudDmsProxyAccesesExampleId", default.accesses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultEnterpriseProxyAccess = new AliCloud.Dms.EnterpriseProxyAccess("default", new()
///     {
///         IndepPassword = "PASSWORD-DEMO",
///         ProxyId = "1881",
///         IndepAccount = "dmstest",
///         UserId = "104442",
///     });
///
///     var @default = AliCloud.Dms.GetEnterpriseProxyAccesses.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultEnterpriseProxyAccess.Id,
///         },
///         ProxyId = "1881",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudDmsProxyAccesesExampleId"] = @default.Apply(@default => @default.Apply(getEnterpriseProxyAccessesResult => getEnterpriseProxyAccessesResult.Accesses[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultEnterpriseProxyAccess, err := dms.NewEnterpriseProxyAccess(ctx, "default", &dms.EnterpriseProxyAccessArgs{
/// IndepPassword: pulumi.String("PASSWORD-DEMO"),
/// ProxyId: pulumi.String("1881"),
/// IndepAccount: pulumi.String("dmstest"),
/// UserId: pulumi.String("104442"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := dms.GetEnterpriseProxyAccessesOutput(ctx, dms.GetEnterpriseProxyAccessesOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultEnterpriseProxyAccess.ID(),
/// },
/// ProxyId: pulumi.String("1881"),
/// }, nil);
/// ctx.Export("alicloudDmsProxyAccesesExampleId", _default.ApplyT(func(_default dms.GetEnterpriseProxyAccessesResult) (*string, error) {
/// return &default.Accesses[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.dms.EnterpriseProxyAccess;
/// import com.pulumi.alicloud.dms.EnterpriseProxyAccessArgs;
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetEnterpriseProxyAccessesArgs;
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
///         var defaultEnterpriseProxyAccess = new EnterpriseProxyAccess("defaultEnterpriseProxyAccess", EnterpriseProxyAccessArgs.builder()
///             .indepPassword("PASSWORD-DEMO")
///             .proxyId("1881")
///             .indepAccount("dmstest")
///             .userId("104442")
///             .build());
///
///         final var default = DmsFunctions.getEnterpriseProxyAccesses(GetEnterpriseProxyAccessesArgs.builder()
///             .ids(defaultEnterpriseProxyAccess.id())
///             .proxyId("1881")
///             .build());
///
///         ctx.export("alicloudDmsProxyAccesesExampleId", default_.applyValue(_default_ -> _default_.accesses()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultEnterpriseProxyAccess:
///     type: alicloud:dms:EnterpriseProxyAccess
///     name: default
///     properties:
///       indepPassword: PASSWORD-DEMO
///       proxyId: 1881
///       indepAccount: dmstest
///       userId: 104442
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseProxyAccesses
///       arguments:
///         ids:
///           - ${defaultEnterpriseProxyAccess.id}
///         proxyId: 1881
/// outputs:
///   alicloudDmsProxyAccesesExampleId: ${default.accesses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_enterprise_proxy_accesses_get_enterprise_proxy_accesses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseProxyAccessesResult> getEnterpriseProxyAccesses(
  GetEnterpriseProxyAccessesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dms/getEnterpriseProxyAccesses:getEnterpriseProxyAccesses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseProxyAccessesResult.fromMap(result);
}

/// This data source provides a list of DMS Enterprise Users in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.90.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const dmsEnterpriseUsersDs = alicloud.dms.getEnterpriseUsers({
///     ids: ["uid"],
///     role: "USER",
///     status: "NORMAL",
/// });
/// export const firstUserId = dmsEnterpriseUsersDs.then(dmsEnterpriseUsersDs => dmsEnterpriseUsersDs.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// dms_enterprise_users_ds = alicloud.dms.get_enterprise_users(ids=["uid"],
///     role="USER",
///     status="NORMAL")
/// pulumi.export("firstUserId", dms_enterprise_users_ds.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var dmsEnterpriseUsersDs = AliCloud.Dms.GetEnterpriseUsers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "uid",
///         },
///         Role = "USER",
///         Status = "NORMAL",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstUserId"] = dmsEnterpriseUsersDs.Apply(getEnterpriseUsersResult => getEnterpriseUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		dmsEnterpriseUsersDs, err := dms.GetEnterpriseUsers(ctx, &dms.GetEnterpriseUsersArgs{
/// 			Ids: []string{
/// 				"uid",
/// 			},
/// 			Role:   pulumi.StringRef("USER"),
/// 			Status: pulumi.StringRef("NORMAL"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstUserId", dmsEnterpriseUsersDs.Users[0].Id)
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetEnterpriseUsersArgs;
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
///         // Declare the data source
///         final var dmsEnterpriseUsersDs = DmsFunctions.getEnterpriseUsers(GetEnterpriseUsersArgs.builder()
///             .ids("uid")
///             .role("USER")
///             .status("NORMAL")
///             .build());
///
///         ctx.export("firstUserId", dmsEnterpriseUsersDs.users()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   dmsEnterpriseUsersDs:
///     fn::invoke:
///       function: alicloud:dms:getEnterpriseUsers
///       arguments:
///         ids:
///           - uid
///         role: USER
///         status: NORMAL
/// outputs:
///   firstUserId: ${dmsEnterpriseUsersDs.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_enterprise_users_get_enterprise_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseUsersResult> getEnterpriseUsers(
  GetEnterpriseUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dms/getEnterpriseUsers:getEnterpriseUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseUsersResult.fromMap(result);
}

/// This data source provides a list of DMS User Tenants in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available in 1.161.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const _default = alicloud.dms.getUserTenants({
///     status: "ACTIVE",
/// });
/// export const tid = _default.then(_default => _default.ids?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// default = alicloud.dms.get_user_tenants(status="ACTIVE")
/// pulumi.export("tid", default.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var @default = AliCloud.Dms.GetUserTenants.Invoke(new()
///     {
///         Status = "ACTIVE",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["tid"] = @default.Apply(@default => @default.Apply(getUserTenantsResult => getUserTenantsResult.Ids[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_default, err := dms.GetUserTenants(ctx, &dms.GetUserTenantsArgs{
/// 			Status: pulumi.StringRef("ACTIVE"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("tid", _default.Ids[0])
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetUserTenantsArgs;
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
///         // Declare the data source
///         final var default = DmsFunctions.getUserTenants(GetUserTenantsArgs.builder()
///             .status("ACTIVE")
///             .build());
///
///         ctx.export("tid", default_.ids()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   default:
///     fn::invoke:
///       function: alicloud:dms:getUserTenants
///       arguments:
///         status: ACTIVE
/// outputs:
///   tid: ${default.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_user_tenants_get_user_tenants_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserTenantsResult> getUserTenants(
  GetUserTenantsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dms/getUserTenants:getUserTenants',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserTenantsResult.fromMap(result);
}
