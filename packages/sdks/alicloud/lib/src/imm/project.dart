import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';

/// Provides a Intelligent Media Management Project resource.
///
/// For information about Intelligent Media Management Project and how to use it, see [What is Project](https://www.alibabacloud.com/help/en/network-intelligence-service/latest/user-overview).
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const name = config.get("name") || "tfexample";
/// const role = new alicloud.ram.Role("role", {
///     name: name,
///     document: `  {
///     \\"Statement\\": [
///       {
///         \\"Action\\": \\"sts:AssumeRole\\",
///         \\"Effect\\": \\"Allow\\",
///         \\"Principal\\": {
///           \\"Service\\": [
///             \\"imm.aliyuncs.com\\"
///           ]
///         }
///       }
///     ],
///     \\"Version\\": \\"1\\"
///   }
/// `,
///     description: "this is a role test.",
///     force: true,
/// });
/// const example = new alicloud.imm.Project("example", {
///     project: name,
///     serviceRole: role.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// role = alicloud.ram.Role("role",
///     name=name,
///     document="""  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"imm.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// """,
///     description="this is a role test.",
///     force=True)
/// example = alicloud.imm.Project("example",
///     project=name,
///     service_role=role.name)
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
///     var name = config.Get("name") ?? "tfexample";
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         Name = name,
///         Document = @"  {
///     \""Statement\"": [
///       {
///         \""Action\"": \""sts:AssumeRole\"",
///         \""Effect\"": \""Allow\"",
///         \""Principal\"": {
///           \""Service\"": [
///             \""imm.aliyuncs.com\""
///           ]
///         }
///       }
///     ],
///     \""Version\"": \""1\""
///   }
/// ",
///         Description = "this is a role test.",
///         Force = true,
///     });
///
///     var example = new AliCloud.Imm.Project("example", new()
///     {
///         ProjectName = name,
///         ServiceRole = role.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/imm"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		role, err := ram.NewRole(ctx, "role", &ram.RoleArgs{
/// 			Name: pulumi.String(name),
/// 			Document: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"imm.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// `),
/// 			Description: pulumi.String("this is a role test."),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = imm.NewProject(ctx, "example", &imm.ProjectArgs{
/// 			Project:     pulumi.String(name),
/// 			ServiceRole: role.Name,
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
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.imm.Project;
/// import com.pulumi.alicloud.imm.ProjectArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var role = new Role("role", RoleArgs.builder()
///             .name(name)
///             .document("""
///   {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"imm.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
///             """)
///             .description("this is a role test.")
///             .force(true)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .project(name)
///             .serviceRole(role.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   role:
///     type: alicloud:ram:Role
///     properties:
///       name: ${name}
///       document: |2
///           {
///             \"Statement\": [
///               {
///                 \"Action\": \"sts:AssumeRole\",
///                 \"Effect\": \"Allow\",
///                 \"Principal\": {
///                   \"Service\": [
///                     \"imm.aliyuncs.com\"
///                   ]
///                 }
///               }
///             ],
///             \"Version\": \"1\"
///           }
///       description: this is a role test.
///       force: true
///   example:
///     type: alicloud:imm:Project
///     properties:
///       project: ${name}
///       serviceRole: ${role.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Intelligent Media Management Project can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:imm/project:Project example <project>
/// ```
class Project extends pulumi.CustomResource {
  /// The name of Project.
  late final pulumi.Output<String> project;

  /// The service role authorized to the Intelligent Media Management service to access other cloud resources. Default value: `AliyunIMMDefaultRole`. You can also create authorization  roles through the `alicloud.ram.Role`.
  late final pulumi.Output<String> serviceRole;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_imm_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:imm/project:Project',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    project = registerOutput<String>('project');
    serviceRole = registerOutput<String>('serviceRole');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:imm/project:Project',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    project = registerOutput<String>('project');
    serviceRole = registerOutput<String>('serviceRole');
  }
}
