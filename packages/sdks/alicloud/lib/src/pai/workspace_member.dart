import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_member_args.dart';
import 'workspace_member_state.dart';

/// Provides a PAI Workspace Member resource.
///
///
///
/// For information about PAI Workspace Member and how to use it, see [What is Member](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-createmember).
///
/// &gt; **NOTE:** Available since v1.249.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const workspace = new alicloud.pai.WorkspaceWorkspace("Workspace", {
///     description: "156",
///     displayName: name,
///     workspaceName: `${name}_${_default.result}`,
///     envTypes: ["prod"],
/// });
/// const defaultUser = new alicloud.ram.User("default", {name: `${name}-${_default.result}`});
/// const defaultWorkspaceMember = new alicloud.pai.WorkspaceMember("default", {
///     userId: defaultUser.id,
///     workspaceId: workspace.id,
///     roles: [
///         "PAI.AlgoDeveloper",
///         "PAI.AlgoOperator",
///         "PAI.LabelManager",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// workspace = alicloud.pai.WorkspaceWorkspace("Workspace",
///     description="156",
///     display_name=name,
///     workspace_name=f"{name}_{default['result']}",
///     env_types=["prod"])
/// default_user = alicloud.ram.User("default", name=f"{name}-{default['result']}")
/// default_workspace_member = alicloud.pai.WorkspaceMember("default",
///     user_id=default_user.id,
///     workspace_id=workspace.id,
///     roles=[
///         "PAI.AlgoDeveloper",
///         "PAI.AlgoOperator",
///         "PAI.LabelManager",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var workspace = new AliCloud.Pai.WorkspaceWorkspace("Workspace", new()
///     {
///         Description = "156",
///         DisplayName = name,
///         WorkspaceName = $"{name}_{@default.Result}",
///         EnvTypes = new[]
///         {
///             "prod",
///         },
///     });
///
///     var defaultUser = new AliCloud.Ram.User("default", new()
///     {
///         Name = $"{name}-{@default.Result}",
///     });
///
///     var defaultWorkspaceMember = new AliCloud.Pai.WorkspaceMember("default", new()
///     {
///         UserId = defaultUser.Id,
///         WorkspaceId = workspace.Id,
///         Roles = new[]
///         {
///             "PAI.AlgoDeveloper",
///             "PAI.AlgoOperator",
///             "PAI.LabelManager",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspace, err := pai.NewWorkspaceWorkspace(ctx, "Workspace", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String("156"),
/// 			DisplayName:   pulumi.String(name),
/// 			WorkspaceName: pulumi.Sprintf("%v_%v", name, _default.Result),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUser, err := ram.NewUser(ctx, "default", &ram.UserArgs{
/// 			Name: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pai.NewWorkspaceMember(ctx, "default", &pai.WorkspaceMemberArgs{
/// 			UserId:      defaultUser.ID(),
/// 			WorkspaceId: workspace.ID(),
/// 			Roles: pulumi.StringArray{
/// 				pulumi.String("PAI.AlgoDeveloper"),
/// 				pulumi.String("PAI.AlgoOperator"),
/// 				pulumi.String("PAI.LabelManager"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspace;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspaceArgs;
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.pai.WorkspaceMember;
/// import com.pulumi.alicloud.pai.WorkspaceMemberArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var workspace = new WorkspaceWorkspace("workspace", WorkspaceWorkspaceArgs.builder()
///             .description("156")
///             .displayName(name)
///             .workspaceName(String.format("%s_%s", name,default_.result()))
///             .envTypes("prod")
///             .build());
///
///         var defaultUser = new User("defaultUser", UserArgs.builder()
///             .name(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultWorkspaceMember = new WorkspaceMember("defaultWorkspaceMember", WorkspaceMemberArgs.builder()
///             .userId(defaultUser.id())
///             .workspaceId(workspace.id())
///             .roles(
///                 "PAI.AlgoDeveloper",
///                 "PAI.AlgoOperator",
///                 "PAI.LabelManager")
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   workspace:
///     type: alicloud:pai:WorkspaceWorkspace
///     name: Workspace
///     properties:
///       description: '156'
///       displayName: ${name}
///       workspaceName: ${name}_${default.result}
///       envTypes:
///         - prod
///   defaultUser:
///     type: alicloud:ram:User
///     name: default
///     properties:
///       name: ${name}-${default.result}
///   defaultWorkspaceMember:
///     type: alicloud:pai:WorkspaceMember
///     name: default
///     properties:
///       userId: ${defaultUser.id}
///       workspaceId: ${workspace.id}
///       roles:
///         - PAI.AlgoDeveloper
///         - PAI.AlgoOperator
///         - PAI.LabelManager
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Member can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceMember:WorkspaceMember example <workspace_id>:<member_id>
/// ```
class WorkspaceMember extends pulumi.CustomResource {
  /// The time when the workspace is created, in UTC. The time follows the ISO 8601 standard.
  late final pulumi.Output<String> createTime;
  /// The member ID.
  late final pulumi.Output<String> memberId;
  /// The list of roles. see [how to use it](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-createmember).
  late final pulumi.Output<List<String>> roles;
  /// The ID of the User.
  late final pulumi.Output<String> userId;
  /// The ID of the Workspace.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceMember]. {@macro pulumi_pai_workspace_member_workspace_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceMember(
    String name, {
    WorkspaceMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceMember:WorkspaceMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    memberId = registerOutput<String>('memberId');
    roles = registerOutput<List<String>>('roles');
    userId = registerOutput<String>('userId');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceMember] resource's state with the given [name] and [id].
  static WorkspaceMember get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceMemberState? state,
  }) {
    return WorkspaceMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceMember:WorkspaceMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    memberId = registerOutput<String>('memberId');
    roles = registerOutput<List<String>>('roles');
    userId = registerOutput<String>('userId');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
