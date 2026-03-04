import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instances_args.dart';
import 'get_db_instances_result.dart';

/// This data source provides the Graph Database Db Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.136.0+.
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
/// const ids = alicloud.graphdatabase.getDbInstances({
///     ids: ["example_id"],
/// });
/// export const graphDatabaseDbInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// const status = alicloud.graphdatabase.getDbInstances({
///     ids: ["example_id"],
///     status: "Running",
/// });
/// export const graphDatabaseDbInstanceId2 = status.then(status => status.instances?.[0]?.id);
/// const description = alicloud.graphdatabase.getDbInstances({
///     ids: ["example_id"],
///     dbInstanceDescription: "example_value",
/// });
/// export const graphDatabaseDbInstanceId3 = description.then(description => description.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.graphdatabase.get_db_instances(ids=["example_id"])
/// pulumi.export("graphDatabaseDbInstanceId1", ids.instances[0].id)
/// status = alicloud.graphdatabase.get_db_instances(ids=["example_id"],
///     status="Running")
/// pulumi.export("graphDatabaseDbInstanceId2", status.instances[0].id)
/// description = alicloud.graphdatabase.get_db_instances(ids=["example_id"],
///     db_instance_description="example_value")
/// pulumi.export("graphDatabaseDbInstanceId3", description.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.GraphDatabase.GetDbInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var status = AliCloud.GraphDatabase.GetDbInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Status = "Running",
///     });
///
///     var description = AliCloud.GraphDatabase.GetDbInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         DbInstanceDescription = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["graphDatabaseDbInstanceId1"] = ids.Apply(getDbInstancesResult => getDbInstancesResult.Instances[0]?.Id),
///         ["graphDatabaseDbInstanceId2"] = status.Apply(getDbInstancesResult => getDbInstancesResult.Instances[0]?.Id),
///         ["graphDatabaseDbInstanceId3"] = description.Apply(getDbInstancesResult => getDbInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/graphdatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := graphdatabase.GetDbInstances(ctx, &graphdatabase.GetDbInstancesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("graphDatabaseDbInstanceId1", ids.Instances[0].Id)
/// 		status, err := graphdatabase.GetDbInstances(ctx, &graphdatabase.GetDbInstancesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Status: pulumi.StringRef("Running"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("graphDatabaseDbInstanceId2", status.Instances[0].Id)
/// 		description, err := graphdatabase.GetDbInstances(ctx, &graphdatabase.GetDbInstancesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			DbInstanceDescription: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("graphDatabaseDbInstanceId3", description.Instances[0].Id)
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
/// import com.pulumi.alicloud.graphdatabase.GraphdatabaseFunctions;
/// import com.pulumi.alicloud.graphdatabase.inputs.GetDbInstancesArgs;
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
///         final var ids = GraphdatabaseFunctions.getDbInstances(GetDbInstancesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("graphDatabaseDbInstanceId1", ids.instances()[0].id());
///         final var status = GraphdatabaseFunctions.getDbInstances(GetDbInstancesArgs.builder()
///             .ids("example_id")
///             .status("Running")
///             .build());
///
///         ctx.export("graphDatabaseDbInstanceId2", status.instances()[0].id());
///         final var description = GraphdatabaseFunctions.getDbInstances(GetDbInstancesArgs.builder()
///             .ids("example_id")
///             .dbInstanceDescription("example_value")
///             .build());
///
///         ctx.export("graphDatabaseDbInstanceId3", description.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:graphdatabase:getDbInstances
///       arguments:
///         ids:
///           - example_id
///   status:
///     fn::invoke:
///       function: alicloud:graphdatabase:getDbInstances
///       arguments:
///         ids:
///           - example_id
///         status: Running
///   description:
///     fn::invoke:
///       function: alicloud:graphdatabase:getDbInstances
///       arguments:
///         ids:
///           - example_id
///         dbInstanceDescription: example_value
/// outputs:
///   graphDatabaseDbInstanceId1: ${ids.instances[0].id}
///   graphDatabaseDbInstanceId2: ${status.instances[0].id}
///   graphDatabaseDbInstanceId3: ${description.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_graphdatabase_get_db_instances_get_db_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbInstancesResult> getDbInstances(
  GetDbInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:graphdatabase/getDbInstances:getDbInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbInstancesResult.fromMap(result);
}
