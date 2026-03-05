import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';
import 'role_state.dart';

/// Provides a Max Compute Role resource.
///
///
///
/// For information about Max Compute Role and how to use it, see [What is Role](https://www.alibabacloud.com/help/en/).
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
/// const _default = new alicloud.maxcompute.Project("default", {
///     defaultQuota: "默认后付费Quota",
///     projectName: name,
///     comment: name,
///     productType: "PayAsYouGo",
/// });
/// const defaultRole = new alicloud.maxcompute.Role("default", {
///     type: "admin",
///     projectName: _default.id,
///     policy: JSON.stringify({
///         Statement: [{
///             Action: ["odps:*"],
///             Effect: "Allow",
///             Resource: [
///                 "acs:odps:*:projects/project_name/authorization/roles",
///                 "acs:odps:*:projects/project_name/authorization/roles/*/*",
///             ],
///         }],
///         Version: "1",
///     }),
///     roleName: "tf_example112",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.maxcompute.Project("default",
///     default_quota="默认后付费Quota",
///     project_name=name,
///     comment=name,
///     product_type="PayAsYouGo")
/// default_role = alicloud.maxcompute.Role("default",
///     type="admin",
///     project_name=default.id,
///     policy=json.dumps({
///         "Statement": [{
///             "Action": ["odps:*"],
///             "Effect": "Allow",
///             "Resource": [
///                 "acs:odps:*:projects/project_name/authorization/roles",
///                 "acs:odps:*:projects/project_name/authorization/roles/*/*",
///             ],
///         }],
///         "Version": "1",
///     }),
///     role_name="tf_example112")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.MaxCompute.Project("default", new()
///     {
///         DefaultQuota = "默认后付费Quota",
///         ProjectName = name,
///         Comment = name,
///         ProductType = "PayAsYouGo",
///     });
///
///     var defaultRole = new AliCloud.MaxCompute.Role("default", new()
///     {
///         Type = "admin",
///         ProjectName = @default.Id,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "odps:*",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = new[]
///                     {
///                         "acs:odps:*:projects/project_name/authorization/roles",
///                         "acs:odps:*:projects/project_name/authorization/roles/*/*",
///                     },
///                 },
///             },
///             ["Version"] = "1",
///         }),
///         RoleName = "tf_example112",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
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
/// 		_default, err := maxcompute.NewProject(ctx, "default", &maxcompute.ProjectArgs{
/// 			DefaultQuota: pulumi.String("默认后付费Quota"),
/// 			ProjectName:  pulumi.String(name),
/// 			Comment:      pulumi.String(name),
/// 			ProductType:  pulumi.String("PayAsYouGo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"odps:*",
/// 					},
/// 					"Effect": "Allow",
/// 					"Resource": []string{
/// 						"acs:odps:*:projects/project_name/authorization/roles",
/// 						"acs:odps:*:projects/project_name/authorization/roles/*/*",
/// 					},
/// 				},
/// 			},
/// 			"Version": "1",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = maxcompute.NewRole(ctx, "default", &maxcompute.RoleArgs{
/// 			Type:        pulumi.String("admin"),
/// 			ProjectName: _default.ID(),
/// 			Policy:      pulumi.String(json0),
/// 			RoleName:    pulumi.String("tf_example112"),
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
/// import com.pulumi.alicloud.maxcompute.Project;
/// import com.pulumi.alicloud.maxcompute.ProjectArgs;
/// import com.pulumi.alicloud.maxcompute.Role;
/// import com.pulumi.alicloud.maxcompute.RoleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var default_ = new Project("default", ProjectArgs.builder()
///             .defaultQuota("默认后付费Quota")
///             .projectName(name)
///             .comment(name)
///             .productType("PayAsYouGo")
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .type("admin")
///             .projectName(default_.id())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray("odps:*")),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", jsonArray(
///                             "acs:odps:*:projects/project_name/authorization/roles",
///                             "acs:odps:*:projects/project_name/authorization/roles/*/*"
///                         ))
///                     ))),
///                     jsonProperty("Version", "1")
///                 )))
///             .roleName("tf_example112")
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
/// resources:
///   default:
///     type: alicloud:maxcompute:Project
///     properties:
///       defaultQuota: 默认后付费Quota
///       projectName: ${name}
///       comment: ${name}
///       productType: PayAsYouGo
///   defaultRole:
///     type: alicloud:maxcompute:Role
///     name: default
///     properties:
///       type: admin
///       projectName: ${default.id}
///       policy:
///         fn::toJSON:
///           Statement:
///             - Action:
///                 - odps:*
///               Effect: Allow
///               Resource:
///                 - acs:odps:*:projects/project_name/authorization/roles
///                 - acs:odps:*:projects/project_name/authorization/roles/*/*
///           Version: '1'
///       roleName: tf_example112
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Max Compute Role can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/role:Role example <project_name>:<role_name>
/// ```
class Role extends pulumi.CustomResource {
  /// Policy Authorization
  /// Refer to [Policy-based access control](https://www.alibabacloud.com/help/en/maxcompute/user-guide/policy-based-access-control-1) and [Authorization practices](https://www.alibabacloud.com/help/en/maxcompute/use-cases/authorization-practices)
  late final pulumi.Output<String?> policy;
  /// Project name
  late final pulumi.Output<String> projectName;
  /// Role Name
  ///
  /// &gt; **NOTE:** At the beginning of a letter, it can contain letters and numbers and can be no more than 64 characters in length.
  late final pulumi.Output<String> roleName;
  /// Role type Valid values: admin/resource
  ///
  /// &gt; **NOTE:** -- management type (admin) role: You can grant management type permissions through Policy. You cannot grant resource permissions to management type roles. You cannot grant management type permissions to management type roles through ACL. -- resource role: you can authorize resource type permissions through Policy or ACL, but cannot authorize management type permissions. For details, see [role-planning](https://www.alibabacloud.com/help/en/maxcompute/user-guide/role-planning)
  late final pulumi.Output<String> type;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_maxcompute_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String?>('policy');
    projectName = registerOutput<String>('projectName');
    roleName = registerOutput<String>('roleName');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Role] resource's state with the given [name] and [id].
  static Role get(
    String name,
    pulumi.Input<String> id, {
    RoleState? state,
  }) {
    return Role._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Role._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/role:Role',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String?>('policy');
    projectName = registerOutput<String>('projectName');
    roleName = registerOutput<String>('roleName');
    type = registerOutput<String>('type');
  }
}
