import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_member_args.dart';
import 'project_member_role.dart';
import 'project_member_state.dart';

/// Provides a Data Works Project Member resource.
///
///
///
/// For information about Data Works Project Member and how to use it, see [What is Project Member](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createprojectmember).
///
/// > **NOTE:** Available since v1.237.0.
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
/// const adminCode = config.get("adminCode") || "role_project_admin";
/// const name = config.get("name") || "tf_example";
/// const randint = new random.index.Integer("randint", {
///     max: 999,
///     min: 1,
/// });
/// const defaultKCTrB2 = new alicloud.ram.User("defaultKCTrB2", {
///     displayName: `${name}${randint.id}`,
///     name: `${name}${randint.id}`,
/// });
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultQeRfvU = new alicloud.dataworks.Project("defaultQeRfvU", {
///     status: "Available",
///     description: "tf_desc",
///     projectName: `${name}${randint.id}`,
///     paiTaskEnabled: false,
///     displayName: "tf_new_api_display",
///     devRoleDisabled: true,
///     devEnvironmentEnabled: false,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
/// });
/// const defaultProjectMember = new alicloud.dataworks.ProjectMember("default", {
///     userId: defaultKCTrB2.id,
///     projectId: defaultQeRfvU.id,
///     roles: [{
///         code: adminCode,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// admin_code = config.get("adminCode")
/// if admin_code is None:
///     admin_code = "role_project_admin"
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// randint = random.index.Integer("randint",
///     max=999,
///     min=1)
/// default_kc_tr_b2 = alicloud.ram.User("defaultKCTrB2",
///     display_name=f"{name}{randint['id']}",
///     name=f"{name}{randint['id']}")
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_qe_rfv_u = alicloud.dataworks.Project("defaultQeRfvU",
///     status="Available",
///     description="tf_desc",
///     project_name=f"{name}{randint['id']}",
///     pai_task_enabled=False,
///     display_name="tf_new_api_display",
///     dev_role_disabled=True,
///     dev_environment_enabled=False,
///     resource_group_id=default.ids[0])
/// default_project_member = alicloud.dataworks.ProjectMember("default",
///     user_id=default_kc_tr_b2.id,
///     project_id=default_qe_rfv_u.id,
///     roles=[{
///         "code": admin_code,
///     }])
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
///     var adminCode = config.Get("adminCode") ?? "role_project_admin";
///     var name = config.Get("name") ?? "tf_example";
///     var randint = new Random.Index.Integer("randint", new()
///     {
///         Max = 999,
///         Min = 1,
///     });
///
///     var defaultKCTrB2 = new AliCloud.Ram.User("defaultKCTrB2", new()
///     {
///         DisplayName = $"{name}{randint.Id}",
///         Name = $"{name}{randint.Id}",
///     });
///
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultQeRfvU = new AliCloud.DataWorks.Project("defaultQeRfvU", new()
///     {
///         Status = "Available",
///         Description = "tf_desc",
///         ProjectName = $"{name}{randint.Id}",
///         PaiTaskEnabled = false,
///         DisplayName = "tf_new_api_display",
///         DevRoleDisabled = true,
///         DevEnvironmentEnabled = false,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
///     var defaultProjectMember = new AliCloud.DataWorks.ProjectMember("default", new()
///     {
///         UserId = defaultKCTrB2.Id,
///         ProjectId = defaultQeRfvU.Id,
///         Roles = new[]
///         {
///             new AliCloud.DataWorks.Inputs.ProjectMemberRoleArgs
///             {
///                 Code = adminCode,
///             },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		adminCode := "role_project_admin"
/// 		if param := cfg.Get("adminCode"); param != "" {
/// 			adminCode = param
/// 		}
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		randint, err := random.NewInteger(ctx, "randint", &random.IntegerArgs{
/// 			Max: 999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKCTrB2, err := ram.NewUser(ctx, "defaultKCTrB2", &ram.UserArgs{
/// 			DisplayName: pulumi.Sprintf("%v%v", name, randint.Id),
/// 			Name:        pulumi.Sprintf("%v%v", name, randint.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQeRfvU, err := dataworks.NewProject(ctx, "defaultQeRfvU", &dataworks.ProjectArgs{
/// 			Status:                pulumi.String("Available"),
/// 			Description:           pulumi.String("tf_desc"),
/// 			ProjectName:           pulumi.Sprintf("%v%v", name, randint.Id),
/// 			PaiTaskEnabled:        pulumi.Bool(false),
/// 			DisplayName:           pulumi.String("tf_new_api_display"),
/// 			DevRoleDisabled:       pulumi.Bool(true),
/// 			DevEnvironmentEnabled: pulumi.Bool(false),
/// 			ResourceGroupId:       pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataworks.NewProjectMember(ctx, "default", &dataworks.ProjectMemberArgs{
/// 			UserId:    defaultKCTrB2.ID(),
/// 			ProjectId: defaultQeRfvU.ID(),
/// 			Roles: dataworks.ProjectMemberRoleArray{
/// 				&dataworks.ProjectMemberRoleArgs{
/// 					Code: pulumi.String(adminCode),
/// 				},
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
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.dataworks.Project;
/// import com.pulumi.alicloud.dataworks.ProjectArgs;
/// import com.pulumi.alicloud.dataworks.ProjectMember;
/// import com.pulumi.alicloud.dataworks.ProjectMemberArgs;
/// import com.pulumi.alicloud.dataworks.inputs.ProjectMemberRoleArgs;
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
///         final var adminCode = config.get("adminCode").orElse("role_project_admin");
///         final var name = config.get("name").orElse("tf_example");
///         var randint = new Integer("randint", IntegerArgs.builder()
///             .max(999)
///             .min(1)
///             .build());
///
///         var defaultKCTrB2 = new User("defaultKCTrB2", UserArgs.builder()
///             .displayName(String.format("%s%s", name,randint.id()))
///             .name(String.format("%s%s", name,randint.id()))
///             .build());
///
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultQeRfvU = new Project("defaultQeRfvU", ProjectArgs.builder()
///             .status("Available")
///             .description("tf_desc")
///             .projectName(String.format("%s%s", name,randint.id()))
///             .paiTaskEnabled(false)
///             .displayName("tf_new_api_display")
///             .devRoleDisabled(true)
///             .devEnvironmentEnabled(false)
///             .resourceGroupId(default_.ids()[0])
///             .build());
///
///         var defaultProjectMember = new ProjectMember("defaultProjectMember", ProjectMemberArgs.builder()
///             .userId(defaultKCTrB2.id())
///             .projectId(defaultQeRfvU.id())
///             .roles(ProjectMemberRoleArgs.builder()
///                 .code(adminCode)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   adminCode:
///     type: string
///     default: role_project_admin
///   name:
///     type: string
///     default: tf_example
/// resources:
///   randint:
///     type: random:Integer
///     properties:
///       max: 999
///       min: 1
///   defaultKCTrB2:
///     type: alicloud:ram:User
///     properties:
///       displayName: ${name}${randint.id}
///       name: ${name}${randint.id}
///   defaultQeRfvU:
///     type: alicloud:dataworks:Project
///     properties:
///       status: Available
///       description: tf_desc
///       projectName: ${name}${randint.id}
///       paiTaskEnabled: 'false'
///       displayName: tf_new_api_display
///       devRoleDisabled: 'true'
///       devEnvironmentEnabled: 'false'
///       resourceGroupId: ${default.ids[0]}
///   defaultProjectMember:
///     type: alicloud:dataworks:ProjectMember
///     name: default
///     properties:
///       userId: ${defaultKCTrB2.id}
///       projectId: ${defaultQeRfvU.id}
///       roles:
///         - code: ${adminCode}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Works Project Member can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/projectMember:ProjectMember example <project_id>:<user_id>
/// ```
class ProjectMember extends pulumi.CustomResource {
  /// Project ID
  late final pulumi.Output<int> projectId;
  /// List of roles owned by members. See `roles` below.
  late final pulumi.Output<List<ProjectMemberRole>?> roles;
  /// The status of the user in project
  late final pulumi.Output<String> status;
  /// The user ID of the member.
  late final pulumi.Output<String> userId;

  /// Creates a new [ProjectMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectMember]. {@macro pulumi_dataworks_project_member_project_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectMember(
    String name, {
    ProjectMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/projectMember:ProjectMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.projectId = registerOutput<int>('projectId');
    this.roles = registerOutput<List<ProjectMemberRole>?>('roles');
    this.status = registerOutput<String>('status');
    this.userId = registerOutput<String>('userId');
  }

  /// Gets an existing [ProjectMember] resource's state with the given [name] and [id].
  static ProjectMember get(
    String name,
    pulumi.Input<String> id, {
    ProjectMemberState? state,
  }) {
    return ProjectMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/projectMember:ProjectMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.projectId = registerOutput<int>('projectId');
    this.roles = registerOutput<List<ProjectMemberRole>?>('roles');
    this.status = registerOutput<String>('status');
    this.userId = registerOutput<String>('userId');
  }
}
