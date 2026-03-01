import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_experiment_args.dart';

/// Provides a PAI Workspace Experiment resource.
///
///
///
/// For information about PAI Workspace Experiment and how to use it, see [What is Experiment](https://next.api.alibabacloud.com/document/AIWorkSpace/2021-02-04/CreateExperiment).
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultDI9fsL = new alicloud.pai.WorkspaceWorkspace("defaultDI9fsL", {
///     description: name,
///     displayName: name,
///     workspaceName: name,
///     envTypes: ["prod"],
/// });
/// const _default = new alicloud.pai.WorkspaceExperiment("default", {
///     accessibility: "PRIVATE",
///     artifactUri: "oss://yyt-409262.oss-cn-hangzhou.aliyuncs.com/example/",
///     experimentName: name,
///     workspaceId: defaultDI9fsL.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_di9fs_l = alicloud.pai.WorkspaceWorkspace("defaultDI9fsL",
///     description=name,
///     display_name=name,
///     workspace_name=name,
///     env_types=["prod"])
/// default = alicloud.pai.WorkspaceExperiment("default",
///     accessibility="PRIVATE",
///     artifact_uri="oss://yyt-409262.oss-cn-hangzhou.aliyuncs.com/example/",
///     experiment_name=name,
///     workspace_id=default_di9fs_l.id)
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
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultDI9fsL = new AliCloud.Pai.WorkspaceWorkspace("defaultDI9fsL", new()
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
///     var @default = new AliCloud.Pai.WorkspaceExperiment("default", new()
///     {
///         Accessibility = "PRIVATE",
///         ArtifactUri = "oss://yyt-409262.oss-cn-hangzhou.aliyuncs.com/example/",
///         ExperimentName = name,
///         WorkspaceId = defaultDI9fsL.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
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
/// 		defaultDI9fsL, err := pai.NewWorkspaceWorkspace(ctx, "defaultDI9fsL", &pai.WorkspaceWorkspaceArgs{
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
/// 		_, err = pai.NewWorkspaceExperiment(ctx, "default", &pai.WorkspaceExperimentArgs{
/// 			Accessibility:  pulumi.String("PRIVATE"),
/// 			ArtifactUri:    pulumi.String("oss://yyt-409262.oss-cn-hangzhou.aliyuncs.com/example/"),
/// 			ExperimentName: pulumi.String(name),
/// 			WorkspaceId:    defaultDI9fsL.ID(),
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
///         var defaultDI9fsL = new WorkspaceWorkspace("defaultDI9fsL", WorkspaceWorkspaceArgs.builder()
///             .description(name)
///             .displayName(name)
///             .workspaceName(name)
///             .envTypes("prod")
///             .build());
///
///         var default_ = new WorkspaceExperiment("default", WorkspaceExperimentArgs.builder()
///             .accessibility("PRIVATE")
///             .artifactUri("oss://yyt-409262.oss-cn-hangzhou.aliyuncs.com/example/")
///             .experimentName(name)
///             .workspaceId(defaultDI9fsL.id())
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
///   defaultDI9fsL:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: ${name}
///       displayName: ${name}
///       workspaceName: ${name}
///       envTypes:
///         - prod
///   default:
///     type: alicloud:pai:WorkspaceExperiment
///     properties:
///       accessibility: PRIVATE
///       artifactUri: oss://yyt-409262.oss-cn-hangzhou.aliyuncs.com/example/
///       experimentName: ${name}
///       workspaceId: ${defaultDI9fsL.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Experiment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceExperiment:WorkspaceExperiment example <id>
/// ```
class WorkspaceExperiment extends pulumi.CustomResource {
  /// Experimental Visibility
  late final pulumi.Output<String> accessibility;
  /// ArtifactUri is default OSS storage path of the output of trials in the experiment
  late final pulumi.Output<String> artifactUri;
  /// GmtCreateTime is time when this entity is created.
  late final pulumi.Output<String> createTime;
  /// Name is the name of the experiment, unique in a namespace
  late final pulumi.Output<String> experimentName;
  /// WorkspaceId is the workspace id which contains the experiment
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceExperiment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceExperiment]. {@macro pulumi_pai_workspace_experiment_workspace_experiment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceExperiment(
    String name, {
    WorkspaceExperimentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceExperiment:WorkspaceExperiment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessibility = registerOutput<String>('accessibility');
    this.artifactUri = registerOutput<String>('artifactUri');
    this.createTime = registerOutput<String>('createTime');
    this.experimentName = registerOutput<String>('experimentName');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
