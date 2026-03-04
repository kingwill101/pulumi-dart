import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_channels_args.dart';
import 'get_consumer_channels_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_migration_jobs_args.dart';
import 'get_migration_jobs_result.dart';
import 'get_subscription_jobs_args.dart';
import 'get_subscription_jobs_result.dart';
import 'get_synchronization_jobs_args.dart';
import 'get_synchronization_jobs_result.dart';

/// This data source provides the Dts Consumer Channels of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.146.0+.
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
/// const ids = alicloud.dts.getConsumerChannels({});
/// export const dtsConsumerChannelId1 = ids.then(ids => ids.channels?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dts.get_consumer_channels()
/// pulumi.export("dtsConsumerChannelId1", ids.channels[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dts.GetConsumerChannels.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["dtsConsumerChannelId1"] = ids.Apply(getConsumerChannelsResult => getConsumerChannelsResult.Channels[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dts.GetConsumerChannels(ctx, &dts.GetConsumerChannelsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dtsConsumerChannelId1", ids.Channels[0].Id)
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
/// import com.pulumi.alicloud.dts.DtsFunctions;
/// import com.pulumi.alicloud.dts.inputs.GetConsumerChannelsArgs;
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
///         final var ids = DtsFunctions.getConsumerChannels(GetConsumerChannelsArgs.builder()
///             .build());
///
///         ctx.export("dtsConsumerChannelId1", ids.channels()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dts:getConsumerChannels
///       arguments: {}
/// outputs:
///   dtsConsumerChannelId1: ${ids.channels[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dts_get_consumer_channels_get_consumer_channels_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumerChannelsResult> getConsumerChannels(
  GetConsumerChannelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dts/getConsumerChannels:getConsumerChannels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumerChannelsResult.fromMap(result);
}

/// This data source provides Dts Instance available to the user.[What is Instance](https://www.alibabacloud.com/help/en/data-transmission-service/latest/createdtsinstance)
///
/// &gt; **NOTE:** Available in 1.198.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.dts.getInstances({
///     ids: [defaultAlicloudDtsInstance.id],
///     resourceGroupId: "example_value",
/// });
/// export const alicloudDtsInstanceExampleId = _default.then(_default => _default.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dts.get_instances(ids=[default_alicloud_dts_instance["id"]],
///     resource_group_id="example_value")
/// pulumi.export("alicloudDtsInstanceExampleId", default.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Dts.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudDtsInstance.Id,
///         },
///         ResourceGroupId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudDtsInstanceExampleId"] = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := dts.GetInstances(ctx, &dts.GetInstancesArgs{
/// Ids: interface{}{
/// defaultAlicloudDtsInstance.Id,
/// },
/// ResourceGroupId: pulumi.StringRef("example_value"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudDtsInstanceExampleId", _default.Instances[0].Id)
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
/// import com.pulumi.alicloud.dts.DtsFunctions;
/// import com.pulumi.alicloud.dts.inputs.GetInstancesArgs;
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
///         final var default = DtsFunctions.getInstances(GetInstancesArgs.builder()
///             .ids(defaultAlicloudDtsInstance.id())
///             .resourceGroupId("example_value")
///             .build());
///
///         ctx.export("alicloudDtsInstanceExampleId", default_.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:dts:getInstances
///       arguments:
///         ids:
///           - ${defaultAlicloudDtsInstance.id}
///         resourceGroupId: example_value
/// outputs:
///   alicloudDtsInstanceExampleId: ${default.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dts_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dts/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Dts Migration Jobs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.157.0+.
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
/// const ids = alicloud.dts.getMigrationJobs({
///     ids: ["dts_job_id"],
/// });
/// export const dtsMigrationJobId1 = ids.then(ids => ids.jobs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dts.get_migration_jobs(ids=["dts_job_id"])
/// pulumi.export("dtsMigrationJobId1", ids.jobs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dts.GetMigrationJobs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "dts_job_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dtsMigrationJobId1"] = ids.Apply(getMigrationJobsResult => getMigrationJobsResult.Jobs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dts.GetMigrationJobs(ctx, &dts.GetMigrationJobsArgs{
/// 			Ids: []string{
/// 				"dts_job_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dtsMigrationJobId1", ids.Jobs[0].Id)
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
/// import com.pulumi.alicloud.dts.DtsFunctions;
/// import com.pulumi.alicloud.dts.inputs.GetMigrationJobsArgs;
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
///         final var ids = DtsFunctions.getMigrationJobs(GetMigrationJobsArgs.builder()
///             .ids("dts_job_id")
///             .build());
///
///         ctx.export("dtsMigrationJobId1", ids.jobs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dts:getMigrationJobs
///       arguments:
///         ids:
///           - dts_job_id
/// outputs:
///   dtsMigrationJobId1: ${ids.jobs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dts_get_migration_jobs_get_migration_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationJobsResult> getMigrationJobs(
  GetMigrationJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dts/getMigrationJobs:getMigrationJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobsResult.fromMap(result);
}

/// This data source provides the Dts Subscription Jobs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.138.0+.
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
/// const ids = alicloud.dts.getSubscriptionJobs({});
/// export const dtsSubscriptionJobId1 = ids.then(ids => ids.jobs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dts.get_subscription_jobs()
/// pulumi.export("dtsSubscriptionJobId1", ids.jobs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dts.GetSubscriptionJobs.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["dtsSubscriptionJobId1"] = ids.Apply(getSubscriptionJobsResult => getSubscriptionJobsResult.Jobs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dts.GetSubscriptionJobs(ctx, &dts.GetSubscriptionJobsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dtsSubscriptionJobId1", ids.Jobs[0].Id)
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
/// import com.pulumi.alicloud.dts.DtsFunctions;
/// import com.pulumi.alicloud.dts.inputs.GetSubscriptionJobsArgs;
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
///         final var ids = DtsFunctions.getSubscriptionJobs(GetSubscriptionJobsArgs.builder()
///             .build());
///
///         ctx.export("dtsSubscriptionJobId1", ids.jobs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dts:getSubscriptionJobs
///       arguments: {}
/// outputs:
///   dtsSubscriptionJobId1: ${ids.jobs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dts_get_subscription_jobs_get_subscription_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionJobsResult> getSubscriptionJobs(
  GetSubscriptionJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dts/getSubscriptionJobs:getSubscriptionJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionJobsResult.fromMap(result);
}

/// This data source provides the Dts Synchronization Jobs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.138.0+.
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
/// const ids = alicloud.dts.getSynchronizationJobs({});
/// export const dtsSynchronizationJobId1 = ids.then(ids => ids.jobs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dts.get_synchronization_jobs()
/// pulumi.export("dtsSynchronizationJobId1", ids.jobs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dts.GetSynchronizationJobs.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["dtsSynchronizationJobId1"] = ids.Apply(getSynchronizationJobsResult => getSynchronizationJobsResult.Jobs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dts.GetSynchronizationJobs(ctx, &dts.GetSynchronizationJobsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dtsSynchronizationJobId1", ids.Jobs[0].Id)
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
/// import com.pulumi.alicloud.dts.DtsFunctions;
/// import com.pulumi.alicloud.dts.inputs.GetSynchronizationJobsArgs;
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
///         final var ids = DtsFunctions.getSynchronizationJobs(GetSynchronizationJobsArgs.builder()
///             .build());
///
///         ctx.export("dtsSynchronizationJobId1", ids.jobs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dts:getSynchronizationJobs
///       arguments: {}
/// outputs:
///   dtsSynchronizationJobId1: ${ids.jobs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dts_get_synchronization_jobs_get_synchronization_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSynchronizationJobsResult> getSynchronizationJobs(
  GetSynchronizationJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dts/getSynchronizationJobs:getSynchronizationJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSynchronizationJobsResult.fromMap(result);
}
