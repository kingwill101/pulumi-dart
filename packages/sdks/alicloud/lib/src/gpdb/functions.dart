import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_args.dart';
import 'get_accounts_result.dart';
import 'get_data_backups_args.dart';
import 'get_data_backups_result.dart';
import 'get_db_instance_plans_args.dart';
import 'get_db_instance_plans_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_log_backups_args.dart';
import 'get_log_backups_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Gpdb Accounts of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.142.0+.
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
/// const ids = alicloud.gpdb.getAccounts({
///     dbInstanceId: "example_value",
///     ids: [
///         "my-Account-1",
///         "my-Account-2",
///     ],
/// });
/// export const gpdbAccountId1 = ids.then(ids => ids.accounts?.[0]?.id);
/// const nameRegex = alicloud.gpdb.getAccounts({
///     dbInstanceId: "example_value",
///     nameRegex: "^my-Account",
/// });
/// export const gpdbAccountId2 = nameRegex.then(nameRegex => nameRegex.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.gpdb.get_accounts(db_instance_id="example_value",
///     ids=[
///         "my-Account-1",
///         "my-Account-2",
///     ])
/// pulumi.export("gpdbAccountId1", ids.accounts[0].id)
/// name_regex = alicloud.gpdb.get_accounts(db_instance_id="example_value",
///     name_regex="^my-Account")
/// pulumi.export("gpdbAccountId2", name_regex.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Gpdb.GetAccounts.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         Ids = new[]
///         {
///             "my-Account-1",
///             "my-Account-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Gpdb.GetAccounts.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         NameRegex = "^my-Account",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gpdbAccountId1"] = ids.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.Id),
///         ["gpdbAccountId2"] = nameRegex.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := gpdb.GetAccounts(ctx, &gpdb.GetAccountsArgs{
/// 			DbInstanceId: "example_value",
/// 			Ids: []string{
/// 				"my-Account-1",
/// 				"my-Account-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gpdbAccountId1", ids.Accounts[0].Id)
/// 		nameRegex, err := gpdb.GetAccounts(ctx, &gpdb.GetAccountsArgs{
/// 			DbInstanceId: "example_value",
/// 			NameRegex:    pulumi.StringRef("^my-Account"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gpdbAccountId2", nameRegex.Accounts[0].Id)
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
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetAccountsArgs;
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
///         final var ids = GpdbFunctions.getAccounts(GetAccountsArgs.builder()
///             .dbInstanceId("example_value")
///             .ids(
///                 "my-Account-1",
///                 "my-Account-2")
///             .build());
///
///         ctx.export("gpdbAccountId1", ids.accounts()[0].id());
///         final var nameRegex = GpdbFunctions.getAccounts(GetAccountsArgs.builder()
///             .dbInstanceId("example_value")
///             .nameRegex("^my-Account")
///             .build());
///
///         ctx.export("gpdbAccountId2", nameRegex.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:gpdb:getAccounts
///       arguments:
///         dbInstanceId: example_value
///         ids:
///           - my-Account-1
///           - my-Account-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:gpdb:getAccounts
///       arguments:
///         dbInstanceId: example_value
///         nameRegex: ^my-Account
/// outputs:
///   gpdbAccountId1: ${ids.accounts[0].id}
///   gpdbAccountId2: ${nameRegex.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gpdb_get_accounts_get_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountsResult> getAccounts(
  GetAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:gpdb/getAccounts:getAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountsResult.fromMap(result);
}

/// This data source provides Gpdb Data Backup available to the user.[What is Data Backup](https://www.alibabacloud.com/help/en/)
///
/// &gt; **NOTE:** Available since v1.231.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.gpdb.getInstances({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetDataBackups = _default.then(_default => alicloud.gpdb.getDataBackups({
///     dbInstanceId: _default.ids?.[0],
/// }));
/// export const alicloudGpdbDataBackupExampleId = defaultGetDataBackups.then(defaultGetDataBackups => defaultGetDataBackups.backups?.[0]?.dbInstanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.gpdb.get_instances(name_regex="^default-NODELETING$")
/// default_get_data_backups = alicloud.gpdb.get_data_backups(db_instance_id=default.ids[0])
/// pulumi.export("alicloudGpdbDataBackupExampleId", default_get_data_backups.backups[0].db_instance_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Gpdb.GetInstances.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetDataBackups = AliCloud.Gpdb.GetDataBackups.Invoke(new()
///     {
///         DbInstanceId = @default.Apply(getInstancesResult => getInstancesResult.Ids[0]),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudGpdbDataBackupExampleId"] = defaultGetDataBackups.Apply(getDataBackupsResult => getDataBackupsResult.Backups[0]?.DbInstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := gpdb.GetInstances(ctx, &gpdb.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetDataBackups, err := gpdb.GetDataBackups(ctx, &gpdb.GetDataBackupsArgs{
/// 			DbInstanceId: _default.Ids[0],
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudGpdbDataBackupExampleId", defaultGetDataBackups.Backups[0].DbInstanceId)
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
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.gpdb.inputs.GetDataBackupsArgs;
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
///         final var default = GpdbFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetDataBackups = GpdbFunctions.getDataBackups(GetDataBackupsArgs.builder()
///             .dbInstanceId(default_.ids()[0])
///             .build());
///
///         ctx.export("alicloudGpdbDataBackupExampleId", defaultGetDataBackups.backups()[0].dbInstanceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:gpdb:getInstances
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetDataBackups:
///     fn::invoke:
///       function: alicloud:gpdb:getDataBackups
///       arguments:
///         dbInstanceId: ${default.ids[0]}
/// outputs:
///   alicloudGpdbDataBackupExampleId: ${defaultGetDataBackups.backups[0].dbInstanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gpdb_get_data_backups_get_data_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataBackupsResult> getDataBackups(
  GetDataBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:gpdb/getDataBackups:getDataBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataBackupsResult.fromMap(result);
}

/// This data source provides the Gpdb Db Instance Plans of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.189.0+.
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
/// const ids = alicloud.gpdb.getDbInstancePlans({
///     dbInstanceId: "example_value",
///     ids: ["example_value"],
/// });
/// export const gpdbDbInstancePlanId1 = ids.then(ids => ids.plans?.[0]?.id);
/// const nameRegex = alicloud.gpdb.getDbInstancePlans({
///     dbInstanceId: "example_value",
///     nameRegex: "^my-DBInstancePlan",
/// });
/// export const gpdbDbInstancePlanId2 = nameRegex.then(nameRegex => nameRegex.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.gpdb.get_db_instance_plans(db_instance_id="example_value",
///     ids=["example_value"])
/// pulumi.export("gpdbDbInstancePlanId1", ids.plans[0].id)
/// name_regex = alicloud.gpdb.get_db_instance_plans(db_instance_id="example_value",
///     name_regex="^my-DBInstancePlan")
/// pulumi.export("gpdbDbInstancePlanId2", name_regex.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Gpdb.GetDbInstancePlans.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var nameRegex = AliCloud.Gpdb.GetDbInstancePlans.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         NameRegex = "^my-DBInstancePlan",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gpdbDbInstancePlanId1"] = ids.Apply(getDbInstancePlansResult => getDbInstancePlansResult.Plans[0]?.Id),
///         ["gpdbDbInstancePlanId2"] = nameRegex.Apply(getDbInstancePlansResult => getDbInstancePlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := gpdb.GetDbInstancePlans(ctx, &gpdb.GetDbInstancePlansArgs{
/// 			DbInstanceId: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gpdbDbInstancePlanId1", ids.Plans[0].Id)
/// 		nameRegex, err := gpdb.GetDbInstancePlans(ctx, &gpdb.GetDbInstancePlansArgs{
/// 			DbInstanceId: "example_value",
/// 			NameRegex:    pulumi.StringRef("^my-DBInstancePlan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gpdbDbInstancePlanId2", nameRegex.Plans[0].Id)
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
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetDbInstancePlansArgs;
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
///         final var ids = GpdbFunctions.getDbInstancePlans(GetDbInstancePlansArgs.builder()
///             .dbInstanceId("example_value")
///             .ids("example_value")
///             .build());
///
///         ctx.export("gpdbDbInstancePlanId1", ids.plans()[0].id());
///         final var nameRegex = GpdbFunctions.getDbInstancePlans(GetDbInstancePlansArgs.builder()
///             .dbInstanceId("example_value")
///             .nameRegex("^my-DBInstancePlan")
///             .build());
///
///         ctx.export("gpdbDbInstancePlanId2", nameRegex.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:gpdb:getDbInstancePlans
///       arguments:
///         dbInstanceId: example_value
///         ids:
///           - example_value
///   nameRegex:
///     fn::invoke:
///       function: alicloud:gpdb:getDbInstancePlans
///       arguments:
///         dbInstanceId: example_value
///         nameRegex: ^my-DBInstancePlan
/// outputs:
///   gpdbDbInstancePlanId1: ${ids.plans[0].id}
///   gpdbDbInstancePlanId2: ${nameRegex.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gpdb_get_db_instance_plans_get_db_instance_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbInstancePlansResult> getDbInstancePlans(
  GetDbInstancePlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:gpdb/getDbInstancePlans:getDbInstancePlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbInstancePlansResult.fromMap(result);
}

/// This data source provides the AnalyticDB for PostgreSQL instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:**  Available in 1.47.0+
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
/// const ids = alicloud.gpdb.getInstances({});
/// export const gpdbDbInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.gpdb.get_instances()
/// pulumi.export("gpdbDbInstanceId1", ids.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Gpdb.GetInstances.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["gpdbDbInstanceId1"] = ids.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := gpdb.GetInstances(ctx, &gpdb.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gpdbDbInstanceId1", ids.Instances[0].Id)
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
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetInstancesArgs;
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
///         final var ids = GpdbFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         ctx.export("gpdbDbInstanceId1", ids.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:gpdb:getInstances
///       arguments: {}
/// outputs:
///   gpdbDbInstanceId1: ${ids.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gpdb_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:gpdb/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides Gpdb Logbackup available to the user.[What is Log Backup](https://www.alibabacloud.com/help/en/)
///
/// &gt; **NOTE:** Available since v1.231.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.gpdb.getInstances({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetLogBackups = Promise.all([_default, _default]).then(([_default, _default1]) => alicloud.gpdb.getLogBackups({
///     startTime: "2022-12-12T02:00Z",
///     endTime: "2024-12-12T02:00Z",
///     dbInstanceId: _default.ids?.[0],
///     ids: [_default1.ids?.[0]],
/// }));
/// export const alicloudGpdbLogbackupExampleId = defaultGetLogBackups.then(defaultGetLogBackups => defaultGetLogBackups.logbackups?.[0]?.dbInstanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.gpdb.get_instances(name_regex="^default-NODELETING$")
/// default_get_log_backups = alicloud.gpdb.get_log_backups(start_time="2022-12-12T02:00Z",
///     end_time="2024-12-12T02:00Z",
///     db_instance_id=default.ids[0],
///     ids=[default.ids[0]])
/// pulumi.export("alicloudGpdbLogbackupExampleId", default_get_log_backups.logbackups[0].db_instance_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Gpdb.GetInstances.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetLogBackups = AliCloud.Gpdb.GetLogBackups.Invoke(new()
///     {
///         StartTime = "2022-12-12T02:00Z",
///         EndTime = "2024-12-12T02:00Z",
///         DbInstanceId = @default.Apply(getInstancesResult => getInstancesResult.Ids[0]),
///         Ids = new[]
///         {
///             @default.Apply(getInstancesResult => getInstancesResult.Ids[0]),
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudGpdbLogbackupExampleId"] = defaultGetLogBackups.Apply(getLogBackupsResult => getLogBackupsResult.Logbackups[0]?.DbInstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := gpdb.GetInstances(ctx, &gpdb.GetInstancesArgs{
/// NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetLogBackups, err := gpdb.GetLogBackups(ctx, &gpdb.GetLogBackupsArgs{
/// StartTime: pulumi.StringRef("2022-12-12T02:00Z"),
/// EndTime: pulumi.StringRef("2024-12-12T02:00Z"),
/// DbInstanceId: _default.Ids[0],
/// Ids: interface{}{
/// _default.Ids[0],
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudGpdbLogbackupExampleId", defaultGetLogBackups.Logbackups[0].DbInstanceId)
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
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.gpdb.inputs.GetLogBackupsArgs;
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
///         final var default = GpdbFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetLogBackups = GpdbFunctions.getLogBackups(GetLogBackupsArgs.builder()
///             .startTime("2022-12-12T02:00Z")
///             .endTime("2024-12-12T02:00Z")
///             .dbInstanceId(default_.ids()[0])
///             .ids(default_.ids()[0])
///             .build());
///
///         ctx.export("alicloudGpdbLogbackupExampleId", defaultGetLogBackups.logbackups()[0].dbInstanceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:gpdb:getInstances
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetLogBackups:
///     fn::invoke:
///       function: alicloud:gpdb:getLogBackups
///       arguments:
///         startTime: 2022-12-12T02:00Z
///         endTime: 2024-12-12T02:00Z
///         dbInstanceId: ${default.ids[0]}
///         ids:
///           - ${default.ids[0]}
/// outputs:
///   alicloudGpdbLogbackupExampleId: ${defaultGetLogBackups.logbackups[0].dbInstanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gpdb_get_log_backups_get_log_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogBackupsResult> getLogBackups(
  GetLogBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:gpdb/getLogBackups:getLogBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogBackupsResult.fromMap(result);
}

/// This data source provides availability zones for Gpdb that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// &gt; **NOTE:** Available in v1.73.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesIds = alicloud.gpdb.getZones({});
/// // Create an Gpdb instance with the first matched zone
/// const hbase = new alicloud.hbase.Instance("hbase", {availabilityZone: zonesIds.then(zonesIds => zonesIds.zones?.[0]?.id)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ids = alicloud.gpdb.get_zones()
/// # Create an Gpdb instance with the first matched zone
/// hbase = alicloud.hbase.Instance("hbase", availability_zone=zones_ids.zones[0].id)
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
///     var zonesIds = AliCloud.Gpdb.GetZones.Invoke();
///
///     // Create an Gpdb instance with the first matched zone
///     var hbase = new AliCloud.Hbase.Instance("hbase", new()
///     {
///         AvailabilityZone = zonesIds.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		zonesIds, err := gpdb.GetZones(ctx, &gpdb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create an Gpdb instance with the first matched zone
/// 		_, err = hbase.NewInstance(ctx, "hbase", &hbase.InstanceArgs{
/// 			AvailabilityZone: zonesIds.Zones[0].Id,
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
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.hbase.Instance;
/// import com.pulumi.alicloud.hbase.InstanceArgs;
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
///         final var zonesIds = GpdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         // Create an Gpdb instance with the first matched zone
///         var hbase = new Instance("hbase", InstanceArgs.builder()
///             .availabilityZone(zonesIds.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create an Gpdb instance with the first matched zone
///   hbase:
///     type: alicloud:hbase:Instance
///     properties:
///       availabilityZone: ${zonesIds.zones[0].id}
/// variables:
///   # Declare the data source
///   zonesIds:
///     fn::invoke:
///       function: alicloud:gpdb:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gpdb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:gpdb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
