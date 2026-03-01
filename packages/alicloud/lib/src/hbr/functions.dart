import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_jobs_args.dart';
import 'get_backup_jobs_result.dart';
import 'get_ecs_backup_clients_args.dart';
import 'get_ecs_backup_clients_result.dart';
import 'get_ecs_backup_plans_args.dart';
import 'get_ecs_backup_plans_result.dart';
import 'get_hana_backup_clients_args.dart';
import 'get_hana_backup_clients_result.dart';
import 'get_hana_backup_plans_args.dart';
import 'get_hana_backup_plans_result.dart';
import 'get_hana_instances_args.dart';
import 'get_hana_instances_result.dart';
import 'get_nas_backup_plans_args.dart';
import 'get_nas_backup_plans_result.dart';
import 'get_oss_backup_plans_args.dart';
import 'get_oss_backup_plans_result.dart';
import 'get_ots_backup_plans_args.dart';
import 'get_ots_backup_plans_result.dart';
import 'get_ots_snapshots_args.dart';
import 'get_ots_snapshots_result.dart';
import 'get_replication_vault_regions_args.dart';
import 'get_replication_vault_regions_result.dart';
import 'get_restore_jobs_args.dart';
import 'get_restore_jobs_result.dart';
import 'get_server_backup_plans_args.dart';
import 'get_server_backup_plans_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_snapshots_args.dart';
import 'get_snapshots_result.dart';
import 'get_udm_snapshots_args.dart';
import 'get_udm_snapshots_result.dart';
import 'get_vaults_args.dart';
import 'get_vaults_result.dart';

/// This data source provides the Hbr Backup Jobs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.138.0+.
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
/// const _default = alicloud.hbr.getEcsBackupPlans({
///     nameRegex: "plan-name",
/// });
/// const defaultGetBackupJobs = Promise.all([_default, _default]).then(([_default, _default1]) => alicloud.hbr.getBackupJobs({
///     sourceType: "ECS_FILE",
///     filters: [
///         {
///             key: "VaultId",
///             operator: "IN",
///             values: [_default.plans?.[0]?.vaultId],
///         },
///         {
///             key: "InstanceId",
///             operator: "IN",
///             values: [_default1.plans?.[0]?.instanceId],
///         },
///         {
///             key: "CompleteTime",
///             operator: "BETWEEN",
///             values: [
///                 "2021-08-23T14:17:15CST",
///                 "2021-08-24T14:17:15CST",
///             ],
///         },
///     ],
/// }));
/// const example = Promise.all([_default, _default]).then(([_default, _default1]) => alicloud.hbr.getBackupJobs({
///     sourceType: "ECS_FILE",
///     status: "COMPLETE",
///     filters: [
///         {
///             key: "VaultId",
///             operator: "IN",
///             values: [_default.plans?.[0]?.vaultId],
///         },
///         {
///             key: "InstanceId",
///             operator: "IN",
///             values: [_default1.plans?.[0]?.instanceId],
///         },
///         {
///             key: "CompleteTime",
///             operator: "LESS_THAN",
///             values: ["2021-10-20T20:20:20CST"],
///         },
///     ],
/// }));
/// export const alicloudHbrBackupJobsDefault1 = defaultGetBackupJobs.then(defaultGetBackupJobs => defaultGetBackupJobs.jobs?.[0]?.id);
/// export const alicloudHbrBackupJobsExample1 = example.then(example => example.jobs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.hbr.get_ecs_backup_plans(name_regex="plan-name")
/// default_get_backup_jobs = alicloud.hbr.get_backup_jobs(source_type="ECS_FILE",
///     filters=[
///         {
///             "key": "VaultId",
///             "operator": "IN",
///             "values": [default.plans[0].vault_id],
///         },
///         {
///             "key": "InstanceId",
///             "operator": "IN",
///             "values": [default.plans[0].instance_id],
///         },
///         {
///             "key": "CompleteTime",
///             "operator": "BETWEEN",
///             "values": [
///                 "2021-08-23T14:17:15CST",
///                 "2021-08-24T14:17:15CST",
///             ],
///         },
///     ])
/// example = alicloud.hbr.get_backup_jobs(source_type="ECS_FILE",
///     status="COMPLETE",
///     filters=[
///         {
///             "key": "VaultId",
///             "operator": "IN",
///             "values": [default.plans[0].vault_id],
///         },
///         {
///             "key": "InstanceId",
///             "operator": "IN",
///             "values": [default.plans[0].instance_id],
///         },
///         {
///             "key": "CompleteTime",
///             "operator": "LESS_THAN",
///             "values": ["2021-10-20T20:20:20CST"],
///         },
///     ])
/// pulumi.export("alicloudHbrBackupJobsDefault1", default_get_backup_jobs.jobs[0].id)
/// pulumi.export("alicloudHbrBackupJobsExample1", example.jobs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Hbr.GetEcsBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-name",
///     });
///
///     var defaultGetBackupJobs = AliCloud.Hbr.GetBackupJobs.Invoke(new()
///     {
///         SourceType = "ECS_FILE",
///         Filters = new[]
///         {
///             new AliCloud.Hbr.Inputs.GetBackupJobsFilterInputArgs
///             {
///                 Key = "VaultId",
///                 Operator = "IN",
///                 Values = new[]
///                 {
///                     @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.VaultId),
///                 },
///             },
///             new AliCloud.Hbr.Inputs.GetBackupJobsFilterInputArgs
///             {
///                 Key = "InstanceId",
///                 Operator = "IN",
///                 Values = new[]
///                 {
///                     @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.InstanceId),
///                 },
///             },
///             new AliCloud.Hbr.Inputs.GetBackupJobsFilterInputArgs
///             {
///                 Key = "CompleteTime",
///                 Operator = "BETWEEN",
///                 Values = new[]
///                 {
///                     "2021-08-23T14:17:15CST",
///                     "2021-08-24T14:17:15CST",
///                 },
///             },
///         },
///     });
///
///     var example = AliCloud.Hbr.GetBackupJobs.Invoke(new()
///     {
///         SourceType = "ECS_FILE",
///         Status = "COMPLETE",
///         Filters = new[]
///         {
///             new AliCloud.Hbr.Inputs.GetBackupJobsFilterInputArgs
///             {
///                 Key = "VaultId",
///                 Operator = "IN",
///                 Values = new[]
///                 {
///                     @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.VaultId),
///                 },
///             },
///             new AliCloud.Hbr.Inputs.GetBackupJobsFilterInputArgs
///             {
///                 Key = "InstanceId",
///                 Operator = "IN",
///                 Values = new[]
///                 {
///                     @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.InstanceId),
///                 },
///             },
///             new AliCloud.Hbr.Inputs.GetBackupJobsFilterInputArgs
///             {
///                 Key = "CompleteTime",
///                 Operator = "LESS_THAN",
///                 Values = new[]
///                 {
///                     "2021-10-20T20:20:20CST",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudHbrBackupJobsDefault1"] = defaultGetBackupJobs.Apply(getBackupJobsResult => getBackupJobsResult.Jobs[0]?.Id),
///         ["alicloudHbrBackupJobsExample1"] = example.Apply(getBackupJobsResult => getBackupJobsResult.Jobs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := hbr.GetEcsBackupPlans(ctx, &hbr.GetEcsBackupPlansArgs{
/// NameRegex: pulumi.StringRef("plan-name"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetBackupJobs, err := hbr.GetBackupJobs(ctx, &hbr.GetBackupJobsArgs{
/// SourceType: "ECS_FILE",
/// Filters: []hbr.GetBackupJobsFilter{
/// {
/// Key: pulumi.StringRef("VaultId"),
/// Operator: pulumi.StringRef("IN"),
/// Values: interface{}{
/// _default.Plans[0].VaultId,
/// },
/// },
/// {
/// Key: pulumi.StringRef("InstanceId"),
/// Operator: pulumi.StringRef("IN"),
/// Values: interface{}{
/// _default.Plans[0].InstanceId,
/// },
/// },
/// {
/// Key: pulumi.StringRef("CompleteTime"),
/// Operator: pulumi.StringRef("BETWEEN"),
/// Values: []string{
/// "2021-08-23T14:17:15CST",
/// "2021-08-24T14:17:15CST",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := hbr.GetBackupJobs(ctx, &hbr.GetBackupJobsArgs{
/// SourceType: "ECS_FILE",
/// Status: pulumi.StringRef("COMPLETE"),
/// Filters: []hbr.GetBackupJobsFilter{
/// {
/// Key: pulumi.StringRef("VaultId"),
/// Operator: pulumi.StringRef("IN"),
/// Values: interface{}{
/// _default.Plans[0].VaultId,
/// },
/// },
/// {
/// Key: pulumi.StringRef("InstanceId"),
/// Operator: pulumi.StringRef("IN"),
/// Values: interface{}{
/// _default.Plans[0].InstanceId,
/// },
/// },
/// {
/// Key: pulumi.StringRef("CompleteTime"),
/// Operator: pulumi.StringRef("LESS_THAN"),
/// Values: []string{
/// "2021-10-20T20:20:20CST",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudHbrBackupJobsDefault1", defaultGetBackupJobs.Jobs[0].Id)
/// ctx.Export("alicloudHbrBackupJobsExample1", example.Jobs[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetEcsBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetBackupJobsArgs;
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
///         final var default = HbrFunctions.getEcsBackupPlans(GetEcsBackupPlansArgs.builder()
///             .nameRegex("plan-name")
///             .build());
///
///         final var defaultGetBackupJobs = HbrFunctions.getBackupJobs(GetBackupJobsArgs.builder()
///             .sourceType("ECS_FILE")
///             .filters(
///                 GetBackupJobsFilterArgs.builder()
///                     .key("VaultId")
///                     .operator("IN")
///                     .values(default_.plans()[0].vaultId())
///                     .build(),
///                 GetBackupJobsFilterArgs.builder()
///                     .key("InstanceId")
///                     .operator("IN")
///                     .values(default_.plans()[0].instanceId())
///                     .build(),
///                 GetBackupJobsFilterArgs.builder()
///                     .key("CompleteTime")
///                     .operator("BETWEEN")
///                     .values(
///                         "2021-08-23T14:17:15CST",
///                         "2021-08-24T14:17:15CST")
///                     .build())
///             .build());
///
///         final var example = HbrFunctions.getBackupJobs(GetBackupJobsArgs.builder()
///             .sourceType("ECS_FILE")
///             .status("COMPLETE")
///             .filters(
///                 GetBackupJobsFilterArgs.builder()
///                     .key("VaultId")
///                     .operator("IN")
///                     .values(default_.plans()[0].vaultId())
///                     .build(),
///                 GetBackupJobsFilterArgs.builder()
///                     .key("InstanceId")
///                     .operator("IN")
///                     .values(default_.plans()[0].instanceId())
///                     .build(),
///                 GetBackupJobsFilterArgs.builder()
///                     .key("CompleteTime")
///                     .operator("LESS_THAN")
///                     .values("2021-10-20T20:20:20CST")
///                     .build())
///             .build());
///
///         ctx.export("alicloudHbrBackupJobsDefault1", defaultGetBackupJobs.jobs()[0].id());
///         ctx.export("alicloudHbrBackupJobsExample1", example.jobs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbr:getEcsBackupPlans
///       arguments:
///         nameRegex: plan-name
///   defaultGetBackupJobs:
///     fn::invoke:
///       function: alicloud:hbr:getBackupJobs
///       arguments:
///         sourceType: ECS_FILE
///         filters:
///           - key: VaultId
///             operator: IN
///             values:
///               - ${default.plans[0].vaultId}
///           - key: InstanceId
///             operator: IN
///             values:
///               - ${default.plans[0].instanceId}
///           - key: CompleteTime
///             operator: BETWEEN
///             values:
///               - 2021-08-23T14:17:15CST
///               - 2021-08-24T14:17:15CST
///   example:
///     fn::invoke:
///       function: alicloud:hbr:getBackupJobs
///       arguments:
///         sourceType: ECS_FILE
///         status: COMPLETE
///         filters:
///           - key: VaultId
///             operator: IN
///             values:
///               - ${default.plans[0].vaultId}
///           - key: InstanceId
///             operator: IN
///             values:
///               - ${default.plans[0].instanceId}
///           - key: CompleteTime
///             operator: LESS_THAN
///             values:
///               - 2021-10-20T20:20:20CST
/// outputs:
///   alicloudHbrBackupJobsDefault1: ${defaultGetBackupJobs.jobs[0].id}
///   alicloudHbrBackupJobsExample1: ${example.jobs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_backup_jobs_get_backup_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupJobsResult> getBackupJobs(
  GetBackupJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getBackupJobs:getBackupJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupJobsResult.fromMap(result);
}

/// This data source provides the Hbr Ecs File Backup Clients of the current Alibaba Cloud user.
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
/// const _default = alicloud.ecs.getInstances({
///     nameRegex: "ecs_instance_name",
///     status: "Running",
/// });
/// const ids = alicloud.hbr.getEcsBackupClients({
///     ids: [defaultAlicloudHbrEcsBackupClient.id],
///     instanceIds: [defaultAlicloudHbrEcsBackupClient.instanceId],
/// });
/// export const hbrEcsBackupClientId1 = ids.then(ids => ids.clients?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.get_instances(name_regex="ecs_instance_name",
///     status="Running")
/// ids = alicloud.hbr.get_ecs_backup_clients(ids=[default_alicloud_hbr_ecs_backup_client["id"]],
///     instance_ids=[default_alicloud_hbr_ecs_backup_client["instanceId"]])
/// pulumi.export("hbrEcsBackupClientId1", ids.clients[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecs.GetInstances.Invoke(new()
///     {
///         NameRegex = "ecs_instance_name",
///         Status = "Running",
///     });
///
///     var ids = AliCloud.Hbr.GetEcsBackupClients.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudHbrEcsBackupClient.Id,
///         },
///         InstanceIds = new[]
///         {
///             defaultAlicloudHbrEcsBackupClient.InstanceId,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrEcsBackupClientId1"] = ids.Apply(getEcsBackupClientsResult => getEcsBackupClientsResult.Clients[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.GetInstances(ctx, &ecs.GetInstancesArgs{
/// NameRegex: pulumi.StringRef("ecs_instance_name"),
/// Status: pulumi.StringRef("Running"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ids, err := hbr.GetEcsBackupClients(ctx, &hbr.GetEcsBackupClientsArgs{
/// Ids: interface{}{
/// defaultAlicloudHbrEcsBackupClient.Id,
/// },
/// InstanceIds: interface{}{
/// defaultAlicloudHbrEcsBackupClient.InstanceId,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("hbrEcsBackupClientId1", ids.Clients[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetEcsBackupClientsArgs;
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
///         final var default = EcsFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("ecs_instance_name")
///             .status("Running")
///             .build());
///
///         final var ids = HbrFunctions.getEcsBackupClients(GetEcsBackupClientsArgs.builder()
///             .ids(defaultAlicloudHbrEcsBackupClient.id())
///             .instanceIds(defaultAlicloudHbrEcsBackupClient.instanceId())
///             .build());
///
///         ctx.export("hbrEcsBackupClientId1", ids.clients()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getInstances
///       arguments:
///         nameRegex: ecs_instance_name
///         status: Running
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getEcsBackupClients
///       arguments:
///         ids:
///           - ${defaultAlicloudHbrEcsBackupClient.id}
///         instanceIds:
///           - ${defaultAlicloudHbrEcsBackupClient.instanceId}
/// outputs:
///   hbrEcsBackupClientId1: ${ids.clients[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_ecs_backup_clients_get_ecs_backup_clients_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsBackupClientsResult> getEcsBackupClients(
  GetEcsBackupClientsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getEcsBackupClients:getEcsBackupClients',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsBackupClientsResult.fromMap(result);
}

/// This data source provides the Hbr EcsBackupPlans of the current Alibaba Cloud user.
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
/// const ids = alicloud.hbr.getEcsBackupPlans({
///     nameRegex: "plan-name",
/// });
/// export const hbrEcsBackupPlanId = ids.then(ids => ids.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_ecs_backup_plans(name_regex="plan-name")
/// pulumi.export("hbrEcsBackupPlanId", ids.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetEcsBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrEcsBackupPlanId"] = ids.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := hbr.GetEcsBackupPlans(ctx, &hbr.GetEcsBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("plan-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrEcsBackupPlanId", ids.Plans[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetEcsBackupPlansArgs;
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
///         final var ids = HbrFunctions.getEcsBackupPlans(GetEcsBackupPlansArgs.builder()
///             .nameRegex("plan-name")
///             .build());
///
///         ctx.export("hbrEcsBackupPlanId", ids.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getEcsBackupPlans
///       arguments:
///         nameRegex: plan-name
/// outputs:
///   hbrEcsBackupPlanId: ${ids.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_ecs_backup_plans_get_ecs_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEcsBackupPlansResult> getEcsBackupPlans(
  GetEcsBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getEcsBackupPlans:getEcsBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEcsBackupPlansResult.fromMap(result);
}

/// This data source provides the Hybrid Backup Recovery (HBR) Hana Backup Clients of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in 1.198.0+
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
/// const ids = alicloud.hbr.getHanaBackupClients({
///     ids: ["example_id"],
///     vaultId: "your_vault_id",
/// });
/// export const hbrHanaBackupClientsId1 = ids.then(ids => ids.hanaBackupClients?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_hana_backup_clients(ids=["example_id"],
///     vault_id="your_vault_id")
/// pulumi.export("hbrHanaBackupClientsId1", ids.hana_backup_clients[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetHanaBackupClients.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         VaultId = "your_vault_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrHanaBackupClientsId1"] = ids.Apply(getHanaBackupClientsResult => getHanaBackupClientsResult.HanaBackupClients[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := hbr.GetHanaBackupClients(ctx, &hbr.GetHanaBackupClientsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			VaultId: "your_vault_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrHanaBackupClientsId1", ids.HanaBackupClients[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetHanaBackupClientsArgs;
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
///         final var ids = HbrFunctions.getHanaBackupClients(GetHanaBackupClientsArgs.builder()
///             .ids("example_id")
///             .vaultId("your_vault_id")
///             .build());
///
///         ctx.export("hbrHanaBackupClientsId1", ids.hanaBackupClients()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getHanaBackupClients
///       arguments:
///         ids:
///           - example_id
///         vaultId: your_vault_id
/// outputs:
///   hbrHanaBackupClientsId1: ${ids.hanaBackupClients[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_hana_backup_clients_get_hana_backup_clients_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHanaBackupClientsResult> getHanaBackupClients(
  GetHanaBackupClientsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getHanaBackupClients:getHanaBackupClients',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHanaBackupClientsResult.fromMap(result);
}

/// This data source provides the Hbr Hana Backup Plans of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.179.0+.
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
/// const ids = alicloud.hbr.getHanaBackupPlans({
///     clusterId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const hbrHanaBackupPlanId1 = ids.then(ids => ids.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_hana_backup_plans(cluster_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("hbrHanaBackupPlanId1", ids.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetHanaBackupPlans.Invoke(new()
///     {
///         ClusterId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrHanaBackupPlanId1"] = ids.Apply(getHanaBackupPlansResult => getHanaBackupPlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := hbr.GetHanaBackupPlans(ctx, &hbr.GetHanaBackupPlansArgs{
/// 			ClusterId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrHanaBackupPlanId1", ids.Plans[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetHanaBackupPlansArgs;
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
///         final var ids = HbrFunctions.getHanaBackupPlans(GetHanaBackupPlansArgs.builder()
///             .clusterId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("hbrHanaBackupPlanId1", ids.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getHanaBackupPlans
///       arguments:
///         clusterId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   hbrHanaBackupPlanId1: ${ids.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_hana_backup_plans_get_hana_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHanaBackupPlansResult> getHanaBackupPlans(
  GetHanaBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getHanaBackupPlans:getHanaBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHanaBackupPlansResult.fromMap(result);
}

/// This data source provides the Hbr Hana Instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.178.0+.
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
/// const ids = alicloud.hbr.getHanaInstances({
///     ids: ["example_id"],
/// });
/// export const hbrHanaInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_hana_instances(ids=["example_id"])
/// pulumi.export("hbrHanaInstanceId1", ids.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetHanaInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrHanaInstanceId1"] = ids.Apply(getHanaInstancesResult => getHanaInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := hbr.GetHanaInstances(ctx, &hbr.GetHanaInstancesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrHanaInstanceId1", ids.Instances[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetHanaInstancesArgs;
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
///         final var ids = HbrFunctions.getHanaInstances(GetHanaInstancesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("hbrHanaInstanceId1", ids.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getHanaInstances
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   hbrHanaInstanceId1: ${ids.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_hana_instances_get_hana_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHanaInstancesResult> getHanaInstances(
  GetHanaInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getHanaInstances:getHanaInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHanaInstancesResult.fromMap(result);
}

/// This data source provides the Hbr NasBackupPlans of the current Alibaba Cloud user.
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
/// const ids = alicloud.hbr.getNasBackupPlans({
///     nameRegex: "^my-NasBackupPlan",
/// });
/// export const hbrNasBackupPlanId = ids.then(ids => ids.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_nas_backup_plans(name_regex="^my-NasBackupPlan")
/// pulumi.export("hbrNasBackupPlanId", ids.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetNasBackupPlans.Invoke(new()
///     {
///         NameRegex = "^my-NasBackupPlan",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrNasBackupPlanId"] = ids.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := hbr.GetNasBackupPlans(ctx, &hbr.GetNasBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("^my-NasBackupPlan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrNasBackupPlanId", ids.Plans[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetNasBackupPlansArgs;
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
///         final var ids = HbrFunctions.getNasBackupPlans(GetNasBackupPlansArgs.builder()
///             .nameRegex("^my-NasBackupPlan")
///             .build());
///
///         ctx.export("hbrNasBackupPlanId", ids.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getNasBackupPlans
///       arguments:
///         nameRegex: ^my-NasBackupPlan
/// outputs:
///   hbrNasBackupPlanId: ${ids.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_nas_backup_plans_get_nas_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNasBackupPlansResult> getNasBackupPlans(
  GetNasBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getNasBackupPlans:getNasBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasBackupPlansResult.fromMap(result);
}

/// This data source provides the Hbr OssBackupPlans of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.131.0+.
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
/// const ids = alicloud.hbr.getOssBackupPlans({
///     nameRegex: "^my-OssBackupPlan",
/// });
/// export const hbrOssBackupPlanId = ids.then(ids => ids.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_oss_backup_plans(name_regex="^my-OssBackupPlan")
/// pulumi.export("hbrOssBackupPlanId", ids.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetOssBackupPlans.Invoke(new()
///     {
///         NameRegex = "^my-OssBackupPlan",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrOssBackupPlanId"] = ids.Apply(getOssBackupPlansResult => getOssBackupPlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := hbr.GetOssBackupPlans(ctx, &hbr.GetOssBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("^my-OssBackupPlan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrOssBackupPlanId", ids.Plans[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetOssBackupPlansArgs;
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
///         final var ids = HbrFunctions.getOssBackupPlans(GetOssBackupPlansArgs.builder()
///             .nameRegex("^my-OssBackupPlan")
///             .build());
///
///         ctx.export("hbrOssBackupPlanId", ids.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getOssBackupPlans
///       arguments:
///         nameRegex: ^my-OssBackupPlan
/// outputs:
///   hbrOssBackupPlanId: ${ids.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_oss_backup_plans_get_oss_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOssBackupPlansResult> getOssBackupPlans(
  GetOssBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getOssBackupPlans:getOssBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOssBackupPlansResult.fromMap(result);
}

/// This data source provides the Hbr OtsBackupPlans of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.163.0+.
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
/// const ids = alicloud.hbr.getOtsBackupPlans({
///     nameRegex: "^my-otsBackupPlan",
/// });
/// export const hbrOtsBackupPlanId = plans[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_ots_backup_plans(name_regex="^my-otsBackupPlan")
/// pulumi.export("hbrOtsBackupPlanId", plans[0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetOtsBackupPlans.Invoke(new()
///     {
///         NameRegex = "^my-otsBackupPlan",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrOtsBackupPlanId"] = plans[0].Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hbr.GetOtsBackupPlans(ctx, &hbr.GetOtsBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("^my-otsBackupPlan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrOtsBackupPlanId", plans[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetOtsBackupPlansArgs;
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
///         final var ids = HbrFunctions.getOtsBackupPlans(GetOtsBackupPlansArgs.builder()
///             .nameRegex("^my-otsBackupPlan")
///             .build());
///
///         ctx.export("hbrOtsBackupPlanId", plans[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getOtsBackupPlans
///       arguments:
///         nameRegex: ^my-otsBackupPlan
/// outputs:
///   hbrOtsBackupPlanId: ${plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_ots_backup_plans_get_ots_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOtsBackupPlansResult> getOtsBackupPlans(
  GetOtsBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getOtsBackupPlans:getOtsBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOtsBackupPlansResult.fromMap(result);
}

/// This data source provides the Hbr Ots Snapshots of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.164.0+.
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
/// const snapshots = alicloud.hbr.getOtsSnapshots({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// snapshots = alicloud.hbr.get_ots_snapshots()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshots = AliCloud.Hbr.GetOtsSnapshots.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hbr.GetOtsSnapshots(ctx, &hbr.GetOtsSnapshotsArgs{}, nil)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetOtsSnapshotsArgs;
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
///         final var snapshots = HbrFunctions.getOtsSnapshots(GetOtsSnapshotsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   snapshots:
///     fn::invoke:
///       function: alicloud:hbr:getOtsSnapshots
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_ots_snapshots_get_ots_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOtsSnapshotsResult> getOtsSnapshots(
  GetOtsSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getOtsSnapshots:getOtsSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOtsSnapshotsResult.fromMap(result);
}

/// This data source provides the HBR Replication Vault Regions of the current Alibaba Cloud user.
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
/// const _default = alicloud.hbr.getReplicationVaultRegions({});
/// export const hbrReplicationVaultRegionRegionId1 = _default.then(_default => _default.regions?.[0]?.replicationRegionId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.hbr.get_replication_vault_regions()
/// pulumi.export("hbrReplicationVaultRegionRegionId1", default.regions[0].replication_region_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Hbr.GetReplicationVaultRegions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrReplicationVaultRegionRegionId1"] = @default.Apply(@default => @default.Apply(getReplicationVaultRegionsResult => getReplicationVaultRegionsResult.Regions[0]?.ReplicationRegionId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := hbr.GetReplicationVaultRegions(ctx, &hbr.GetReplicationVaultRegionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrReplicationVaultRegionRegionId1", _default.Regions[0].ReplicationRegionId)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetReplicationVaultRegionsArgs;
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
///         final var default = HbrFunctions.getReplicationVaultRegions(GetReplicationVaultRegionsArgs.builder()
///             .build());
///
///         ctx.export("hbrReplicationVaultRegionRegionId1", default_.regions()[0].replicationRegionId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbr:getReplicationVaultRegions
///       arguments: {}
/// outputs:
///   hbrReplicationVaultRegionRegionId1: ${default.regions[0].replicationRegionId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_replication_vault_regions_get_replication_vault_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationVaultRegionsResult> getReplicationVaultRegions(
  GetReplicationVaultRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getReplicationVaultRegions:getReplicationVaultRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationVaultRegionsResult.fromMap(result);
}

/// This data source provides the Hbr Restore Jobs of the current Alibaba Cloud user.
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
/// const _default = alicloud.hbr.getEcsBackupPlans({
///     nameRegex: "plan-name",
/// });
/// const defaultGetRestoreJobs = Promise.all([_default, _default]).then(([_default, _default1]) => alicloud.hbr.getRestoreJobs({
///     restoreType: "ECS_FILE",
///     vaultIds: [_default.plans?.[0]?.vaultId],
///     targetInstanceIds: [_default1.plans?.[0]?.instanceId],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.hbr.get_ecs_backup_plans(name_regex="plan-name")
/// default_get_restore_jobs = alicloud.hbr.get_restore_jobs(restore_type="ECS_FILE",
///     vault_ids=[default.plans[0].vault_id],
///     target_instance_ids=[default.plans[0].instance_id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Hbr.GetEcsBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-name",
///     });
///
///     var defaultGetRestoreJobs = AliCloud.Hbr.GetRestoreJobs.Invoke(new()
///     {
///         RestoreType = "ECS_FILE",
///         VaultIds = new[]
///         {
///             @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.VaultId),
///         },
///         TargetInstanceIds = new[]
///         {
///             @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.InstanceId),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := hbr.GetEcsBackupPlans(ctx, &hbr.GetEcsBackupPlansArgs{
/// NameRegex: pulumi.StringRef("plan-name"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = hbr.GetRestoreJobs(ctx, &hbr.GetRestoreJobsArgs{
/// RestoreType: "ECS_FILE",
/// VaultIds: interface{}{
/// _default.Plans[0].VaultId,
/// },
/// TargetInstanceIds: interface{}{
/// _default.Plans[0].InstanceId,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetEcsBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetRestoreJobsArgs;
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
///         final var default = HbrFunctions.getEcsBackupPlans(GetEcsBackupPlansArgs.builder()
///             .nameRegex("plan-name")
///             .build());
///
///         final var defaultGetRestoreJobs = HbrFunctions.getRestoreJobs(GetRestoreJobsArgs.builder()
///             .restoreType("ECS_FILE")
///             .vaultIds(default_.plans()[0].vaultId())
///             .targetInstanceIds(default_.plans()[0].instanceId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbr:getEcsBackupPlans
///       arguments:
///         nameRegex: plan-name
///   defaultGetRestoreJobs:
///     fn::invoke:
///       function: alicloud:hbr:getRestoreJobs
///       arguments:
///         restoreType: ECS_FILE
///         vaultIds:
///           - ${default.plans[0].vaultId}
///         targetInstanceIds:
///           - ${default.plans[0].instanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_restore_jobs_get_restore_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestoreJobsResult> getRestoreJobs(
  GetRestoreJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getRestoreJobs:getRestoreJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestoreJobsResult.fromMap(result);
}

/// This data source provides the Hbr Server Backup Plans of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
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
/// const _default = alicloud.ecs.getInstances({
///     nameRegex: "no-deleteing-hbr-ecs-server-backup-plan",
///     status: "Running",
/// });
/// const ids = _default.then(_default => alicloud.hbr.getServerBackupPlans({
///     filters: [{
///         key: "instanceId",
///         values: [_default.instances?.[0]?.id],
///     }],
/// }));
/// export const hbrServerBackupPlanId1 = ids.then(ids => ids.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.get_instances(name_regex="no-deleteing-hbr-ecs-server-backup-plan",
///     status="Running")
/// ids = alicloud.hbr.get_server_backup_plans(filters=[{
///     "key": "instanceId",
///     "values": [default.instances[0].id],
/// }])
/// pulumi.export("hbrServerBackupPlanId1", ids.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecs.GetInstances.Invoke(new()
///     {
///         NameRegex = "no-deleteing-hbr-ecs-server-backup-plan",
///         Status = "Running",
///     });
///
///     var ids = AliCloud.Hbr.GetServerBackupPlans.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new AliCloud.Hbr.Inputs.GetServerBackupPlansFilterInputArgs
///             {
///                 Key = "instanceId",
///                 Values = new[]
///                 {
///                     @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrServerBackupPlanId1"] = ids.Apply(getServerBackupPlansResult => getServerBackupPlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := ecs.GetInstances(ctx, &ecs.GetInstancesArgs{
/// NameRegex: pulumi.StringRef("no-deleteing-hbr-ecs-server-backup-plan"),
/// Status: pulumi.StringRef("Running"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ids, err := hbr.GetServerBackupPlans(ctx, &hbr.GetServerBackupPlansArgs{
/// Filters: []hbr.GetServerBackupPlansFilter{
/// {
/// Key: pulumi.StringRef("instanceId"),
/// Values: interface{}{
/// _default.Instances[0].Id,
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("hbrServerBackupPlanId1", ids.Plans[0].Id)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetServerBackupPlansArgs;
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
///         final var default = EcsFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("no-deleteing-hbr-ecs-server-backup-plan")
///             .status("Running")
///             .build());
///
///         final var ids = HbrFunctions.getServerBackupPlans(GetServerBackupPlansArgs.builder()
///             .filters(GetServerBackupPlansFilterArgs.builder()
///                 .key("instanceId")
///                 .values(default_.instances()[0].id())
///                 .build())
///             .build());
///
///         ctx.export("hbrServerBackupPlanId1", ids.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getInstances
///       arguments:
///         nameRegex: no-deleteing-hbr-ecs-server-backup-plan
///         status: Running
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getServerBackupPlans
///       arguments:
///         filters:
///           - key: instanceId
///             values:
///               - ${default.instances[0].id}
/// outputs:
///   hbrServerBackupPlanId1: ${ids.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_server_backup_plans_get_server_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerBackupPlansResult> getServerBackupPlans(
  GetServerBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getServerBackupPlans:getServerBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerBackupPlansResult.fromMap(result);
}

/// Using this data source can open HBR service automatically. If the service has been opened, it will return opened.
///
/// For information about HBR and how to use it, see [What is HBR](https://www.alibabacloud.com/help/en/hybrid-backup-recovery).
///
/// > **NOTE:** Available since v1.184.0+
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
/// const open = alicloud.hbr.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.hbr.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Hbr.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hbr.GetService(ctx, &hbr.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetServiceArgs;
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
///         final var open = HbrFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:hbr:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Hbr Snapshots of the current Alibaba Cloud user.
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
/// const _default = alicloud.hbr.getEcsBackupPlans({
///     nameRegex: "plan-tf-used-dont-delete",
/// });
/// const defaultGetOssBackupPlans = alicloud.hbr.getOssBackupPlans({
///     nameRegex: "plan-tf-used-dont-delete",
/// });
/// const defaultGetNasBackupPlans = alicloud.hbr.getNasBackupPlans({
///     nameRegex: "plan-tf-used-dont-delete",
/// });
/// const ecsSnapshots = Promise.all([_default, _default]).then(([_default, _default1]) => alicloud.hbr.getSnapshots({
///     sourceType: "ECS_FILE",
///     vaultId: _default.plans?.[0]?.vaultId,
///     instanceId: _default1.plans?.[0]?.instanceId,
/// }));
/// const ossSnapshots = Promise.all([defaultGetOssBackupPlans, defaultGetOssBackupPlans]).then(([defaultGetOssBackupPlans, defaultGetOssBackupPlans1]) => alicloud.hbr.getSnapshots({
///     sourceType: "OSS",
///     vaultId: defaultGetOssBackupPlans.plans?.[0]?.vaultId,
///     bucket: defaultGetOssBackupPlans1.plans?.[0]?.bucket,
///     completeTime: "2021-07-20T14:17:15CST,2021-07-24T14:17:15CST",
///     completeTimeChecker: "BETWEEN",
/// }));
/// const nasSnapshots = Promise.all([defaultGetNasBackupPlans, defaultGetNasBackupPlans, defaultGetNasBackupPlans]).then(([defaultGetNasBackupPlans, defaultGetNasBackupPlans1, defaultGetNasBackupPlans2]) => alicloud.hbr.getSnapshots({
///     sourceType: "NAS",
///     vaultId: defaultGetNasBackupPlans.plans?.[0]?.vaultId,
///     fileSystemId: defaultGetNasBackupPlans1.plans?.[0]?.fileSystemId,
///     createTime: defaultGetNasBackupPlans2.plans?.[0]?.createTime,
///     completeTime: "2021-08-23T14:17:15CST",
///     completeTimeChecker: "GREATER_THAN_OR_EQUAL",
/// }));
/// export const hbrSnapshotId1 = nasSnapshots.then(nasSnapshots => nasSnapshots.snapshots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.hbr.get_ecs_backup_plans(name_regex="plan-tf-used-dont-delete")
/// default_get_oss_backup_plans = alicloud.hbr.get_oss_backup_plans(name_regex="plan-tf-used-dont-delete")
/// default_get_nas_backup_plans = alicloud.hbr.get_nas_backup_plans(name_regex="plan-tf-used-dont-delete")
/// ecs_snapshots = alicloud.hbr.get_snapshots(source_type="ECS_FILE",
///     vault_id=default.plans[0].vault_id,
///     instance_id=default.plans[0].instance_id)
/// oss_snapshots = alicloud.hbr.get_snapshots(source_type="OSS",
///     vault_id=default_get_oss_backup_plans.plans[0].vault_id,
///     bucket=default_get_oss_backup_plans.plans[0].bucket,
///     complete_time="2021-07-20T14:17:15CST,2021-07-24T14:17:15CST",
///     complete_time_checker="BETWEEN")
/// nas_snapshots = alicloud.hbr.get_snapshots(source_type="NAS",
///     vault_id=default_get_nas_backup_plans.plans[0].vault_id,
///     file_system_id=default_get_nas_backup_plans.plans[0].file_system_id,
///     create_time=default_get_nas_backup_plans.plans[0].create_time,
///     complete_time="2021-08-23T14:17:15CST",
///     complete_time_checker="GREATER_THAN_OR_EQUAL")
/// pulumi.export("hbrSnapshotId1", nas_snapshots.snapshots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Hbr.GetEcsBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-tf-used-dont-delete",
///     });
///
///     var defaultGetOssBackupPlans = AliCloud.Hbr.GetOssBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-tf-used-dont-delete",
///     });
///
///     var defaultGetNasBackupPlans = AliCloud.Hbr.GetNasBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-tf-used-dont-delete",
///     });
///
///     var ecsSnapshots = AliCloud.Hbr.GetSnapshots.Invoke(new()
///     {
///         SourceType = "ECS_FILE",
///         VaultId = @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.VaultId),
///         InstanceId = @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.InstanceId),
///     });
///
///     var ossSnapshots = AliCloud.Hbr.GetSnapshots.Invoke(new()
///     {
///         SourceType = "OSS",
///         VaultId = defaultGetOssBackupPlans.Apply(getOssBackupPlansResult => getOssBackupPlansResult.Plans[0]?.VaultId),
///         Bucket = defaultGetOssBackupPlans.Apply(getOssBackupPlansResult => getOssBackupPlansResult.Plans[0]?.Bucket),
///         CompleteTime = "2021-07-20T14:17:15CST,2021-07-24T14:17:15CST",
///         CompleteTimeChecker = "BETWEEN",
///     });
///
///     var nasSnapshots = AliCloud.Hbr.GetSnapshots.Invoke(new()
///     {
///         SourceType = "NAS",
///         VaultId = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.VaultId),
///         FileSystemId = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.FileSystemId),
///         CreateTime = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.CreateTime),
///         CompleteTime = "2021-08-23T14:17:15CST",
///         CompleteTimeChecker = "GREATER_THAN_OR_EQUAL",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrSnapshotId1"] = nasSnapshots.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := hbr.GetEcsBackupPlans(ctx, &hbr.GetEcsBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("plan-tf-used-dont-delete"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetOssBackupPlans, err := hbr.GetOssBackupPlans(ctx, &hbr.GetOssBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("plan-tf-used-dont-delete"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNasBackupPlans, err := hbr.GetNasBackupPlans(ctx, &hbr.GetNasBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("plan-tf-used-dont-delete"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.GetSnapshots(ctx, &hbr.GetSnapshotsArgs{
/// 			SourceType: "ECS_FILE",
/// 			VaultId:    _default.Plans[0].VaultId,
/// 			InstanceId: pulumi.StringRef(_default.Plans[0].InstanceId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.GetSnapshots(ctx, &hbr.GetSnapshotsArgs{
/// 			SourceType:          "OSS",
/// 			VaultId:             defaultGetOssBackupPlans.Plans[0].VaultId,
/// 			Bucket:              pulumi.StringRef(defaultGetOssBackupPlans.Plans[0].Bucket),
/// 			CompleteTime:        pulumi.StringRef("2021-07-20T14:17:15CST,2021-07-24T14:17:15CST"),
/// 			CompleteTimeChecker: pulumi.StringRef("BETWEEN"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nasSnapshots, err := hbr.GetSnapshots(ctx, &hbr.GetSnapshotsArgs{
/// 			SourceType:          "NAS",
/// 			VaultId:             defaultGetNasBackupPlans.Plans[0].VaultId,
/// 			FileSystemId:        pulumi.StringRef(defaultGetNasBackupPlans.Plans[0].FileSystemId),
/// 			CreateTime:          pulumi.StringRef(defaultGetNasBackupPlans.Plans[0].CreateTime),
/// 			CompleteTime:        pulumi.StringRef("2021-08-23T14:17:15CST"),
/// 			CompleteTimeChecker: pulumi.StringRef("GREATER_THAN_OR_EQUAL"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrSnapshotId1", nasSnapshots.Snapshots[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetEcsBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetOssBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetNasBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetSnapshotsArgs;
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
///         final var default = HbrFunctions.getEcsBackupPlans(GetEcsBackupPlansArgs.builder()
///             .nameRegex("plan-tf-used-dont-delete")
///             .build());
///
///         final var defaultGetOssBackupPlans = HbrFunctions.getOssBackupPlans(GetOssBackupPlansArgs.builder()
///             .nameRegex("plan-tf-used-dont-delete")
///             .build());
///
///         final var defaultGetNasBackupPlans = HbrFunctions.getNasBackupPlans(GetNasBackupPlansArgs.builder()
///             .nameRegex("plan-tf-used-dont-delete")
///             .build());
///
///         final var ecsSnapshots = HbrFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .sourceType("ECS_FILE")
///             .vaultId(default_.plans()[0].vaultId())
///             .instanceId(default_.plans()[0].instanceId())
///             .build());
///
///         final var ossSnapshots = HbrFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .sourceType("OSS")
///             .vaultId(defaultGetOssBackupPlans.plans()[0].vaultId())
///             .bucket(defaultGetOssBackupPlans.plans()[0].bucket())
///             .completeTime("2021-07-20T14:17:15CST,2021-07-24T14:17:15CST")
///             .completeTimeChecker("BETWEEN")
///             .build());
///
///         final var nasSnapshots = HbrFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .sourceType("NAS")
///             .vaultId(defaultGetNasBackupPlans.plans()[0].vaultId())
///             .fileSystemId(defaultGetNasBackupPlans.plans()[0].fileSystemId())
///             .createTime(defaultGetNasBackupPlans.plans()[0].createTime())
///             .completeTime("2021-08-23T14:17:15CST")
///             .completeTimeChecker("GREATER_THAN_OR_EQUAL")
///             .build());
///
///         ctx.export("hbrSnapshotId1", nasSnapshots.snapshots()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbr:getEcsBackupPlans
///       arguments:
///         nameRegex: plan-tf-used-dont-delete
///   defaultGetOssBackupPlans:
///     fn::invoke:
///       function: alicloud:hbr:getOssBackupPlans
///       arguments:
///         nameRegex: plan-tf-used-dont-delete
///   defaultGetNasBackupPlans:
///     fn::invoke:
///       function: alicloud:hbr:getNasBackupPlans
///       arguments:
///         nameRegex: plan-tf-used-dont-delete
///   ecsSnapshots:
///     fn::invoke:
///       function: alicloud:hbr:getSnapshots
///       arguments:
///         sourceType: ECS_FILE
///         vaultId: ${default.plans[0].vaultId}
///         instanceId: ${default.plans[0].instanceId}
///   ossSnapshots:
///     fn::invoke:
///       function: alicloud:hbr:getSnapshots
///       arguments:
///         sourceType: OSS
///         vaultId: ${defaultGetOssBackupPlans.plans[0].vaultId}
///         bucket: ${defaultGetOssBackupPlans.plans[0].bucket}
///         completeTime: 2021-07-20T14:17:15CST,2021-07-24T14:17:15CST
///         completeTimeChecker: BETWEEN
///   nasSnapshots:
///     fn::invoke:
///       function: alicloud:hbr:getSnapshots
///       arguments:
///         sourceType: NAS
///         vaultId: ${defaultGetNasBackupPlans.plans[0].vaultId}
///         fileSystemId: ${defaultGetNasBackupPlans.plans[0].fileSystemId}
///         createTime: ${defaultGetNasBackupPlans.plans[0].createTime}
///         completeTime: 2021-08-23T14:17:15CST
///         completeTimeChecker: GREATER_THAN_OR_EQUAL
/// outputs:
///   hbrSnapshotId1: ${nasSnapshots.snapshots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_snapshots_get_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotsResult> getSnapshots(
  GetSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getSnapshots:getSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotsResult.fromMap(result);
}

/// This data source provides Hbr Udm Snapshot available to the user.[What is Udm Snapshot](https://next.api.alibabacloud.com/document/hbr/2017-09-08/DescribeUdmSnapshots)
///
/// > **NOTE:** Available since v1.253.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.hbr.getUdmSnapshots({
///     sourceType: "UDM_ECS",
///     startTime: 1642057551,
///     endTime: 1750927687,
///     instanceId: "i-08qv5q4c4j****",
/// });
/// export const alicloudHbrUdmSnapshotExampleId = _default.then(_default => _default.snapshots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.hbr.get_udm_snapshots(source_type="UDM_ECS",
///     start_time=1642057551,
///     end_time=1750927687,
///     instance_id="i-08qv5q4c4j****")
/// pulumi.export("alicloudHbrUdmSnapshotExampleId", default.snapshots[0].id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.Hbr.GetUdmSnapshots.Invoke(new()
///     {
///         SourceType = "UDM_ECS",
///         StartTime = 1642057551,
///         EndTime = 1750927687,
///         InstanceId = "i-08qv5q4c4j****",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudHbrUdmSnapshotExampleId"] = @default.Apply(@default => @default.Apply(getUdmSnapshotsResult => getUdmSnapshotsResult.Snapshots[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := hbr.GetUdmSnapshots(ctx, &hbr.GetUdmSnapshotsArgs{
/// 			SourceType: "UDM_ECS",
/// 			StartTime:  1642057551,
/// 			EndTime:    1750927687,
/// 			InstanceId: "i-08qv5q4c4j****",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudHbrUdmSnapshotExampleId", _default.Snapshots[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetUdmSnapshotsArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = HbrFunctions.getUdmSnapshots(GetUdmSnapshotsArgs.builder()
///             .sourceType("UDM_ECS")
///             .startTime(1642057551)
///             .endTime(1750927687)
///             .instanceId("i-08qv5q4c4j****")
///             .build());
///
///         ctx.export("alicloudHbrUdmSnapshotExampleId", default_.snapshots()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbr:getUdmSnapshots
///       arguments:
///         sourceType: UDM_ECS
///         startTime: '1642057551'
///         endTime: '1750927687'
///         instanceId: i-08qv5q4c4j****
/// outputs:
///   alicloudHbrUdmSnapshotExampleId: ${default.snapshots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_udm_snapshots_get_udm_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUdmSnapshotsResult> getUdmSnapshots(
  GetUdmSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getUdmSnapshots:getUdmSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUdmSnapshotsResult.fromMap(result);
}

/// This data source provides the Hbr Vaults of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.129.0+.
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
/// const ids = alicloud.hbr.getVaults({
///     nameRegex: "^my-Vault",
/// });
/// export const hbrVaultId1 = ids.then(ids => ids.vaults?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.hbr.get_vaults(name_regex="^my-Vault")
/// pulumi.export("hbrVaultId1", ids.vaults[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Hbr.GetVaults.Invoke(new()
///     {
///         NameRegex = "^my-Vault",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hbrVaultId1"] = ids.Apply(getVaultsResult => getVaultsResult.Vaults[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := hbr.GetVaults(ctx, &hbr.GetVaultsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Vault"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hbrVaultId1", ids.Vaults[0].Id)
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetVaultsArgs;
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
///         final var ids = HbrFunctions.getVaults(GetVaultsArgs.builder()
///             .nameRegex("^my-Vault")
///             .build());
///
///         ctx.export("hbrVaultId1", ids.vaults()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:hbr:getVaults
///       arguments:
///         nameRegex: ^my-Vault
/// outputs:
///   hbrVaultId1: ${ids.vaults[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbr_get_vaults_get_vaults_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVaultsResult> getVaults(
  GetVaultsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbr/getVaults:getVaults',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVaultsResult.fromMap(result);
}
