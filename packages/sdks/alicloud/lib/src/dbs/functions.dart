import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plans_args.dart';
import 'get_backup_plans_result.dart';

/// This data source provides the Dbs Backup Plans of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.185.0+.
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
/// const ids = alicloud.dbs.getBackupPlans({});
/// export const dbsBackupPlanId1 = ids.then(ids => ids.plans?.[0]?.id);
/// const nameRegex = alicloud.dbs.getBackupPlans({
///     nameRegex: "^my-BackupPlan",
/// });
/// export const dbsBackupPlanId2 = nameRegex.then(nameRegex => nameRegex.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dbs.get_backup_plans()
/// pulumi.export("dbsBackupPlanId1", ids.plans[0].id)
/// name_regex = alicloud.dbs.get_backup_plans(name_regex="^my-BackupPlan")
/// pulumi.export("dbsBackupPlanId2", name_regex.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.DBS.GetBackupPlans.Invoke();
///
///     var nameRegex = AliCloud.DBS.GetBackupPlans.Invoke(new()
///     {
///         NameRegex = "^my-BackupPlan",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dbsBackupPlanId1"] = ids.Apply(getBackupPlansResult => getBackupPlansResult.Plans[0]?.Id),
///         ["dbsBackupPlanId2"] = nameRegex.Apply(getBackupPlansResult => getBackupPlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dbs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dbs.GetBackupPlans(ctx, &dbs.GetBackupPlansArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dbsBackupPlanId1", ids.Plans[0].Id)
/// 		nameRegex, err := dbs.GetBackupPlans(ctx, &dbs.GetBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("^my-BackupPlan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dbsBackupPlanId2", nameRegex.Plans[0].Id)
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
/// import com.pulumi.alicloud.dbs.DbsFunctions;
/// import com.pulumi.alicloud.dbs.inputs.GetBackupPlansArgs;
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
///         final var ids = DbsFunctions.getBackupPlans(GetBackupPlansArgs.builder()
///             .build());
///
///         ctx.export("dbsBackupPlanId1", ids.plans()[0].id());
///         final var nameRegex = DbsFunctions.getBackupPlans(GetBackupPlansArgs.builder()
///             .nameRegex("^my-BackupPlan")
///             .build());
///
///         ctx.export("dbsBackupPlanId2", nameRegex.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dbs:getBackupPlans
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:dbs:getBackupPlans
///       arguments:
///         nameRegex: ^my-BackupPlan
/// outputs:
///   dbsBackupPlanId1: ${ids.plans[0].id}
///   dbsBackupPlanId2: ${nameRegex.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dbs_get_backup_plans_get_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlansResult> getBackupPlans(
  GetBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dbs/getBackupPlans:getBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlansResult.fromMap(result);
}
