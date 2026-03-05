import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_user_attachment_args.dart';
import 'role_user_attachment_state.dart';

/// Provides a Max Compute Role User Attachment resource.
///
/// Resources associated with a user and a project-level role.
///
/// For information about Max Compute Role User Attachment and how to use it, see [What is Role User Attachment](https://www.alibabacloud.com/help/en/).
///
/// &gt; **NOTE:** Available since v1.242.0.
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
/// const name = config.get("name") || "terraform-example";
/// const aliyunUser = config.get("aliyunUser") || "ALIYUN$openapiautomation@test.aliyunid.com";
/// const ramUser = config.get("ramUser") || "RAM$openapiautomation@test.aliyunid.com:tf-example";
/// const ramRole = config.get("ramRole") || "RAM$openapiautomation@test.aliyunid.com:role/terraform-no-ak-assumerole-no-deleting";
/// const roleName = config.get("roleName") || "role_project_admin";
/// const projectName = config.get("projectName") || "default_project_669886c";
/// const _default = new alicloud.maxcompute.RoleUserAttachment("default", {
///     roleName: roleName,
///     user: ramRole,
///     projectName: projectName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// aliyun_user = config.get("aliyunUser")
/// if aliyun_user is None:
///     aliyun_user = "ALIYUN$openapiautomation@test.aliyunid.com"
/// ram_user = config.get("ramUser")
/// if ram_user is None:
///     ram_user = "RAM$openapiautomation@test.aliyunid.com:tf-example"
/// ram_role = config.get("ramRole")
/// if ram_role is None:
///     ram_role = "RAM$openapiautomation@test.aliyunid.com:role/terraform-no-ak-assumerole-no-deleting"
/// role_name = config.get("roleName")
/// if role_name is None:
///     role_name = "role_project_admin"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "default_project_669886c"
/// default = alicloud.maxcompute.RoleUserAttachment("default",
///     role_name=role_name,
///     user=ram_role,
///     project_name=project_name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var aliyunUser = config.Get("aliyunUser") ?? "ALIYUN$openapiautomation@test.aliyunid.com";
///     var ramUser = config.Get("ramUser") ?? "RAM$openapiautomation@test.aliyunid.com:tf-example";
///     var ramRole = config.Get("ramRole") ?? "RAM$openapiautomation@test.aliyunid.com:role/terraform-no-ak-assumerole-no-deleting";
///     var roleName = config.Get("roleName") ?? "role_project_admin";
///     var projectName = config.Get("projectName") ?? "default_project_669886c";
///     var @default = new AliCloud.MaxCompute.RoleUserAttachment("default", new()
///     {
///         RoleName = roleName,
///         User = ramRole,
///         ProjectName = projectName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/maxcompute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		aliyunUser := "ALIYUN$openapiautomation@test.aliyunid.com"
/// 		if param := cfg.Get("aliyunUser"); param != "" {
/// 			aliyunUser = param
/// 		}
/// 		ramUser := "RAM$openapiautomation@test.aliyunid.com:tf-example"
/// 		if param := cfg.Get("ramUser"); param != "" {
/// 			ramUser = param
/// 		}
/// 		ramRole := "RAM$openapiautomation@test.aliyunid.com:role/terraform-no-ak-assumerole-no-deleting"
/// 		if param := cfg.Get("ramRole"); param != "" {
/// 			ramRole = param
/// 		}
/// 		roleName := "role_project_admin"
/// 		if param := cfg.Get("roleName"); param != "" {
/// 			roleName = param
/// 		}
/// 		projectName := "default_project_669886c"
/// 		if param := cfg.Get("projectName"); param != "" {
/// 			projectName = param
/// 		}
/// 		_, err := maxcompute.NewRoleUserAttachment(ctx, "default", &maxcompute.RoleUserAttachmentArgs{
/// 			RoleName:    pulumi.String(roleName),
/// 			User:        pulumi.String(ramRole),
/// 			ProjectName: pulumi.String(projectName),
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
/// import com.pulumi.alicloud.maxcompute.RoleUserAttachment;
/// import com.pulumi.alicloud.maxcompute.RoleUserAttachmentArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var aliyunUser = config.get("aliyunUser").orElse("ALIYUN$openapiautomation@test.aliyunid.com");
///         final var ramUser = config.get("ramUser").orElse("RAM$openapiautomation@test.aliyunid.com:tf-example");
///         final var ramRole = config.get("ramRole").orElse("RAM$openapiautomation@test.aliyunid.com:role/terraform-no-ak-assumerole-no-deleting");
///         final var roleName = config.get("roleName").orElse("role_project_admin");
///         final var projectName = config.get("projectName").orElse("default_project_669886c");
///         var default_ = new RoleUserAttachment("default", RoleUserAttachmentArgs.builder()
///             .roleName(roleName)
///             .user(ramRole)
///             .projectName(projectName)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   aliyunUser:
///     type: string
///     default: ALIYUN$openapiautomation@test.aliyunid.com
///   ramUser:
///     type: string
///     default: RAM$openapiautomation@test.aliyunid.com:tf-example
///   ramRole:
///     type: string
///     default: RAM$openapiautomation@test.aliyunid.com:role/terraform-no-ak-assumerole-no-deleting
///   roleName:
///     type: string
///     default: role_project_admin
///   projectName:
///     type: string
///     default: default_project_669886c
/// resources:
///   default:
///     type: alicloud:maxcompute:RoleUserAttachment
///     properties:
///       roleName: ${roleName}
///       user: ${ramRole}
///       projectName: ${projectName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Max Compute Role User Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/roleUserAttachment:RoleUserAttachment example <project_name>-<role_name>-<user>
/// ```
class RoleUserAttachment extends pulumi.CustomResource {
  /// Project Name
  late final pulumi.Output<String> projectName;
  /// Role Name, Valid Values: super_administrator, admin, Custom Role
  ///
  /// &gt; **NOTE:** -- super_administrator: the built-in management role of MaxCompute. The Super Administrator of the project has the permission to operate all resources in the project and the management permission. Project owners or users with the Super_Administrator role can assign the Super_Administrator role to other users. -- admin: the built-in management role of MaxCompute, which has the permission to operate all resources in the project and some basic management permissions. Project owners can assign the Admin role to other users. -- Custom role: a role that is not built-in to MaxCompute and needs to be customized. You can refer to the role (starting with role_) definition in DataWorks.
  late final pulumi.Output<String> roleName;
  /// Supported input: Alibaba Cloud account, RAM user, and RAM role
  ///
  /// &gt; **NOTE:** -- Alibaba Cloud account: the account registered on the Alibaba Cloud official website. - RAM User: a user created by an Alibaba Cloud account to assist the Alibaba Cloud account to complete data processing. -- RAM role: a RAM role, like a RAM user, is a type of RAM identity. A RAM role is a virtual user that does not have a specific identity authentication key and needs to be played by a trusted entity user for normal use.
  late final pulumi.Output<String> user;

  /// Creates a new [RoleUserAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleUserAttachment]. {@macro pulumi_maxcompute_role_user_attachment_role_user_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleUserAttachment(
    String name, {
    RoleUserAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/roleUserAttachment:RoleUserAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    projectName = registerOutput<String>('projectName');
    roleName = registerOutput<String>('roleName');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [RoleUserAttachment] resource's state with the given [name] and [id].
  static RoleUserAttachment get(
    String name,
    pulumi.Input<String> id, {
    RoleUserAttachmentState? state,
  }) {
    return RoleUserAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoleUserAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/roleUserAttachment:RoleUserAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    projectName = registerOutput<String>('projectName');
    roleName = registerOutput<String>('roleName');
    user = registerOutput<String>('user');
  }
}
