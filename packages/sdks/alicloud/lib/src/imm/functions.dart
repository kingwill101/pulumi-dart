import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_args.dart';
import 'get_projects_result.dart';

/// This data source provides the Intelligent Media Management Projects of the current Alibaba Cloud user.
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
/// const ids = alicloud.imm.getProjects({
///     ids: ["example_id"],
/// });
/// export const immProjectId1 = ids.then(ids => ids.projects?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.imm.get_projects(ids=["example_id"])
/// pulumi.export("immProjectId1", ids.projects[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Imm.GetProjects.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["immProjectId1"] = ids.Apply(getProjectsResult => getProjectsResult.Projects[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/imm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := imm.GetProjects(ctx, &imm.GetProjectsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("immProjectId1", ids.Projects[0].Id)
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
/// import com.pulumi.alicloud.imm.ImmFunctions;
/// import com.pulumi.alicloud.imm.inputs.GetProjectsArgs;
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
///         final var ids = ImmFunctions.getProjects(GetProjectsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("immProjectId1", ids.projects()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:imm:getProjects
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   immProjectId1: ${ids.projects[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imm_get_projects_get_projects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectsResult> getProjects(
  GetProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:imm/getProjects:getProjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectsResult.fromMap(result);
}
