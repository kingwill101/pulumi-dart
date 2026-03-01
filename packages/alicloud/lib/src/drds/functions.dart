import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_args.dart';
import 'get_instances_result.dart';

/// The `alicloud.drds.Instance` data source provides a collection of DRDS instances available in Alibaba Cloud account.
/// Filters support regular expression for the instance name, searches by tags, and other filters which are listed below.
///
/// > **NOTE:** Available in 1.35.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const drdsInstancesDs = alicloud.drds.getInstances({
///     nameRegex: "drds-\\d+",
///     ids: ["drdsabc123456"],
/// });
/// export const firstDbInstanceId = drdsInstancesDs.then(drdsInstancesDs => drdsInstancesDs.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// drds_instances_ds = alicloud.drds.get_instances(name_regex="drds-\\d+",
///     ids=["drdsabc123456"])
/// pulumi.export("firstDbInstanceId", drds_instances_ds.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var drdsInstancesDs = AliCloud.Drds.GetInstances.Invoke(new()
///     {
///         NameRegex = "drds-\\d+",
///         Ids = new[]
///         {
///             "drdsabc123456",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDbInstanceId"] = drdsInstancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/drds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		drdsInstancesDs, err := drds.GetInstances(ctx, &drds.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("drds-\\d+"),
/// 			Ids: []string{
/// 				"drdsabc123456",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDbInstanceId", drdsInstancesDs.Instances[0].Id)
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
/// import com.pulumi.alicloud.drds.DrdsFunctions;
/// import com.pulumi.alicloud.drds.inputs.GetInstancesArgs;
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
///         final var drdsInstancesDs = DrdsFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("drds-\\d+")
///             .ids("drdsabc123456")
///             .build());
///
///         ctx.export("firstDbInstanceId", drdsInstancesDs.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   drdsInstancesDs:
///     fn::invoke:
///       function: alicloud:drds:getInstances
///       arguments:
///         nameRegex: drds-\d+
///         ids:
///           - drdsabc123456
/// outputs:
///   firstDbInstanceId: ${drdsInstancesDs.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_drds_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:drds/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}
