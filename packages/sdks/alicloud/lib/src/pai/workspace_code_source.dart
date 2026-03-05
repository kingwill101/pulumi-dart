import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_code_source_args.dart';
import 'workspace_code_source_state.dart';

/// Provides a PAI Workspace Code Source resource.
///
///
///
/// For information about PAI Workspace Code Source and how to use it, see [What is Code Source](https://next.api.alibabacloud.com/document/AIWorkSpace/2021-02-04/CreateCodeSource).
///
/// &gt; **NOTE:** Available since v1.236.0.
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
/// const defaultgklBnM = new alicloud.pai.WorkspaceWorkspace("defaultgklBnM", {
///     description: "for-pop-example",
///     displayName: "CodeSourceTest_1732796227",
///     workspaceName: name,
///     envTypes: ["prod"],
/// });
/// const _default = new alicloud.pai.WorkspaceCodeSource("default", {
///     mountPath: "/mnt/code/dir_01/",
///     codeRepo: "https://github.com/mattn/go-sqlite3.git",
///     description: "desc-01",
///     codeRepoAccessToken: "token-01",
///     accessibility: "PRIVATE",
///     displayName: "codesource-example-01",
///     workspaceId: defaultgklBnM.id,
///     codeBranch: "master",
///     codeRepoUserName: "user-01",
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
/// defaultgkl_bn_m = alicloud.pai.WorkspaceWorkspace("defaultgklBnM",
///     description="for-pop-example",
///     display_name="CodeSourceTest_1732796227",
///     workspace_name=name,
///     env_types=["prod"])
/// default = alicloud.pai.WorkspaceCodeSource("default",
///     mount_path="/mnt/code/dir_01/",
///     code_repo="https://github.com/mattn/go-sqlite3.git",
///     description="desc-01",
///     code_repo_access_token="token-01",
///     accessibility="PRIVATE",
///     display_name="codesource-example-01",
///     workspace_id=defaultgkl_bn_m.id,
///     code_branch="master",
///     code_repo_user_name="user-01")
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
///     var defaultgklBnM = new AliCloud.Pai.WorkspaceWorkspace("defaultgklBnM", new()
///     {
///         Description = "for-pop-example",
///         DisplayName = "CodeSourceTest_1732796227",
///         WorkspaceName = name,
///         EnvTypes = new[]
///         {
///             "prod",
///         },
///     });
///
///     var @default = new AliCloud.Pai.WorkspaceCodeSource("default", new()
///     {
///         MountPath = "/mnt/code/dir_01/",
///         CodeRepo = "https://github.com/mattn/go-sqlite3.git",
///         Description = "desc-01",
///         CodeRepoAccessToken = "token-01",
///         Accessibility = "PRIVATE",
///         DisplayName = "codesource-example-01",
///         WorkspaceId = defaultgklBnM.Id,
///         CodeBranch = "master",
///         CodeRepoUserName = "user-01",
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
/// 		defaultgklBnM, err := pai.NewWorkspaceWorkspace(ctx, "defaultgklBnM", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String("for-pop-example"),
/// 			DisplayName:   pulumi.String("CodeSourceTest_1732796227"),
/// 			WorkspaceName: pulumi.String(name),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("prod"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pai.NewWorkspaceCodeSource(ctx, "default", &pai.WorkspaceCodeSourceArgs{
/// 			MountPath:           pulumi.String("/mnt/code/dir_01/"),
/// 			CodeRepo:            pulumi.String("https://github.com/mattn/go-sqlite3.git"),
/// 			Description:         pulumi.String("desc-01"),
/// 			CodeRepoAccessToken: pulumi.String("token-01"),
/// 			Accessibility:       pulumi.String("PRIVATE"),
/// 			DisplayName:         pulumi.String("codesource-example-01"),
/// 			WorkspaceId:         defaultgklBnM.ID(),
/// 			CodeBranch:          pulumi.String("master"),
/// 			CodeRepoUserName:    pulumi.String("user-01"),
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
/// import com.pulumi.alicloud.pai.WorkspaceCodeSource;
/// import com.pulumi.alicloud.pai.WorkspaceCodeSourceArgs;
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
///         var defaultgklBnM = new WorkspaceWorkspace("defaultgklBnM", WorkspaceWorkspaceArgs.builder()
///             .description("for-pop-example")
///             .displayName("CodeSourceTest_1732796227")
///             .workspaceName(name)
///             .envTypes("prod")
///             .build());
///
///         var default_ = new WorkspaceCodeSource("default", WorkspaceCodeSourceArgs.builder()
///             .mountPath("/mnt/code/dir_01/")
///             .codeRepo("https://github.com/mattn/go-sqlite3.git")
///             .description("desc-01")
///             .codeRepoAccessToken("token-01")
///             .accessibility("PRIVATE")
///             .displayName("codesource-example-01")
///             .workspaceId(defaultgklBnM.id())
///             .codeBranch("master")
///             .codeRepoUserName("user-01")
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
///   defaultgklBnM:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: for-pop-example
///       displayName: CodeSourceTest_1732796227
///       workspaceName: ${name}
///       envTypes:
///         - prod
///   default:
///     type: alicloud:pai:WorkspaceCodeSource
///     properties:
///       mountPath: /mnt/code/dir_01/
///       codeRepo: https://github.com/mattn/go-sqlite3.git
///       description: desc-01
///       codeRepoAccessToken: token-01
///       accessibility: PRIVATE
///       displayName: codesource-example-01
///       workspaceId: ${defaultgklBnM.id}
///       codeBranch: master
///       codeRepoUserName: user-01
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace Code Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceCodeSource:WorkspaceCodeSource example <id>
/// ```
class WorkspaceCodeSource extends pulumi.CustomResource {
  /// Visibility of the code configuration, possible values:
  /// - PRIVATE: In this workspace, it is only visible to you and the administrator.
  /// - PUBLIC: In this workspace, it is visible to everyone.
  late final pulumi.Output<String> accessibility;
  /// Code repository branch.
  late final pulumi.Output<String?> codeBranch;
  /// The code CommitId.
  late final pulumi.Output<String?> codeCommit;
  /// Code repository address.
  late final pulumi.Output<String> codeRepo;
  /// The Token used to access the code repository.
  late final pulumi.Output<String?> codeRepoAccessToken;
  /// The user name of the code repository.
  late final pulumi.Output<String?> codeRepoUserName;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// A detailed description of the code configuration.
  late final pulumi.Output<String?> description;
  /// Code source configuration name.
  late final pulumi.Output<String> displayName;
  /// The local Mount Directory of the code.
  late final pulumi.Output<String> mountPath;
  /// The ID of the workspace.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceCodeSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceCodeSource]. {@macro pulumi_pai_workspace_code_source_workspace_code_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceCodeSource(
    String name, {
    WorkspaceCodeSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceCodeSource:WorkspaceCodeSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessibility = registerOutput<String>('accessibility');
    codeBranch = registerOutput<String?>('codeBranch');
    codeCommit = registerOutput<String?>('codeCommit');
    codeRepo = registerOutput<String>('codeRepo');
    codeRepoAccessToken = registerOutput<String?>('codeRepoAccessToken');
    codeRepoUserName = registerOutput<String?>('codeRepoUserName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    mountPath = registerOutput<String>('mountPath');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceCodeSource] resource's state with the given [name] and [id].
  static WorkspaceCodeSource get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceCodeSourceState? state,
  }) {
    return WorkspaceCodeSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceCodeSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/workspaceCodeSource:WorkspaceCodeSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessibility = registerOutput<String>('accessibility');
    codeBranch = registerOutput<String?>('codeBranch');
    codeCommit = registerOutput<String?>('codeCommit');
    codeRepo = registerOutput<String>('codeRepo');
    codeRepoAccessToken = registerOutput<String?>('codeRepoAccessToken');
    codeRepoUserName = registerOutput<String?>('codeRepoUserName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    mountPath = registerOutput<String>('mountPath');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
