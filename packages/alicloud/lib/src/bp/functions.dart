import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_studio_applications_args.dart';
import 'get_studio_applications_result.dart';

/// This data source provides the Cloud Architect Design Tools (BPStudio) Applications of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.192.0+.
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
/// const ids = alicloud.bp.getStudioApplications({
///     ids: ["example_id"],
/// });
/// export const bpStudioApplicationId1 = ids.then(ids => ids.applications?.[0]?.id);
/// const nameRegex = alicloud.bp.getStudioApplications({
///     nameRegex: "^my-Application",
/// });
/// export const bpStudioApplicationId2 = nameRegex.then(nameRegex => nameRegex.applications?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.bp.get_studio_applications(ids=["example_id"])
/// pulumi.export("bpStudioApplicationId1", ids.applications[0].id)
/// name_regex = alicloud.bp.get_studio_applications(name_regex="^my-Application")
/// pulumi.export("bpStudioApplicationId2", name_regex.applications[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Bp.GetStudioApplications.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Bp.GetStudioApplications.Invoke(new()
///     {
///         NameRegex = "^my-Application",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bpStudioApplicationId1"] = ids.Apply(getStudioApplicationsResult => getStudioApplicationsResult.Applications[0]?.Id),
///         ["bpStudioApplicationId2"] = nameRegex.Apply(getStudioApplicationsResult => getStudioApplicationsResult.Applications[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := bp.GetStudioApplications(ctx, &bp.GetStudioApplicationsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bpStudioApplicationId1", ids.Applications[0].Id)
/// 		nameRegex, err := bp.GetStudioApplications(ctx, &bp.GetStudioApplicationsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Application"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bpStudioApplicationId2", nameRegex.Applications[0].Id)
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
/// import com.pulumi.alicloud.bp.BpFunctions;
/// import com.pulumi.alicloud.bp.inputs.GetStudioApplicationsArgs;
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
///         final var ids = BpFunctions.getStudioApplications(GetStudioApplicationsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("bpStudioApplicationId1", ids.applications()[0].id());
///         final var nameRegex = BpFunctions.getStudioApplications(GetStudioApplicationsArgs.builder()
///             .nameRegex("^my-Application")
///             .build());
///
///         ctx.export("bpStudioApplicationId2", nameRegex.applications()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:bp:getStudioApplications
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:bp:getStudioApplications
///       arguments:
///         nameRegex: ^my-Application
/// outputs:
///   bpStudioApplicationId1: ${ids.applications[0].id}
///   bpStudioApplicationId2: ${nameRegex.applications[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bp_get_studio_applications_get_studio_applications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStudioApplicationsResult> getStudioApplications(
  GetStudioApplicationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bp/getStudioApplications:getStudioApplications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudioApplicationsResult.fromMap(result);
}
