import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nest_service_instances_args.dart';
import 'get_nest_service_instances_result.dart';

/// This data source provides the Compute Nest Service Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.205.0+.
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
/// const ids = alicloud.compute.getNestServiceInstances({
///     ids: ["example_id"],
/// });
/// export const armsPrometheisId1 = ids.then(ids => ids.serviceInstances?.[0]?.id);
/// const nameRegex = alicloud.compute.getNestServiceInstances({
///     nameRegex: "tf-example",
/// });
/// export const armsPrometheisId2 = nameRegex.then(nameRegex => nameRegex.serviceInstances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.compute.get_nest_service_instances(ids=["example_id"])
/// pulumi.export("armsPrometheisId1", ids.service_instances[0].id)
/// name_regex = alicloud.compute.get_nest_service_instances(name_regex="tf-example")
/// pulumi.export("armsPrometheisId2", name_regex.service_instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Compute.GetNestServiceInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Compute.GetNestServiceInstances.Invoke(new()
///     {
///         NameRegex = "tf-example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsPrometheisId1"] = ids.Apply(getNestServiceInstancesResult => getNestServiceInstancesResult.ServiceInstances[0]?.Id),
///         ["armsPrometheisId2"] = nameRegex.Apply(getNestServiceInstancesResult => getNestServiceInstancesResult.ServiceInstances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := compute.GetNestServiceInstances(ctx, &compute.GetNestServiceInstancesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsPrometheisId1", ids.ServiceInstances[0].Id)
/// 		nameRegex, err := compute.GetNestServiceInstances(ctx, &compute.GetNestServiceInstancesArgs{
/// 			NameRegex: pulumi.StringRef("tf-example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsPrometheisId2", nameRegex.ServiceInstances[0].Id)
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
/// import com.pulumi.alicloud.compute.ComputeFunctions;
/// import com.pulumi.alicloud.compute.inputs.GetNestServiceInstancesArgs;
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
///         final var ids = ComputeFunctions.getNestServiceInstances(GetNestServiceInstancesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("armsPrometheisId1", ids.serviceInstances()[0].id());
///         final var nameRegex = ComputeFunctions.getNestServiceInstances(GetNestServiceInstancesArgs.builder()
///             .nameRegex("tf-example")
///             .build());
///
///         ctx.export("armsPrometheisId2", nameRegex.serviceInstances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:compute:getNestServiceInstances
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:compute:getNestServiceInstances
///       arguments:
///         nameRegex: tf-example
/// outputs:
///   armsPrometheisId1: ${ids.serviceInstances[0].id}
///   armsPrometheisId2: ${nameRegex.serviceInstances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_nest_service_instances_get_nest_service_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNestServiceInstancesResult> getNestServiceInstances(
  GetNestServiceInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:compute/getNestServiceInstances:getNestServiceInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNestServiceInstancesResult.fromMap(result);
}
