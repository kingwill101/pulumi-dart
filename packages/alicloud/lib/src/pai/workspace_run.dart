import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_run_args.dart';

/// Provides a PAI Workspace Run resource.
///
///
///
/// For information about PAI Workspace Run and how to use it, see [What is Run](https://next.api.alibabacloud.com/document/AIWorkSpace/2021-02-04/CreateRun).
///
/// > **NOTE:** Available since v1.236.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultCAFUa9 = new alicloud.pai.WorkspaceWorkspace("defaultCAFUa9", {
///     description: name,
///     displayName: name,
///     workspaceName: name,
///     envTypes: ["prod"],
/// });
/// const defaultQRwWbv = new alicloud.pai.WorkspaceExperiment("defaultQRwWbv", {
///     accessibility: "PRIVATE",
///     artifactUri: "oss://example.oss-cn-hangzhou.aliyuncs.com/example/",
///     experimentName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     workspaceId: defaultCAFUa9.id,
/// });
/// const _default = new alicloud.pai.WorkspaceRun("default", {
///     sourceType: "TrainingService",
///     sourceId: "759",
///     runName: name,
///     experimentId: defaultQRwWbv.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_caf_ua9 = alicloud.pai.WorkspaceWorkspace("defaultCAFUa9",
///     description=name,
///     display_name=name,
///     workspace_name=name,
///     env_types=["prod"])
/// default_q_rw_wbv = alicloud.pai.WorkspaceExperiment("defaultQRwWbv",
///     accessibility="PRIVATE",
///     artifact_uri="oss://example.oss-cn-hangzhou.aliyuncs.com/example/",
///     experiment_name=std.format(input="%s1",
///         args=[name]).result,
///     workspace_id=default_caf_ua9.id)
/// default = alicloud.pai.WorkspaceRun("default",
///     source_type="TrainingService",
///     source_id="759",
///     run_name=name,
///     experiment_id=default_q_rw_wbv.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultCAFUa9 = new AliCloud.Pai.WorkspaceWorkspace("defaultCAFUa9", new()
///     {
///         Description = name,
///         DisplayName = name,
///         WorkspaceName = name,
///         EnvTypes = new[]
///         {
///             "prod",
///         },
///     });
///
///     var defaultQRwWbv = new AliCloud.Pai.WorkspaceExperiment("defaultQRwWbv", new()
///     {
///         Accessibility = "PRIVATE",
///         ArtifactUri = "oss://example.oss-cn-hangzhou.aliyuncs.com/example/",
///         ExperimentName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         WorkspaceId = defaultCAFUa9.Id,
///     });
///
///     var @default = new AliCloud.Pai.WorkspaceRun("default", new()
///     {
///         SourceType = "TrainingService",
///         SourceId = "759",
///         RunName = name,
///         ExperimentId = defaultQRwWbv.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultCAFUa9, err := pai.NewWorkspaceWorkspace(ctx, "defaultCAFUa9", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String(name),
/// 			DisplayName:   pulumi.String(name),
/// 			WorkspaceName: pulumi.String(name),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQRwWbv, err := pai.NewWorkspaceExperiment(ctx, "defaultQRwWbv", &pai.WorkspaceExperimentArgs{
/// 			Accessibility:  pulumi.String("PRIVATE"),
/// 			ArtifactUri:    pulumi.String("oss://example.oss-cn-hangzhou.aliyuncs.com/example/"),
/// 			ExperimentName: pulumi.String(invokeFormat.Result),
/// 			WorkspaceId:    defaultCAFUa9.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pai.NewWorkspaceRun(ctx, "default", &pai.WorkspaceRunArgs{
/// 			SourceType:   pulumi.String("TrainingService"),
/// 			SourceId:     pulumi.String("759"),
/// 			RunName:      pulumi.String(name),
/// 			ExperimentId: defaultQRwWbv.ID(),
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
/// import com.pulumi.alicloud.pai.WorkspaceWorkspace;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspaceArgs;
/// import com.pulumi.alicloud.pai.WorkspaceExperiment;
/// import com.pulumi.alicloud.pai.WorkspaceExperimentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.pai.WorkspaceRun;
/// import com.pulumi.alicloud.pai.WorkspaceRunArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var defaultCAFUa9 = new WorkspaceWorkspace("defaultCAFUa9", WorkspaceWorkspaceArgs.builder()
///             .description(name)
///             .displayName(name)
///             .workspaceName(name)
///             .envTypes("prod")
///             .build());
///
///         var defaultQRwWbv = new WorkspaceExperiment("defaultQRwWbv", WorkspaceExperimentArgs.builder()
///             .accessibility("PRIVATE")
///             .artifactUri("oss://example.oss-cn-hangzhou.aliyuncs.com/example/")
///             .experimentName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .workspaceId(defaultCAFUa9.id())
///             .build());
///
///         var default_ = new WorkspaceRun("default", WorkspaceRunArgs.builder()
///             .sourceType("TrainingService")
///             .sourceId("759")
///             .runName(name)
///             .experimentId(defaultQRwWbv.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   defaultCAFUa9:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: ${name}
///       displayName: ${name}
///       workspaceName: ${name}
///       envTypes:
///         - prod
///   defaultQRwWbv:
///     type: alicloud:pai:WorkspaceExperiment
///     properties:
///       accessibility: PRIVATE
///       artifactUri: oss://example.oss-cn-hangzhou.aliyuncs.com/example/
///       experimentName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///       workspaceId: ${defaultCAFUa9.id}
///   default:
///     type: alicloud:pai:WorkspaceRun
///     properties:
///       sourceType: TrainingService
///       sourceId: '759'
///       runName: ${name}
///       experimentId: ${defaultQRwWbv.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Run can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceRun:WorkspaceRun example <id>
/// ```
class WorkspaceRun extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Resource attribute field of the experiment ID to which Run belongs
  late final pulumi.Output<String> experimentId;
  /// The name of the resource
  late final pulumi.Output<String?> runName;
  /// Attribute Resource field representing the source task ID
  late final pulumi.Output<String?> sourceId;
  /// Resource attribute fields representing the source type
  late final pulumi.Output<String?> sourceType;

  /// Creates a new [WorkspaceRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceRun]. {@macro pulumi_pai_workspace_run_workspace_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceRun(
    String name, {
    WorkspaceRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceRun:WorkspaceRun',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.experimentId = registerOutput<String>('experimentId');
    this.runName = registerOutput<String?>('runName');
    this.sourceId = registerOutput<String?>('sourceId');
    this.sourceType = registerOutput<String?>('sourceType');
  }
}
