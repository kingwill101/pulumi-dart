import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_workspace_args.dart';

/// Provides a PAI Workspace Workspace resource.
///
///
///
/// For information about PAI Workspace Workspace and how to use it, see [What is Workspace](https://next.api.alibabacloud.com/document/AIWorkSpace/2021-02-04/CreateWorkspace).
///
/// > **NOTE:** Available since v1.233.0.
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
/// const _default = new alicloud.pai.WorkspaceWorkspace("default", {
///     description: name,
///     workspaceName: name,
///     displayName: name,
///     envTypes: ["prod"],
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
/// default = alicloud.pai.WorkspaceWorkspace("default",
///     description=name,
///     workspace_name=name,
///     display_name=name,
///     env_types=["prod"])
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
///     var @default = new AliCloud.Pai.WorkspaceWorkspace("default", new()
///     {
///         Description = name,
///         WorkspaceName = name,
///         DisplayName = name,
///         EnvTypes = new[]
///         {
///             "prod",
///         },
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
/// 		_, err := pai.NewWorkspaceWorkspace(ctx, "default", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String(name),
/// 			WorkspaceName: pulumi.String(name),
/// 			DisplayName:   pulumi.String(name),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
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
///         var default_ = new WorkspaceWorkspace("default", WorkspaceWorkspaceArgs.builder()
///             .description(name)
///             .workspaceName(name)
///             .displayName(name)
///             .envTypes("prod")
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
///   default:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: ${name}
///       workspaceName: ${name}
///       displayName: ${name}
///       envTypes:
///         - prod
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Workspace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceWorkspace:WorkspaceWorkspace example <id>
/// ```
class WorkspaceWorkspace extends pulumi.CustomResource {
  /// The UTC time when the workspace is created. The time format is ISO8601.
  late final pulumi.Output<String> createTime;
  /// Workspace description, no more than 80 characters.
  late final pulumi.Output<String> description;
  /// It is recommended that you name the workspace based on the business attribute to identify the purpose of the workspace. If not configured, the default value is the workspace name.
  late final pulumi.Output<String?> displayName;
  /// Environments contained in the workspace:
  /// - Simple mode only production environment (prod).
  /// - Standard mode includes development environment (dev) and production environment (prod).
  late final pulumi.Output<List<String>> envTypes;
  /// Workspace state, possible values:
  late final pulumi.Output<String> status;
  /// The workspace name. The format is as follows:
  /// - 3 to 23 characters in length and can contain letters, underscores, or numbers.
  /// - Must start with a large or small letter.
  /// - Unique in the current region.
  late final pulumi.Output<String> workspaceName;

  /// Creates a new [WorkspaceWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceWorkspace]. {@macro pulumi_pai_workspace_workspace_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceWorkspace(
    String name, {
    WorkspaceWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceWorkspace:WorkspaceWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.envTypes = registerOutput<List<String>>('envTypes');
    this.status = registerOutput<String>('status');
    this.workspaceName = registerOutput<String>('workspaceName');
  }
}
