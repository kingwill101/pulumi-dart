import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_job_templates_args.dart';
import 'get_job_templates_result.dart';

/// This data source provides the Ehpc Clusters of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.173.0.
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
/// const ids = alicloud.ehpc.getClusters({
///     ids: ["example_id"],
/// });
/// export const ehpcClusterId1 = ids.then(ids => ids.clusters?.[0]?.id);
/// const nameRegex = alicloud.ehpc.getClusters({
///     nameRegex: "^my-Cluster",
/// });
/// export const ehpcClusterId2 = nameRegex.then(nameRegex => nameRegex.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ehpc.get_clusters(ids=["example_id"])
/// pulumi.export("ehpcClusterId1", ids.clusters[0].id)
/// name_regex = alicloud.ehpc.get_clusters(name_regex="^my-Cluster")
/// pulumi.export("ehpcClusterId2", name_regex.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ehpc.GetClusters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Ehpc.GetClusters.Invoke(new()
///     {
///         NameRegex = "^my-Cluster",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ehpcClusterId1"] = ids.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///         ["ehpcClusterId2"] = nameRegex.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ehpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ehpc.GetClusters(ctx, &ehpc.GetClustersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ehpcClusterId1", ids.Clusters[0].Id)
/// 		nameRegex, err := ehpc.GetClusters(ctx, &ehpc.GetClustersArgs{
/// 			NameRegex: pulumi.StringRef("^my-Cluster"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ehpcClusterId2", nameRegex.Clusters[0].Id)
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
/// import com.pulumi.alicloud.ehpc.EhpcFunctions;
/// import com.pulumi.alicloud.ehpc.inputs.GetClustersArgs;
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
///         final var ids = EhpcFunctions.getClusters(GetClustersArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ehpcClusterId1", ids.clusters()[0].id());
///         final var nameRegex = EhpcFunctions.getClusters(GetClustersArgs.builder()
///             .nameRegex("^my-Cluster")
///             .build());
///
///         ctx.export("ehpcClusterId2", nameRegex.clusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ehpc:getClusters
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ehpc:getClusters
///       arguments:
///         nameRegex: ^my-Cluster
/// outputs:
///   ehpcClusterId1: ${ids.clusters[0].id}
///   ehpcClusterId2: ${nameRegex.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ehpc_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ehpc/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// This data source provides the Ehpc Job Templates of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.133.0.
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
/// const _default = new alicloud.ehpc.JobTemplate("default", {
///     jobTemplateName: "example_value",
///     commandLine: "./LammpsTest/lammps.pbs",
/// });
/// const ids = alicloud.ehpc.getJobTemplatesOutput({
///     ids: [_default.id],
/// });
/// export const ehpcJobTemplateId1 = ids.apply(ids => ids.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ehpc.JobTemplate("default",
///     job_template_name="example_value",
///     command_line="./LammpsTest/lammps.pbs")
/// ids = alicloud.ehpc.get_job_templates_output(ids=[default.id])
/// pulumi.export("ehpcJobTemplateId1", ids.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ehpc.JobTemplate("default", new()
///     {
///         JobTemplateName = "example_value",
///         CommandLine = "./LammpsTest/lammps.pbs",
///     });
///
///     var ids = AliCloud.Ehpc.GetJobTemplates.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ehpcJobTemplateId1"] = ids.Apply(getJobTemplatesResult => getJobTemplatesResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ehpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ehpc.NewJobTemplate(ctx, "default", &ehpc.JobTemplateArgs{
/// 			JobTemplateName: pulumi.String("example_value"),
/// 			CommandLine:     pulumi.String("./LammpsTest/lammps.pbs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := ehpc.GetJobTemplatesOutput(ctx, ehpc.GetJobTemplatesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ehpcJobTemplateId1", ids.ApplyT(func(ids ehpc.GetJobTemplatesResult) (*string, error) {
/// 			return &ids.Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ehpc.JobTemplate;
/// import com.pulumi.alicloud.ehpc.JobTemplateArgs;
/// import com.pulumi.alicloud.ehpc.EhpcFunctions;
/// import com.pulumi.alicloud.ehpc.inputs.GetJobTemplatesArgs;
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
///         var default_ = new JobTemplate("default", JobTemplateArgs.builder()
///             .jobTemplateName("example_value")
///             .commandLine("./LammpsTest/lammps.pbs")
///             .build());
///
///         final var ids = EhpcFunctions.getJobTemplates(GetJobTemplatesArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("ehpcJobTemplateId1", ids.applyValue(_ids -> _ids.id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ehpc:JobTemplate
///     properties:
///       jobTemplateName: example_value
///       commandLine: ./LammpsTest/lammps.pbs
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ehpc:getJobTemplates
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   ehpcJobTemplateId1: ${ids.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ehpc_get_job_templates_get_job_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobTemplatesResult> getJobTemplates(
  GetJobTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ehpc/getJobTemplates:getJobTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobTemplatesResult.fromMap(result);
}
